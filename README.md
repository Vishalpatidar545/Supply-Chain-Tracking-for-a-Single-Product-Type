# Supply Chain Tracking for a Single Product Type

## Project Description

This smart contract provides a minimalistic on-chain supply chain tracker for a single product type. It captures and records the movement of a product from manufacturing to delivery, logging its status and current custodian at each stage.

## Project Vision

To build a transparent, tamper-proof system that enables all participants in the supply chain to verify the current state and custody of a product. The vision is to enhance trust and traceability without relying on centralized authorities.

## Key Features

- **Single Product Lifecycle Management**: Tracks a single product from manufacturing to delivery.
- **Status Transitions**: Status evolves through predefined stages—Manufactured, InTransit, Delivered.
- **Custody Validation**: Only the current holder can update the status and assign the next handler.

## Future Scope

- Expand to support multiple product IDs with dynamic tracking.
- Integrate QR code scanning and off-chain metadata (e.g., batch info).
- Add timestamped audit trails for compliance and analytics.
- Build a frontend dashboard for real-time tracking visualization.
- Add role-based access control for manufacturer, transporter, and retailer.

## Contract details
0x50e15cb4E50D7d4923203B8de8FD0b64454425cd
![alt text](image.png)