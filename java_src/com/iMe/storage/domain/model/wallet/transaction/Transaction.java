package com.iMe.storage.domain.model.wallet.transaction;

import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import java.math.BigDecimal;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Transaction.kt */
/* loaded from: classes3.dex */
public abstract class Transaction {
    private final BigDecimal amount;
    private final String createdAt;
    private final TransactionDirection direction;
    private final BigDecimal feeAmount;
    private final TokenCode feeTokenCode;

    /* renamed from: id */
    private final String f360id;
    private final TransactionProcessingType processingType;
    private final Status status;
    private final TokenCode tokenCode;
    private final TransactionType type;

    public /* synthetic */ Transaction(String str, BigDecimal bigDecimal, TransactionType transactionType, TransactionDirection transactionDirection, String str2, TokenCode tokenCode, Status status, TransactionProcessingType transactionProcessingType, BigDecimal bigDecimal2, TokenCode tokenCode2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bigDecimal, transactionType, transactionDirection, str2, tokenCode, status, transactionProcessingType, bigDecimal2, tokenCode2);
    }

    private Transaction(String str, BigDecimal bigDecimal, TransactionType transactionType, TransactionDirection transactionDirection, String str2, TokenCode tokenCode, Status status, TransactionProcessingType transactionProcessingType, BigDecimal bigDecimal2, TokenCode tokenCode2) {
        this.f360id = str;
        this.amount = bigDecimal;
        this.type = transactionType;
        this.direction = transactionDirection;
        this.createdAt = str2;
        this.tokenCode = tokenCode;
        this.status = status;
        this.processingType = transactionProcessingType;
        this.feeAmount = bigDecimal2;
        this.feeTokenCode = tokenCode2;
    }

    public String getId() {
        return this.f360id;
    }

    public BigDecimal getAmount() {
        return this.amount;
    }

    public TransactionType getType() {
        return this.type;
    }

    public TransactionDirection getDirection() {
        return this.direction;
    }

    public String getCreatedAt() {
        return this.createdAt;
    }

    public TokenCode getTokenCode() {
        return this.tokenCode;
    }

    public Status getStatus() {
        return this.status;
    }

    public TransactionProcessingType getProcessingType() {
        return this.processingType;
    }

    public BigDecimal getFeeAmount() {
        return this.feeAmount;
    }

    public TokenCode getFeeTokenCode() {
        return this.feeTokenCode;
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Unsupported extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f373id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenCode tokenCode;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenCode component10() {
            return getFeeTokenCode();
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TransactionType component3() {
            return getType();
        }

        public final TransactionDirection component4() {
            return getDirection();
        }

        public final String component5() {
            return getCreatedAt();
        }

        public final TokenCode component6() {
            return getTokenCode();
        }

        public final Status component7() {
            return getStatus();
        }

        public final TransactionProcessingType component8() {
            return getProcessingType();
        }

        public final BigDecimal component9() {
            return getFeeAmount();
        }

        public final Unsupported copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            return new Unsupported(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Unsupported) {
                Unsupported unsupported = (Unsupported) obj;
                return Intrinsics.areEqual(getId(), unsupported.getId()) && Intrinsics.areEqual(getAmount(), unsupported.getAmount()) && getType() == unsupported.getType() && getDirection() == unsupported.getDirection() && Intrinsics.areEqual(getCreatedAt(), unsupported.getCreatedAt()) && getTokenCode() == unsupported.getTokenCode() && getStatus() == unsupported.getStatus() && getProcessingType() == unsupported.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), unsupported.getFeeAmount()) && getFeeTokenCode() == unsupported.getFeeTokenCode();
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode();
        }

        public String toString() {
            return "Unsupported(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f373id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unsupported(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            this.f373id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Transfer extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f372id;
        private final TransactionProcessingType processingType;
        private final String recipientUserId;
        private final Status status;
        private final TokenCode tokenCode;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenCode component10() {
            return getFeeTokenCode();
        }

        public final String component11() {
            return this.recipientUserId;
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TransactionType component3() {
            return getType();
        }

        public final TransactionDirection component4() {
            return getDirection();
        }

        public final String component5() {
            return getCreatedAt();
        }

        public final TokenCode component6() {
            return getTokenCode();
        }

        public final Status component7() {
            return getStatus();
        }

        public final TransactionProcessingType component8() {
            return getProcessingType();
        }

        public final BigDecimal component9() {
            return getFeeAmount();
        }

        public final Transfer copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String recipientUserId) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            Intrinsics.checkNotNullParameter(recipientUserId, "recipientUserId");
            return new Transfer(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, recipientUserId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Transfer) {
                Transfer transfer = (Transfer) obj;
                return Intrinsics.areEqual(getId(), transfer.getId()) && Intrinsics.areEqual(getAmount(), transfer.getAmount()) && getType() == transfer.getType() && getDirection() == transfer.getDirection() && Intrinsics.areEqual(getCreatedAt(), transfer.getCreatedAt()) && getTokenCode() == transfer.getTokenCode() && getStatus() == transfer.getStatus() && getProcessingType() == transfer.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), transfer.getFeeAmount()) && getFeeTokenCode() == transfer.getFeeTokenCode() && Intrinsics.areEqual(this.recipientUserId, transfer.recipientUserId);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode()) * 31) + this.recipientUserId.hashCode();
        }

        public String toString() {
            return "Transfer(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ", recipientUserId=" + this.recipientUserId + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f372id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        public final String getRecipientUserId() {
            return this.recipientUserId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Transfer(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String recipientUserId) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            Intrinsics.checkNotNullParameter(recipientUserId, "recipientUserId");
            this.f372id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
            this.recipientUserId = recipientUserId;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Referral extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f369id;
        private final String invitedUserId;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenCode tokenCode;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenCode component10() {
            return getFeeTokenCode();
        }

        public final String component11() {
            return this.invitedUserId;
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TransactionType component3() {
            return getType();
        }

        public final TransactionDirection component4() {
            return getDirection();
        }

        public final String component5() {
            return getCreatedAt();
        }

        public final TokenCode component6() {
            return getTokenCode();
        }

        public final Status component7() {
            return getStatus();
        }

        public final TransactionProcessingType component8() {
            return getProcessingType();
        }

        public final BigDecimal component9() {
            return getFeeAmount();
        }

        public final Referral copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String invitedUserId) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            Intrinsics.checkNotNullParameter(invitedUserId, "invitedUserId");
            return new Referral(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, invitedUserId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Referral) {
                Referral referral = (Referral) obj;
                return Intrinsics.areEqual(getId(), referral.getId()) && Intrinsics.areEqual(getAmount(), referral.getAmount()) && getType() == referral.getType() && getDirection() == referral.getDirection() && Intrinsics.areEqual(getCreatedAt(), referral.getCreatedAt()) && getTokenCode() == referral.getTokenCode() && getStatus() == referral.getStatus() && getProcessingType() == referral.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), referral.getFeeAmount()) && getFeeTokenCode() == referral.getFeeTokenCode() && Intrinsics.areEqual(this.invitedUserId, referral.invitedUserId);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode()) * 31) + this.invitedUserId.hashCode();
        }

        public String toString() {
            return "Referral(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ", invitedUserId=" + this.invitedUserId + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f369id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        public final String getInvitedUserId() {
            return this.invitedUserId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Referral(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String invitedUserId) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            Intrinsics.checkNotNullParameter(invitedUserId, "invitedUserId");
            this.f369id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
            this.invitedUserId = invitedUserId;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Purchase extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f368id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenCode tokenCode;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenCode component10() {
            return getFeeTokenCode();
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TransactionType component3() {
            return getType();
        }

        public final TransactionDirection component4() {
            return getDirection();
        }

        public final String component5() {
            return getCreatedAt();
        }

        public final TokenCode component6() {
            return getTokenCode();
        }

        public final Status component7() {
            return getStatus();
        }

        public final TransactionProcessingType component8() {
            return getProcessingType();
        }

        public final BigDecimal component9() {
            return getFeeAmount();
        }

        public final Purchase copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            return new Purchase(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Purchase) {
                Purchase purchase = (Purchase) obj;
                return Intrinsics.areEqual(getId(), purchase.getId()) && Intrinsics.areEqual(getAmount(), purchase.getAmount()) && getType() == purchase.getType() && getDirection() == purchase.getDirection() && Intrinsics.areEqual(getCreatedAt(), purchase.getCreatedAt()) && getTokenCode() == purchase.getTokenCode() && getStatus() == purchase.getStatus() && getProcessingType() == purchase.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), purchase.getFeeAmount()) && getFeeTokenCode() == purchase.getFeeTokenCode();
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode();
        }

        public String toString() {
            return "Purchase(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f368id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purchase(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            this.f368id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Lottery extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f367id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenCode tokenCode;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenCode component10() {
            return getFeeTokenCode();
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TransactionType component3() {
            return getType();
        }

        public final TransactionDirection component4() {
            return getDirection();
        }

        public final String component5() {
            return getCreatedAt();
        }

        public final TokenCode component6() {
            return getTokenCode();
        }

        public final Status component7() {
            return getStatus();
        }

        public final TransactionProcessingType component8() {
            return getProcessingType();
        }

        public final BigDecimal component9() {
            return getFeeAmount();
        }

        public final Lottery copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            return new Lottery(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Lottery) {
                Lottery lottery = (Lottery) obj;
                return Intrinsics.areEqual(getId(), lottery.getId()) && Intrinsics.areEqual(getAmount(), lottery.getAmount()) && getType() == lottery.getType() && getDirection() == lottery.getDirection() && Intrinsics.areEqual(getCreatedAt(), lottery.getCreatedAt()) && getTokenCode() == lottery.getTokenCode() && getStatus() == lottery.getStatus() && getProcessingType() == lottery.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), lottery.getFeeAmount()) && getFeeTokenCode() == lottery.getFeeTokenCode();
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode();
        }

        public String toString() {
            return "Lottery(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f367id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Lottery(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            this.f367id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Registration extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f371id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenCode tokenCode;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenCode component10() {
            return getFeeTokenCode();
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TransactionType component3() {
            return getType();
        }

        public final TransactionDirection component4() {
            return getDirection();
        }

        public final String component5() {
            return getCreatedAt();
        }

        public final TokenCode component6() {
            return getTokenCode();
        }

        public final Status component7() {
            return getStatus();
        }

        public final TransactionProcessingType component8() {
            return getProcessingType();
        }

        public final BigDecimal component9() {
            return getFeeAmount();
        }

        public final Registration copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            return new Registration(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Registration) {
                Registration registration = (Registration) obj;
                return Intrinsics.areEqual(getId(), registration.getId()) && Intrinsics.areEqual(getAmount(), registration.getAmount()) && getType() == registration.getType() && getDirection() == registration.getDirection() && Intrinsics.areEqual(getCreatedAt(), registration.getCreatedAt()) && getTokenCode() == registration.getTokenCode() && getStatus() == registration.getStatus() && getProcessingType() == registration.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), registration.getFeeAmount()) && getFeeTokenCode() == registration.getFeeTokenCode();
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode();
        }

        public String toString() {
            return "Registration(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f371id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Registration(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            this.f371id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Refund extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f370id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenCode tokenCode;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenCode component10() {
            return getFeeTokenCode();
        }

        public final BigDecimal component2() {
            return getAmount();
        }

        public final TransactionType component3() {
            return getType();
        }

        public final TransactionDirection component4() {
            return getDirection();
        }

        public final String component5() {
            return getCreatedAt();
        }

        public final TokenCode component6() {
            return getTokenCode();
        }

        public final Status component7() {
            return getStatus();
        }

        public final TransactionProcessingType component8() {
            return getProcessingType();
        }

        public final BigDecimal component9() {
            return getFeeAmount();
        }

        public final Refund copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            return new Refund(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Refund) {
                Refund refund = (Refund) obj;
                return Intrinsics.areEqual(getId(), refund.getId()) && Intrinsics.areEqual(getAmount(), refund.getAmount()) && getType() == refund.getType() && getDirection() == refund.getDirection() && Intrinsics.areEqual(getCreatedAt(), refund.getCreatedAt()) && getTokenCode() == refund.getTokenCode() && getStatus() == refund.getStatus() && getProcessingType() == refund.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), refund.getFeeAmount()) && getFeeTokenCode() == refund.getFeeTokenCode();
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode();
        }

        public String toString() {
            return "Refund(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f370id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Refund(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            this.f370id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static class Crypto extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenCode feeTokenCode;

        /* renamed from: id */
        private final String f361id;
        private final NetworkType networkType;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenCode tokenCode;
        private final String txHash;
        private final TransactionType type;

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f361id;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getAmount() {
            return this.amount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionType getType() {
            return this.type;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionDirection getDirection() {
            return this.direction;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getCreatedAt() {
            return this.createdAt;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getTokenCode() {
            return this.tokenCode;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public Status getStatus() {
            return this.status;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TransactionProcessingType getProcessingType() {
            return this.processingType;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public BigDecimal getFeeAmount() {
            return this.feeAmount;
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public TokenCode getFeeTokenCode() {
            return this.feeTokenCode;
        }

        public String getTxHash() {
            return this.txHash;
        }

        public NetworkType getNetworkType() {
            return this.networkType;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crypto(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType) {
            super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            this.f361id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.tokenCode = tokenCode;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeTokenCode = feeTokenCode;
            this.txHash = txHash;
            this.networkType = networkType;
        }

        /* compiled from: Transaction.kt */
        /* loaded from: classes3.dex */
        public static final class Donation extends Transfer {
            private final BigDecimal amount;
            private final String createdAt;
            private final TransactionDirection direction;
            private final BigDecimal feeAmount;
            private final TokenCode feeTokenCode;

            /* renamed from: id */
            private final String f363id;
            private final NetworkType networkType;
            private final TransactionProcessingType processingType;
            private final String receiverAccountId;
            private final String recipientAddress;
            private final String senderAccountId;
            private final String senderAddress;
            private final Status status;
            private final TokenCode tokenCode;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenCode component10() {
                return getFeeTokenCode();
            }

            public final String component11() {
                return getTxHash();
            }

            public final String component12() {
                return getSenderAddress();
            }

            public final String component13() {
                return getRecipientAddress();
            }

            public final NetworkType component14() {
                return getNetworkType();
            }

            public final String component15() {
                return this.senderAccountId;
            }

            public final String component16() {
                return this.receiverAccountId;
            }

            public final BigDecimal component2() {
                return getAmount();
            }

            public final TransactionType component3() {
                return getType();
            }

            public final TransactionDirection component4() {
                return getDirection();
            }

            public final String component5() {
                return getCreatedAt();
            }

            public final TokenCode component6() {
                return getTokenCode();
            }

            public final Status component7() {
                return getStatus();
            }

            public final TransactionProcessingType component8() {
                return getProcessingType();
            }

            public final BigDecimal component9() {
                return getFeeAmount();
            }

            public final Donation copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, String senderAddress, String recipientAddress, NetworkType networkType, String senderAccountId, String receiverAccountId) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(senderAccountId, "senderAccountId");
                Intrinsics.checkNotNullParameter(receiverAccountId, "receiverAccountId");
                return new Donation(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, senderAddress, recipientAddress, networkType, senderAccountId, receiverAccountId);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Donation) {
                    Donation donation = (Donation) obj;
                    return Intrinsics.areEqual(getId(), donation.getId()) && Intrinsics.areEqual(getAmount(), donation.getAmount()) && getType() == donation.getType() && getDirection() == donation.getDirection() && Intrinsics.areEqual(getCreatedAt(), donation.getCreatedAt()) && getTokenCode() == donation.getTokenCode() && getStatus() == donation.getStatus() && getProcessingType() == donation.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), donation.getFeeAmount()) && getFeeTokenCode() == donation.getFeeTokenCode() && Intrinsics.areEqual(getTxHash(), donation.getTxHash()) && Intrinsics.areEqual(getSenderAddress(), donation.getSenderAddress()) && Intrinsics.areEqual(getRecipientAddress(), donation.getRecipientAddress()) && getNetworkType() == donation.getNetworkType() && Intrinsics.areEqual(this.senderAccountId, donation.senderAccountId) && Intrinsics.areEqual(this.receiverAccountId, donation.receiverAccountId);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode()) * 31) + getTxHash().hashCode()) * 31) + getSenderAddress().hashCode()) * 31) + getRecipientAddress().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.senderAccountId.hashCode()) * 31) + this.receiverAccountId.hashCode();
            }

            public String toString() {
                return "Donation(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ", txHash=" + getTxHash() + ", senderAddress=" + getSenderAddress() + ", recipientAddress=" + getRecipientAddress() + ", networkType=" + getNetworkType() + ", senderAccountId=" + this.senderAccountId + ", receiverAccountId=" + this.receiverAccountId + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f363id;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getAmount() {
                return this.amount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionDirection getDirection() {
                return this.direction;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getCreatedAt() {
                return this.createdAt;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public Status getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionProcessingType getProcessingType() {
                return this.processingType;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getFeeAmount() {
                return this.feeAmount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getFeeTokenCode() {
                return this.feeTokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer
            public String getSenderAddress() {
                return this.senderAddress;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer
            public String getRecipientAddress() {
                return this.recipientAddress;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            public final String getSenderAccountId() {
                return this.senderAccountId;
            }

            public final String getReceiverAccountId() {
                return this.receiverAccountId;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Donation(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, String senderAddress, String recipientAddress, NetworkType networkType, String senderAccountId, String receiverAccountId) {
                super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType, senderAddress, recipientAddress, null);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(senderAccountId, "senderAccountId");
                Intrinsics.checkNotNullParameter(receiverAccountId, "receiverAccountId");
                this.f363id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.tokenCode = tokenCode;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeTokenCode = feeTokenCode;
                this.txHash = txHash;
                this.senderAddress = senderAddress;
                this.recipientAddress = recipientAddress;
                this.networkType = networkType;
                this.senderAccountId = senderAccountId;
                this.receiverAccountId = receiverAccountId;
            }
        }

        /* compiled from: Transaction.kt */
        /* loaded from: classes3.dex */
        public static class Transfer extends Crypto {
            private final BigDecimal amount;
            private final String createdAt;
            private final TransactionDirection direction;
            private final BigDecimal feeAmount;
            private final TokenCode feeTokenCode;

            /* renamed from: id */
            private final String f366id;
            private final NetworkType networkType;
            private final String payloadMessage;
            private final TransactionProcessingType processingType;
            private final String recipientAddress;
            private final String senderAddress;
            private final Status status;
            private final TokenCode tokenCode;
            private final String txHash;
            private final TransactionType type;

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f366id;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getAmount() {
                return this.amount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionDirection getDirection() {
                return this.direction;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getCreatedAt() {
                return this.createdAt;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public Status getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionProcessingType getProcessingType() {
                return this.processingType;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getFeeAmount() {
                return this.feeAmount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getFeeTokenCode() {
                return this.feeTokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            public String getSenderAddress() {
                return this.senderAddress;
            }

            public String getRecipientAddress() {
                return this.recipientAddress;
            }

            public String getPayloadMessage() {
                return this.payloadMessage;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Transfer(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType, String senderAddress, String recipientAddress, String str) {
                super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                this.f366id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.tokenCode = tokenCode;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeTokenCode = feeTokenCode;
                this.txHash = txHash;
                this.networkType = networkType;
                this.senderAddress = senderAddress;
                this.recipientAddress = recipientAddress;
                this.payloadMessage = str;
            }
        }

        /* compiled from: Transaction.kt */
        /* loaded from: classes3.dex */
        public static final class Approve extends Crypto {
            private final BigDecimal amount;
            private final String createdAt;
            private final TransactionDirection direction;
            private final BigDecimal feeAmount;
            private final TokenCode feeTokenCode;

            /* renamed from: id */
            private final String f362id;
            private final NetworkType networkType;
            private final TransactionProcessingType processingType;
            private final Status status;
            private final TokenCode tokenCode;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenCode component10() {
                return getFeeTokenCode();
            }

            public final String component11() {
                return getTxHash();
            }

            public final NetworkType component12() {
                return getNetworkType();
            }

            public final BigDecimal component2() {
                return getAmount();
            }

            public final TransactionType component3() {
                return getType();
            }

            public final TransactionDirection component4() {
                return getDirection();
            }

            public final String component5() {
                return getCreatedAt();
            }

            public final TokenCode component6() {
                return getTokenCode();
            }

            public final Status component7() {
                return getStatus();
            }

            public final TransactionProcessingType component8() {
                return getProcessingType();
            }

            public final BigDecimal component9() {
                return getFeeAmount();
            }

            public final Approve copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                return new Approve(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Approve) {
                    Approve approve = (Approve) obj;
                    return Intrinsics.areEqual(getId(), approve.getId()) && Intrinsics.areEqual(getAmount(), approve.getAmount()) && getType() == approve.getType() && getDirection() == approve.getDirection() && Intrinsics.areEqual(getCreatedAt(), approve.getCreatedAt()) && getTokenCode() == approve.getTokenCode() && getStatus() == approve.getStatus() && getProcessingType() == approve.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), approve.getFeeAmount()) && getFeeTokenCode() == approve.getFeeTokenCode() && Intrinsics.areEqual(getTxHash(), approve.getTxHash()) && getNetworkType() == approve.getNetworkType();
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode()) * 31) + getTxHash().hashCode()) * 31) + getNetworkType().hashCode();
            }

            public String toString() {
                return "Approve(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ", txHash=" + getTxHash() + ", networkType=" + getNetworkType() + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f362id;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getAmount() {
                return this.amount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionDirection getDirection() {
                return this.direction;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getCreatedAt() {
                return this.createdAt;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public Status getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionProcessingType getProcessingType() {
                return this.processingType;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getFeeAmount() {
                return this.feeAmount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getFeeTokenCode() {
                return this.feeTokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Approve(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType) {
                super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                this.f362id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.tokenCode = tokenCode;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeTokenCode = feeTokenCode;
                this.txHash = txHash;
                this.networkType = networkType;
            }
        }

        /* compiled from: Transaction.kt */
        /* loaded from: classes3.dex */
        public static final class SimplexPurchase extends Crypto {
            private final BigDecimal amount;
            private final String createdAt;
            private final TransactionDirection direction;
            private final BigDecimal feeAmount;
            private final TokenCode feeTokenCode;

            /* renamed from: id */
            private final String f364id;
            private final NetworkType networkType;
            private final String orderId;
            private final TransactionProcessingType processingType;
            private final String recipientAddress;
            private final String senderAddress;
            private final BigDecimal spentAmount;
            private final FiatCode spentFiatCode;
            private final Status status;
            private final TokenCode tokenCode;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenCode component10() {
                return getFeeTokenCode();
            }

            public final String component11() {
                return getTxHash();
            }

            public final NetworkType component12() {
                return getNetworkType();
            }

            public final String component13() {
                return this.senderAddress;
            }

            public final String component14() {
                return this.recipientAddress;
            }

            public final String component15() {
                return this.orderId;
            }

            public final BigDecimal component16() {
                return this.spentAmount;
            }

            public final FiatCode component17() {
                return this.spentFiatCode;
            }

            public final BigDecimal component2() {
                return getAmount();
            }

            public final TransactionType component3() {
                return getType();
            }

            public final TransactionDirection component4() {
                return getDirection();
            }

            public final String component5() {
                return getCreatedAt();
            }

            public final TokenCode component6() {
                return getTokenCode();
            }

            public final Status component7() {
                return getStatus();
            }

            public final TransactionProcessingType component8() {
                return getProcessingType();
            }

            public final BigDecimal component9() {
                return getFeeAmount();
            }

            public final SimplexPurchase copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType, String senderAddress, String recipientAddress, String orderId, BigDecimal spentAmount, FiatCode spentFiatCode) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(orderId, "orderId");
                Intrinsics.checkNotNullParameter(spentAmount, "spentAmount");
                Intrinsics.checkNotNullParameter(spentFiatCode, "spentFiatCode");
                return new SimplexPurchase(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType, senderAddress, recipientAddress, orderId, spentAmount, spentFiatCode);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof SimplexPurchase) {
                    SimplexPurchase simplexPurchase = (SimplexPurchase) obj;
                    return Intrinsics.areEqual(getId(), simplexPurchase.getId()) && Intrinsics.areEqual(getAmount(), simplexPurchase.getAmount()) && getType() == simplexPurchase.getType() && getDirection() == simplexPurchase.getDirection() && Intrinsics.areEqual(getCreatedAt(), simplexPurchase.getCreatedAt()) && getTokenCode() == simplexPurchase.getTokenCode() && getStatus() == simplexPurchase.getStatus() && getProcessingType() == simplexPurchase.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), simplexPurchase.getFeeAmount()) && getFeeTokenCode() == simplexPurchase.getFeeTokenCode() && Intrinsics.areEqual(getTxHash(), simplexPurchase.getTxHash()) && getNetworkType() == simplexPurchase.getNetworkType() && Intrinsics.areEqual(this.senderAddress, simplexPurchase.senderAddress) && Intrinsics.areEqual(this.recipientAddress, simplexPurchase.recipientAddress) && Intrinsics.areEqual(this.orderId, simplexPurchase.orderId) && Intrinsics.areEqual(this.spentAmount, simplexPurchase.spentAmount) && Intrinsics.areEqual(this.spentFiatCode, simplexPurchase.spentFiatCode);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode()) * 31) + getTxHash().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.senderAddress.hashCode()) * 31) + this.recipientAddress.hashCode()) * 31) + this.orderId.hashCode()) * 31) + this.spentAmount.hashCode()) * 31) + this.spentFiatCode.hashCode();
            }

            public String toString() {
                return "SimplexPurchase(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ", txHash=" + getTxHash() + ", networkType=" + getNetworkType() + ", senderAddress=" + this.senderAddress + ", recipientAddress=" + this.recipientAddress + ", orderId=" + this.orderId + ", spentAmount=" + this.spentAmount + ", spentFiatCode=" + this.spentFiatCode + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f364id;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getAmount() {
                return this.amount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionDirection getDirection() {
                return this.direction;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getCreatedAt() {
                return this.createdAt;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public Status getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionProcessingType getProcessingType() {
                return this.processingType;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getFeeAmount() {
                return this.feeAmount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getFeeTokenCode() {
                return this.feeTokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            public final String getSenderAddress() {
                return this.senderAddress;
            }

            public final String getRecipientAddress() {
                return this.recipientAddress;
            }

            public final String getOrderId() {
                return this.orderId;
            }

            public final BigDecimal getSpentAmount() {
                return this.spentAmount;
            }

            public final FiatCode getSpentFiatCode() {
                return this.spentFiatCode;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SimplexPurchase(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType, String senderAddress, String recipientAddress, String orderId, BigDecimal spentAmount, FiatCode spentFiatCode) {
                super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(orderId, "orderId");
                Intrinsics.checkNotNullParameter(spentAmount, "spentAmount");
                Intrinsics.checkNotNullParameter(spentFiatCode, "spentFiatCode");
                this.f364id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.tokenCode = tokenCode;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeTokenCode = feeTokenCode;
                this.txHash = txHash;
                this.networkType = networkType;
                this.senderAddress = senderAddress;
                this.recipientAddress = recipientAddress;
                this.orderId = orderId;
                this.spentAmount = spentAmount;
                this.spentFiatCode = spentFiatCode;
            }
        }

        /* compiled from: Transaction.kt */
        /* loaded from: classes3.dex */
        public static final class Swap extends Crypto {
            private final BigDecimal amount;
            private final String createdAt;
            private final TransactionDirection direction;
            private final BigDecimal feeAmount;
            private final TokenCode feeTokenCode;

            /* renamed from: id */
            private final String f365id;
            private final BigDecimal inputAmount;
            private final TokenCode inputTokenCode;
            private final NetworkType networkType;
            private final BigDecimal outputAmount;
            private final TokenCode outputTokenCode;
            private final TransactionProcessingType processingType;
            private final Status status;
            private final TokenCode tokenCode;
            private final TradeType tradeType;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenCode component10() {
                return getFeeTokenCode();
            }

            public final String component11() {
                return getTxHash();
            }

            public final NetworkType component12() {
                return getNetworkType();
            }

            public final TokenCode component13() {
                return this.inputTokenCode;
            }

            public final TokenCode component14() {
                return this.outputTokenCode;
            }

            public final TradeType component15() {
                return this.tradeType;
            }

            public final BigDecimal component16() {
                return this.inputAmount;
            }

            public final BigDecimal component17() {
                return this.outputAmount;
            }

            public final BigDecimal component2() {
                return getAmount();
            }

            public final TransactionType component3() {
                return getType();
            }

            public final TransactionDirection component4() {
                return getDirection();
            }

            public final String component5() {
                return getCreatedAt();
            }

            public final TokenCode component6() {
                return getTokenCode();
            }

            public final Status component7() {
                return getStatus();
            }

            public final TransactionProcessingType component8() {
                return getProcessingType();
            }

            public final BigDecimal component9() {
                return getFeeAmount();
            }

            public final Swap copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType, TokenCode inputTokenCode, TokenCode outputTokenCode, TradeType tradeType, BigDecimal inputAmount, BigDecimal outputAmount) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(inputTokenCode, "inputTokenCode");
                Intrinsics.checkNotNullParameter(outputTokenCode, "outputTokenCode");
                Intrinsics.checkNotNullParameter(tradeType, "tradeType");
                Intrinsics.checkNotNullParameter(inputAmount, "inputAmount");
                Intrinsics.checkNotNullParameter(outputAmount, "outputAmount");
                return new Swap(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType, inputTokenCode, outputTokenCode, tradeType, inputAmount, outputAmount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Swap) {
                    Swap swap = (Swap) obj;
                    return Intrinsics.areEqual(getId(), swap.getId()) && Intrinsics.areEqual(getAmount(), swap.getAmount()) && getType() == swap.getType() && getDirection() == swap.getDirection() && Intrinsics.areEqual(getCreatedAt(), swap.getCreatedAt()) && getTokenCode() == swap.getTokenCode() && getStatus() == swap.getStatus() && getProcessingType() == swap.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), swap.getFeeAmount()) && getFeeTokenCode() == swap.getFeeTokenCode() && Intrinsics.areEqual(getTxHash(), swap.getTxHash()) && getNetworkType() == swap.getNetworkType() && this.inputTokenCode == swap.inputTokenCode && this.outputTokenCode == swap.outputTokenCode && this.tradeType == swap.tradeType && Intrinsics.areEqual(this.inputAmount, swap.inputAmount) && Intrinsics.areEqual(this.outputAmount, swap.outputAmount);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getTokenCode().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeTokenCode().hashCode()) * 31) + getTxHash().hashCode()) * 31) + getNetworkType().hashCode()) * 31) + this.inputTokenCode.hashCode()) * 31) + this.outputTokenCode.hashCode()) * 31) + this.tradeType.hashCode()) * 31) + this.inputAmount.hashCode()) * 31) + this.outputAmount.hashCode();
            }

            public String toString() {
                return "Swap(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", tokenCode=" + getTokenCode() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeTokenCode=" + getFeeTokenCode() + ", txHash=" + getTxHash() + ", networkType=" + getNetworkType() + ", inputTokenCode=" + this.inputTokenCode + ", outputTokenCode=" + this.outputTokenCode + ", tradeType=" + this.tradeType + ", inputAmount=" + this.inputAmount + ", outputAmount=" + this.outputAmount + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f365id;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getAmount() {
                return this.amount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionType getType() {
                return this.type;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionDirection getDirection() {
                return this.direction;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getCreatedAt() {
                return this.createdAt;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getTokenCode() {
                return this.tokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public Status getStatus() {
                return this.status;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TransactionProcessingType getProcessingType() {
                return this.processingType;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public BigDecimal getFeeAmount() {
                return this.feeAmount;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public TokenCode getFeeTokenCode() {
                return this.feeTokenCode;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public NetworkType getNetworkType() {
                return this.networkType;
            }

            public final TokenCode getInputTokenCode() {
                return this.inputTokenCode;
            }

            public final TokenCode getOutputTokenCode() {
                return this.outputTokenCode;
            }

            public final TradeType getTradeType() {
                return this.tradeType;
            }

            public final BigDecimal getInputAmount() {
                return this.inputAmount;
            }

            public final BigDecimal getOutputAmount() {
                return this.outputAmount;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Swap(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenCode tokenCode, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenCode feeTokenCode, String txHash, NetworkType networkType, TokenCode inputTokenCode, TokenCode outputTokenCode, TradeType tradeType, BigDecimal inputAmount, BigDecimal outputAmount) {
                super(id, amount, type, direction, createdAt, tokenCode, status, processingType, feeAmount, feeTokenCode, txHash, networkType);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeTokenCode, "feeTokenCode");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                Intrinsics.checkNotNullParameter(inputTokenCode, "inputTokenCode");
                Intrinsics.checkNotNullParameter(outputTokenCode, "outputTokenCode");
                Intrinsics.checkNotNullParameter(tradeType, "tradeType");
                Intrinsics.checkNotNullParameter(inputAmount, "inputAmount");
                Intrinsics.checkNotNullParameter(outputAmount, "outputAmount");
                this.f365id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.tokenCode = tokenCode;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeTokenCode = feeTokenCode;
                this.txHash = txHash;
                this.networkType = networkType;
                this.inputTokenCode = inputTokenCode;
                this.outputTokenCode = outputTokenCode;
                this.tradeType = tradeType;
                this.inputAmount = inputAmount;
                this.outputAmount = outputAmount;
            }
        }
    }
}
