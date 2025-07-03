# ReputeChain Protocol

> **Advanced Reputation Economy & Creator Monetization Protocol on Stacks Layer 2**

A comprehensive Bitcoin-secured smart contract ecosystem that transforms social interaction into tangible value through dynamic reputation scoring, creator monetization mechanics, and NFT-powered membership governance.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Stacks](https://img.shields.io/badge/Built%20on-Stacks-5546FF)](https://stacks.co)
[![Bitcoin](https://img.shields.io/badge/Secured%20by-Bitcoin-F7931A)](https://bitcoin.org)

## 🎯 Overview

ReputeChain revolutionizes the creator economy by establishing a trustless, Bitcoin-backed infrastructure that quantifies social capital through algorithmic reputation systems. The protocol implements sophisticated engagement mechanics, time-based reputation decay, and multi-tiered membership structures that enable creators to build sustainable revenue streams while fostering authentic community growth.

## ✨ Core Features

- **🏆 Algorithmic Reputation Scoring** - Dynamic reputation calculation with natural decay mechanisms
- **💰 Creator Monetization** - Multi-layered engagement incentives with customizable reward parameters
- **🎫 NFT Membership System** - Dynamic certificate minting for reputation and membership tokens
- **🛡️ Anti-Spam Protection** - Cooldown mechanisms and engagement validation
- **⚡ Bitcoin Security** - Immutable transactions secured by Bitcoin finality
- **🎛️ Governance Controls** - Emergency pause functionality and treasury management

## 🏗️ System Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    ReputeChain Protocol                     │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌─────────────┐    ┌─────────────┐    ┌─────────────┐     │
│  │   Users     │    │  Creators   │    │    Admin    │     │
│  │             │    │             │    │             │     │
│  │ • Profile   │    │ • Settings  │    │ • Pause     │     │
│  │ • Engage    │    │ • Rewards   │    │ • Tiers     │     │
│  │ • Tip       │    │ • Toggle    │    │ • Withdraw  │     │
│  │ • Mint NFT  │    │ • Receive   │    │ • Configure │     │
│  └─────────────┘    └─────────────┘    └─────────────┘     │
│         │                   │                   │          │
│         └───────────────────┼───────────────────┘          │
│                             │                              │
│  ┌──────────────────────────┼──────────────────────────┐   │
│  │         Core Protocol    │                          │   │
│  │                          ▼                          │   │
│  │  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  │   │
│  │  │ Reputation  │  │ Engagement  │  │ NFT System  │  │   │
│  │  │   Engine    │  │   Handler   │  │             │  │   │
│  │  │             │  │             │  │ • Rep. Certs│  │   │
│  │  │ • Scoring   │  │ • Validation│  │ • Membership│  │   │
│  │  │ • Decay     │  │ • Cooldown  │  │ • Metadata  │  │   │
│  │  │ • Tracking  │  │ • Rewards   │  │ • Tiers     │  │   │
│  │  └─────────────┘  └─────────────┘  └─────────────┘  │   │
│  └─────────────────────────────────────────────────────┘   │
│                             │                              │
│  ┌──────────────────────────┼──────────────────────────┐   │
│  │      Data Layer          │                          │   │
│  │                          ▼                          │   │
│  │  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  │   │
│  │  │   User      │  │ Engagement  │  │   Tier      │  │   │
│  │  │  Profiles   │  │   History   │  │ Management  │  │   │
│  │  └─────────────┘  └─────────────┘  └─────────────┘  │   │
│  │  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐  │   │
│  │  │  Creator    │  │ NFT Meta-   │  │   State     │  │   │
│  │  │  Settings   │  │    data     │  │ Variables   │  │   │
│  │  └─────────────┘  └─────────────┘  └─────────────┘  │   │
│  └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
            │                              │
            ▼                              ▼
┌─────────────────┐              ┌─────────────────┐
│  Stacks Layer 2 │              │ Bitcoin Network │
│                 │              │                 │
│ • Smart Contract│              │ • Final Settlement
│ • State Storage │              │ • Security Layer│
│ • Event Logs    │              │ • Immutability  │
└─────────────────┘              └─────────────────┘
```

## 📊 Contract Architecture

### Core Components

#### 1. **User Management System**

- **Profile Initialization** - Bootstrap user accounts with starting reputation
- **Reputation Tracking** - Dynamic scoring with time-based decay algorithms
- **Activity Monitoring** - Comprehensive engagement and earning analytics

#### 2. **Creator Economy Engine**

- **Monetization Settings** - Configurable earning thresholds and reward rates
- **Reward Distribution** - Automated STX transfers for engagement incentives
- **Status Management** - Toggle active/inactive states for creator profiles

#### 3. **Engagement Framework**

- **Interaction Types** - Support for likes, shares, comments, follows, and tips
- **Anti-Spam Mechanisms** - Cooldown periods and validation checks
- **Reward Processing** - Automated reputation updates and monetary rewards

#### 4. **NFT Certificate System**

- **Reputation Certificates** - Mintable tokens representing achievement levels
- **Membership Tokens** - Tiered access controls with benefit structures
- **Dynamic Metadata** - Real-time updates reflecting current status

### Data Structures

```clarity
;; Core user profile structure
{
  reputation-score: uint,        ;; Current reputation value
  last-activity-block: uint,     ;; Block height of last activity
  total-earnings: uint,          ;; Cumulative STX earnings
  engagement-count: uint,        ;; Total interactions performed
  reputation-nft-id: (optional uint),  ;; Associated certificate ID
  membership-nft-id: (optional uint)   ;; Associated membership ID
}

;; Creator monetization settings
{
  earnings-threshold: uint,      ;; Minimum threshold for payouts
  reward-per-engagement: uint,   ;; STX reward per interaction
  is-active: bool,              ;; Creator status flag
  total-distributed: uint       ;; Total rewards distributed
}
```

## 🔄 Data Flow

### 1. **User Onboarding Flow**

```
User Registration → Profile Creation → Initial Reputation (100) → Ready for Engagement
```

### 2. **Creator Setup Flow**

```
Creator Registration → Settings Configuration → Activation → Reward Distribution Ready
```

### 3. **Engagement Processing Flow**

```
User Interaction → Validation Check → Cooldown Verification → 
Reputation Update → Reward Processing → History Recording
```

### 4. **NFT Minting Flow**

```
Eligibility Check → Current Reputation Calculation → 
NFT Generation → Metadata Assignment → Profile Update
```

### 5. **Reputation Decay Flow**

```
Activity Check → Time Calculation → Decay Application → 
Score Update → Tier Recalculation
```

## 🚀 Getting Started

### Prerequisites

- Stacks blockchain node access
- Clarity CLI tools
- STX tokens for gas fees

### Deployment

```bash
# Deploy to Stacks testnet
clarinet deploy --network testnet

# Deploy to Stacks mainnet
clarinet deploy --network mainnet
```

### Basic Usage

#### Initialize User Profile

```clarity
(contract-call? .reputechain initialize-user-profile)
```

#### Setup Creator Profile

```clarity
(contract-call? .reputechain setup-creator-profile u1000000 u100000)
```

#### Engage with Creator

```clarity
(contract-call? .reputechain engage-with-creator 'SP1234... "like")
```

#### Tip Creator

```clarity
(contract-call? .reputechain tip-creator 'SP1234... u2000000)
```

## 🎖️ Membership Tiers

| Tier | Min. Reputation | Benefits | Access Level |
|------|----------------|----------|--------------|
| **Bronze** | 1,000 | Essential creator content access | Level 1 |
| **Silver** | 2,000 | Enhanced content + exclusive interactions | Level 2 |
| **Gold** | 5,000 | Premium access + governance rights | Level 3 |
| **Platinum** | 8,000 | Elite access + revenue sharing | Level 4 |

## 🔒 Security Features

- **Bitcoin Finality** - All transactions secured by Bitcoin network
- **Access Controls** - Role-based permissions for administrative functions
- **Emergency Pause** - Contract-wide pause mechanism for critical situations
- **Overflow Protection** - Safe arithmetic operations preventing exploits
- **Cooldown Mechanisms** - Rate limiting to prevent spam and abuse

## 📈 Economic Model

### Reputation Economy

- **Base Reputation**: 100 points for new users
- **Decay Period**: 24 hours (144 blocks)
- **Maximum Score**: 10,000 points
- **Engagement Rewards**: 25-100 points per interaction

### Monetization Structure

- **Minimum Tip**: 1 STX (1,000,000 microSTX)
- **Creator Rewards**: Configurable per engagement
- **Platform Fees**: Managed through treasury system

## 🛠️ Development

### Contract Functions

#### Public Functions

- `initialize-user-profile()` - Create new user account
- `setup-creator-profile(threshold, reward)` - Configure creator settings
- `tip-creator(creator, amount)` - Send STX tip to creator
- `engage-with-creator(creator, type)` - Record social interaction
- `mint-reputation-certificate()` - Generate reputation NFT
- `mint-membership-certificate()` - Generate membership NFT

#### Administrative Functions

- `pause-contract()` - Emergency pause activation
- `set-membership-tier(...)` - Configure tier parameters
- `emergency-withdraw(amount)` - Treasury management

### Testing

```bash
# Run test suite
clarinet test

# Run specific test
clarinet test tests/engagement_test.ts
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
