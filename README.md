# Medical Bill Verification Smart Contract

## Description

The Medical Bill Verification Smart Contract is a decentralized application built on the Aptos blockchain that provides a transparent, secure, and immutable system for managing medical bill submissions and verifications. This contract enables hospitals and healthcare providers to submit medical bills for patients, while authorized verifiers (such as insurance companies, regulatory bodies, or third-party auditors) can validate these bills in a trustless environment.

The contract utilizes a table-based storage system to efficiently manage multiple medical bills per hospital, ensuring scalability and organized data management. Each bill contains comprehensive information including patient details, billing amounts, service descriptions, timestamps, and verification status.

## Vision

Our vision is to revolutionize the healthcare billing ecosystem by creating a transparent, fraud-resistant, and efficient verification system that benefits all stakeholders:

- **For Patients**: Providing transparency in medical billing processes and ensuring accurate charges
- **For Healthcare Providers**: Streamlining bill submission processes and reducing administrative overhead
- **For Insurance Companies**: Enabling faster, more secure claim processing with immutable audit trails
- **For Regulatory Bodies**: Offering comprehensive oversight capabilities and fraud detection mechanisms

We envision a future where medical billing disputes are minimized, processing times are reduced, and trust between all parties is enhanced through blockchain technology.

## Future Scope

The Medical Bill Verification Smart Contract has significant potential for expansion and enhancement:

### Phase 1 Enhancements
- **Multi-signature Verification**: Implementing multi-party verification requiring consensus from multiple authorized verifiers
- **Bill Status Tracking**: Adding intermediate states like "under review," "pending documentation," and "disputed"
- **Automated Verification**: Integrating AI-powered preliminary verification for common procedures

### Phase 2 Features
- **Insurance Integration**: Direct integration with insurance smart contracts for automated claim processing
- **Payment Processing**: Adding secure payment functionality using Aptos Coin or other tokens
- **Patient Consent Management**: Implementing patient authorization mechanisms for bill sharing

### Phase 3 Innovations
- **Cross-chain Compatibility**: Enabling interoperability with other blockchain healthcare systems
- **Analytics Dashboard**: Developing comprehensive reporting and analytics capabilities
- **Compliance Automation**: Automated HIPAA and other regulatory compliance checking
- **Dispute Resolution**: Implementing on-chain arbitration mechanisms for billing disputes

### Long-term Vision
- **Healthcare Ecosystem Integration**: Connecting with electronic health records, pharmacy systems, and laboratory networks
- **Global Standardization**: Contributing to international healthcare billing standards on blockchain
- **IoT Integration**: Connecting with medical devices for automated bill generation and verification

## Contract Address
**Devnet**::0xc52fd6107521f4990976a956dd4602b81a1670cf699cc72a72c30d64e0523a98
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/fd6de91d-cb0a-48b8-bc58-f55f465e8901" />

**Network**: Aptos Mainnet/Testnet
**Contract Address**: `[TO_BE_DEPLOYED]`
**Module Name**: `MedicalVerifier::MedicalBillVerification`

### Deployment Information
- **Compiler Version**: Move 2024
- **Dependencies**: 
  - Aptos Framework
  - Move Standard Library
- **Gas Optimization**: Optimized for efficient storage and computation

### Contract Functions

#### Core Functions
1. **`init_store(account: &signer)`**
   - Initializes the bill storage system for a hospital/provider
   - Must be called once before submitting bills

2. **`submit_medical_bill(...)`**
   - Allows hospitals to submit medical bills for verification
   - Records all bill details with timestamp

3. **`verify_medical_bill(...)`**
   - Enables authorized verifiers to validate submitted bills
   - Updates verification status and records verifier identity

### Error Codes
- `E_BILL_NOT_FOUND (1)`: Requested bill does not exist
- `E_ALREADY_VERIFIED (2)`: Bill has already been verified

---

**Note**: This contract is currently in development/testing phase. Please ensure thorough testing before deploying to mainnet. For questions, issues, or contributions, please refer to the project repository or contact the development team.
