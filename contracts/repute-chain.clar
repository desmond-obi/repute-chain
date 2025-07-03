;; ReputeChain - Advanced Reputation Economy & Creator Monetization Protocol
;;
;; Title: ReputeChain Protocol
;;
;; Summary:
;; A comprehensive Bitcoin-secured smart contract ecosystem that transforms social interaction
;; into tangible value through dynamic reputation scoring, creator monetization mechanics,
;; and NFT-powered membership governance on Stacks Layer 2.
;;
;; Description:
;; ReputeChain revolutionizes the creator economy by establishing a trustless, Bitcoin-backed
;; infrastructure that quantifies social capital through algorithmic reputation systems.
;; The protocol implements sophisticated engagement mechanics, time-based reputation decay,
;; and multi-tiered membership structures that enable creators to build sustainable revenue
;; streams while fostering authentic community growth.
;;
;; Built with Clarity smart contract language, secured by Bitcoin's immutable ledger,
;; and optimized for scalable social interaction monetization.

;; ERROR CONSTANTS

(define-constant ERR-UNAUTHORIZED (err u100))
(define-constant ERR-ALREADY-EXISTS (err u101))
(define-constant ERR-NOT-FOUND (err u102))
(define-constant ERR-INSUFFICIENT-BALANCE (err u103))
(define-constant ERR-INVALID-AMOUNT (err u104))
(define-constant ERR-INVALID-THRESHOLD (err u105))
(define-constant ERR-INVALID-TIER (err u106))
(define-constant ERR-COOLDOWN-ACTIVE (err u107))
(define-constant ERR-EXPIRED-REPUTATION (err u108))

;; PROTOCOL CONSTANTS

(define-constant CONTRACT-OWNER tx-sender)
(define-constant REPUTATION-DECAY-PERIOD u144)           ;; ~24 hours in blocks
(define-constant ENGAGEMENT-COOLDOWN u6)                 ;; ~1 hour in blocks  
(define-constant MIN-TIP-AMOUNT u1000000)                ;; 1 STX in microSTX
(define-constant MAX-REPUTATION-SCORE u10000)            ;; Maximum reputation cap

;; STATE VARIABLES

(define-data-var contract-paused bool false)
(define-data-var total-reputation-nfts uint u0)
(define-data-var total-membership-nfts uint u0)
(define-data-var treasury-balance uint u0)

;; NFT DEFINITIONS

(define-non-fungible-token reputation-nft uint)
(define-non-fungible-token membership-nft uint)

;; DATA STORAGE MAPS

(define-map user-profiles 
  principal 
  {
    reputation-score: uint,
    last-activity-block: uint,
    total-earnings: uint,
    engagement-count: uint,
    reputation-nft-id: (optional uint),
    membership-nft-id: (optional uint)
  }
)

(define-map creator-settings
  principal
  {
    earnings-threshold: uint,
    reward-per-engagement: uint,
    is-active: bool,
    total-distributed: uint
  }
)

(define-map engagement-history
  {user: principal, target: principal, stacks-block-height: uint}
  {
    engagement-type: (string-ascii 20),
    amount: uint,
    processed: bool
  }
)

(define-map membership-tiers
  uint
  {
    tier-name: (string-ascii 50),
    min-reputation: uint,
    benefits: (string-ascii 200),
    access-level: uint
  }
)

(define-map reputation-nft-metadata
  uint
  {
    owner: principal,
    reputation-score: uint,
    minted-at: uint,
    last-updated: uint
  }
)