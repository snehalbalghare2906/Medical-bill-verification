module MedicalVerifier::MedicalBillVerification {
    use std::table;
    use aptos_framework::signer;
    use aptos_framework::timestamp;

    struct MedicalBill has copy, drop, store {
        bill_id: u64,
        patient_address: address,
        hospital_address: address,
        amount: u64,
        description: vector<u8>,
        is_verified: bool,
        timestamp: u64,
        verifier: address,
    }

    struct BillStore has key {
        bills: table::Table<u64, MedicalBill>,
    }

    const E_BILL_NOT_FOUND: u64 = 1;
    const E_ALREADY_VERIFIED: u64 = 2;

    public fun init_store(account: &signer) {
        move_to(account, BillStore {
            bills: table::new<u64, MedicalBill>(),
        });
    }

    public fun submit_medical_bill(
        hospital: &signer,
        bill_id: u64,
        patient_address: address,
        amount: u64,
        description: vector<u8>
    ) acquires BillStore {
        let store = borrow_global_mut<BillStore>(signer::address_of(hospital));
        let bill = MedicalBill {
            bill_id,
            patient_address,
            hospital_address: signer::address_of(hospital),
            amount,
            description,
            is_verified: false,
            timestamp: timestamp::now_seconds(),
            verifier: @0x0,
        };
        table::add(&mut store.bills, bill_id, bill);
    }

    public fun verify_medical_bill(
        hospital_address: address,
        bill_id: u64,
        verifier: &signer
    ) acquires BillStore {
        let store = borrow_global_mut<BillStore>(hospital_address);
        let bill = table::borrow_mut(&mut store.bills, bill_id);
        assert!(!bill.is_verified, E_ALREADY_VERIFIED);
        bill.is_verified = true;
        bill.verifier = signer::address_of(verifier);
    }
}
