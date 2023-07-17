package com.iMe.storage.domain.model.wallet.transaction;

import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.swap.TradeType;
import com.iMe.storage.domain.model.wallet.token.FiatCode;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
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
    private final TokenDetailed feeToken;

    /* renamed from: id */
    private final String f432id;
    private final TransactionProcessingType processingType;
    private final Status status;
    private final TokenDetailed token;
    private final TransactionType type;

    public /* synthetic */ Transaction(String str, BigDecimal bigDecimal, TransactionType transactionType, TransactionDirection transactionDirection, String str2, TokenDetailed tokenDetailed, Status status, TransactionProcessingType transactionProcessingType, BigDecimal bigDecimal2, TokenDetailed tokenDetailed2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, bigDecimal, transactionType, transactionDirection, str2, tokenDetailed, status, transactionProcessingType, bigDecimal2, tokenDetailed2);
    }

    private Transaction(String str, BigDecimal bigDecimal, TransactionType transactionType, TransactionDirection transactionDirection, String str2, TokenDetailed tokenDetailed, Status status, TransactionProcessingType transactionProcessingType, BigDecimal bigDecimal2, TokenDetailed tokenDetailed2) {
        this.f432id = str;
        this.amount = bigDecimal;
        this.type = transactionType;
        this.direction = transactionDirection;
        this.createdAt = str2;
        this.token = tokenDetailed;
        this.status = status;
        this.processingType = transactionProcessingType;
        this.feeAmount = bigDecimal2;
        this.feeToken = tokenDetailed2;
    }

    public String getId() {
        return this.f432id;
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

    public TokenDetailed getToken() {
        return this.token;
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

    public TokenDetailed getFeeToken() {
        return this.feeToken;
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Unsupported extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f445id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenDetailed token;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenDetailed component10() {
            return getFeeToken();
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

        public final TokenDetailed component6() {
            return getToken();
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

        public final Unsupported copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            return new Unsupported(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Unsupported) {
                Unsupported unsupported = (Unsupported) obj;
                return Intrinsics.areEqual(getId(), unsupported.getId()) && Intrinsics.areEqual(getAmount(), unsupported.getAmount()) && getType() == unsupported.getType() && getDirection() == unsupported.getDirection() && Intrinsics.areEqual(getCreatedAt(), unsupported.getCreatedAt()) && Intrinsics.areEqual(getToken(), unsupported.getToken()) && getStatus() == unsupported.getStatus() && getProcessingType() == unsupported.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), unsupported.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), unsupported.getFeeToken());
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode();
        }

        public String toString() {
            return "Unsupported(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f445id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unsupported(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            this.f445id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Transfer extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f444id;
        private final TransactionProcessingType processingType;
        private final String recipientUserId;
        private final Status status;
        private final TokenDetailed token;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenDetailed component10() {
            return getFeeToken();
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

        public final TokenDetailed component6() {
            return getToken();
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

        public final Transfer copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String recipientUserId) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(recipientUserId, "recipientUserId");
            return new Transfer(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, recipientUserId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Transfer) {
                Transfer transfer = (Transfer) obj;
                return Intrinsics.areEqual(getId(), transfer.getId()) && Intrinsics.areEqual(getAmount(), transfer.getAmount()) && getType() == transfer.getType() && getDirection() == transfer.getDirection() && Intrinsics.areEqual(getCreatedAt(), transfer.getCreatedAt()) && Intrinsics.areEqual(getToken(), transfer.getToken()) && getStatus() == transfer.getStatus() && getProcessingType() == transfer.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), transfer.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), transfer.getFeeToken()) && Intrinsics.areEqual(this.recipientUserId, transfer.recipientUserId);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode()) * 31) + this.recipientUserId.hashCode();
        }

        public String toString() {
            return "Transfer(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ", recipientUserId=" + this.recipientUserId + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f444id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        public final String getRecipientUserId() {
            return this.recipientUserId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Transfer(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String recipientUserId) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(recipientUserId, "recipientUserId");
            this.f444id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
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
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f441id;
        private final String invitedUserId;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenDetailed token;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenDetailed component10() {
            return getFeeToken();
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

        public final TokenDetailed component6() {
            return getToken();
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

        public final Referral copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String invitedUserId) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(invitedUserId, "invitedUserId");
            return new Referral(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, invitedUserId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Referral) {
                Referral referral = (Referral) obj;
                return Intrinsics.areEqual(getId(), referral.getId()) && Intrinsics.areEqual(getAmount(), referral.getAmount()) && getType() == referral.getType() && getDirection() == referral.getDirection() && Intrinsics.areEqual(getCreatedAt(), referral.getCreatedAt()) && Intrinsics.areEqual(getToken(), referral.getToken()) && getStatus() == referral.getStatus() && getProcessingType() == referral.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), referral.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), referral.getFeeToken()) && Intrinsics.areEqual(this.invitedUserId, referral.invitedUserId);
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode()) * 31) + this.invitedUserId.hashCode();
        }

        public String toString() {
            return "Referral(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ", invitedUserId=" + this.invitedUserId + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f441id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        public final String getInvitedUserId() {
            return this.invitedUserId;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Referral(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String invitedUserId) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(invitedUserId, "invitedUserId");
            this.f441id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
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
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f440id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenDetailed token;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenDetailed component10() {
            return getFeeToken();
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

        public final TokenDetailed component6() {
            return getToken();
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

        public final Purchase copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            return new Purchase(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Purchase) {
                Purchase purchase = (Purchase) obj;
                return Intrinsics.areEqual(getId(), purchase.getId()) && Intrinsics.areEqual(getAmount(), purchase.getAmount()) && getType() == purchase.getType() && getDirection() == purchase.getDirection() && Intrinsics.areEqual(getCreatedAt(), purchase.getCreatedAt()) && Intrinsics.areEqual(getToken(), purchase.getToken()) && getStatus() == purchase.getStatus() && getProcessingType() == purchase.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), purchase.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), purchase.getFeeToken());
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode();
        }

        public String toString() {
            return "Purchase(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f440id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purchase(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            this.f440id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Lottery extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f439id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenDetailed token;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenDetailed component10() {
            return getFeeToken();
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

        public final TokenDetailed component6() {
            return getToken();
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

        public final Lottery copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            return new Lottery(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Lottery) {
                Lottery lottery = (Lottery) obj;
                return Intrinsics.areEqual(getId(), lottery.getId()) && Intrinsics.areEqual(getAmount(), lottery.getAmount()) && getType() == lottery.getType() && getDirection() == lottery.getDirection() && Intrinsics.areEqual(getCreatedAt(), lottery.getCreatedAt()) && Intrinsics.areEqual(getToken(), lottery.getToken()) && getStatus() == lottery.getStatus() && getProcessingType() == lottery.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), lottery.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), lottery.getFeeToken());
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode();
        }

        public String toString() {
            return "Lottery(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f439id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Lottery(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            this.f439id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Registration extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f443id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenDetailed token;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenDetailed component10() {
            return getFeeToken();
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

        public final TokenDetailed component6() {
            return getToken();
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

        public final Registration copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            return new Registration(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Registration) {
                Registration registration = (Registration) obj;
                return Intrinsics.areEqual(getId(), registration.getId()) && Intrinsics.areEqual(getAmount(), registration.getAmount()) && getType() == registration.getType() && getDirection() == registration.getDirection() && Intrinsics.areEqual(getCreatedAt(), registration.getCreatedAt()) && Intrinsics.areEqual(getToken(), registration.getToken()) && getStatus() == registration.getStatus() && getProcessingType() == registration.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), registration.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), registration.getFeeToken());
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode();
        }

        public String toString() {
            return "Registration(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f443id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Registration(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            this.f443id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static final class Refund extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f442id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenDetailed token;
        private final TransactionType type;

        public final String component1() {
            return getId();
        }

        public final TokenDetailed component10() {
            return getFeeToken();
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

        public final TokenDetailed component6() {
            return getToken();
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

        public final Refund copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            return new Refund(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Refund) {
                Refund refund = (Refund) obj;
                return Intrinsics.areEqual(getId(), refund.getId()) && Intrinsics.areEqual(getAmount(), refund.getAmount()) && getType() == refund.getType() && getDirection() == refund.getDirection() && Intrinsics.areEqual(getCreatedAt(), refund.getCreatedAt()) && Intrinsics.areEqual(getToken(), refund.getToken()) && getStatus() == refund.getStatus() && getProcessingType() == refund.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), refund.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), refund.getFeeToken());
            }
            return false;
        }

        public int hashCode() {
            return (((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode();
        }

        public String toString() {
            return "Refund(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ')';
        }

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f442id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Refund(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            this.f442id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
        }
    }

    /* compiled from: Transaction.kt */
    /* loaded from: classes3.dex */
    public static class Crypto extends Transaction {
        private final BigDecimal amount;
        private final String createdAt;
        private final TransactionDirection direction;
        private final BigDecimal feeAmount;
        private final TokenDetailed feeToken;

        /* renamed from: id */
        private final String f433id;
        private final TransactionProcessingType processingType;
        private final Status status;
        private final TokenDetailed token;
        private final String txHash;
        private final TransactionType type;

        @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction
        public String getId() {
            return this.f433id;
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
        public TokenDetailed getToken() {
            return this.token;
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
        public TokenDetailed getFeeToken() {
            return this.feeToken;
        }

        public String getTxHash() {
            return this.txHash;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crypto(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash) {
            super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, null);
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(amount, "amount");
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(direction, "direction");
            Intrinsics.checkNotNullParameter(createdAt, "createdAt");
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(status, "status");
            Intrinsics.checkNotNullParameter(processingType, "processingType");
            Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
            Intrinsics.checkNotNullParameter(feeToken, "feeToken");
            Intrinsics.checkNotNullParameter(txHash, "txHash");
            this.f433id = id;
            this.amount = amount;
            this.type = type;
            this.direction = direction;
            this.createdAt = createdAt;
            this.token = token;
            this.status = status;
            this.processingType = processingType;
            this.feeAmount = feeAmount;
            this.feeToken = feeToken;
            this.txHash = txHash;
        }

        public final Network getNetwork() {
            return NetworksHelper.getNetworkById(getToken().getNetworkId());
        }

        /* compiled from: Transaction.kt */
        /* loaded from: classes3.dex */
        public static final class Donation extends Transfer {
            private final BigDecimal amount;
            private final String createdAt;
            private final TransactionDirection direction;
            private final BigDecimal feeAmount;
            private final TokenDetailed feeToken;

            /* renamed from: id */
            private final String f435id;
            private final TransactionProcessingType processingType;
            private final String receiverAccountId;
            private final String recipientAddress;
            private final String senderAccountId;
            private final String senderAddress;
            private final Status status;
            private final TokenDetailed token;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenDetailed component10() {
                return getFeeToken();
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

            public final String component14() {
                return this.senderAccountId;
            }

            public final String component15() {
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

            public final TokenDetailed component6() {
                return getToken();
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

            public final Donation copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash, String senderAddress, String recipientAddress, String senderAccountId, String receiverAccountId) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(senderAccountId, "senderAccountId");
                Intrinsics.checkNotNullParameter(receiverAccountId, "receiverAccountId");
                return new Donation(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash, senderAddress, recipientAddress, senderAccountId, receiverAccountId);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Donation) {
                    Donation donation = (Donation) obj;
                    return Intrinsics.areEqual(getId(), donation.getId()) && Intrinsics.areEqual(getAmount(), donation.getAmount()) && getType() == donation.getType() && getDirection() == donation.getDirection() && Intrinsics.areEqual(getCreatedAt(), donation.getCreatedAt()) && Intrinsics.areEqual(getToken(), donation.getToken()) && getStatus() == donation.getStatus() && getProcessingType() == donation.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), donation.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), donation.getFeeToken()) && Intrinsics.areEqual(getTxHash(), donation.getTxHash()) && Intrinsics.areEqual(getSenderAddress(), donation.getSenderAddress()) && Intrinsics.areEqual(getRecipientAddress(), donation.getRecipientAddress()) && Intrinsics.areEqual(this.senderAccountId, donation.senderAccountId) && Intrinsics.areEqual(this.receiverAccountId, donation.receiverAccountId);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode()) * 31) + getTxHash().hashCode()) * 31) + getSenderAddress().hashCode()) * 31) + getRecipientAddress().hashCode()) * 31) + this.senderAccountId.hashCode()) * 31) + this.receiverAccountId.hashCode();
            }

            public String toString() {
                return "Donation(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ", txHash=" + getTxHash() + ", senderAddress=" + getSenderAddress() + ", recipientAddress=" + getRecipientAddress() + ", senderAccountId=" + this.senderAccountId + ", receiverAccountId=" + this.receiverAccountId + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto.Transfer, com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f435id;
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
            public TokenDetailed getToken() {
                return this.token;
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
            public TokenDetailed getFeeToken() {
                return this.feeToken;
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

            public final String getSenderAccountId() {
                return this.senderAccountId;
            }

            public final String getReceiverAccountId() {
                return this.receiverAccountId;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Donation(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash, String senderAddress, String recipientAddress, String senderAccountId, String receiverAccountId) {
                super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash, senderAddress, recipientAddress, null);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(senderAccountId, "senderAccountId");
                Intrinsics.checkNotNullParameter(receiverAccountId, "receiverAccountId");
                this.f435id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.token = token;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeToken = feeToken;
                this.txHash = txHash;
                this.senderAddress = senderAddress;
                this.recipientAddress = recipientAddress;
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
            private final TokenDetailed feeToken;

            /* renamed from: id */
            private final String f438id;
            private final String payloadMessage;
            private final TransactionProcessingType processingType;
            private final String recipientAddress;
            private final String senderAddress;
            private final Status status;
            private final TokenDetailed token;
            private final String txHash;
            private final TransactionType type;

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f438id;
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
            public TokenDetailed getToken() {
                return this.token;
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
            public TokenDetailed getFeeToken() {
                return this.feeToken;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
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
            public Transfer(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash, String senderAddress, String recipientAddress, String str) {
                super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                this.f438id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.token = token;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeToken = feeToken;
                this.txHash = txHash;
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
            private final TokenDetailed feeToken;

            /* renamed from: id */
            private final String f434id;
            private final TransactionProcessingType processingType;
            private final Status status;
            private final TokenDetailed token;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenDetailed component10() {
                return getFeeToken();
            }

            public final String component11() {
                return getTxHash();
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

            public final TokenDetailed component6() {
                return getToken();
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

            public final Approve copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                return new Approve(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Approve) {
                    Approve approve = (Approve) obj;
                    return Intrinsics.areEqual(getId(), approve.getId()) && Intrinsics.areEqual(getAmount(), approve.getAmount()) && getType() == approve.getType() && getDirection() == approve.getDirection() && Intrinsics.areEqual(getCreatedAt(), approve.getCreatedAt()) && Intrinsics.areEqual(getToken(), approve.getToken()) && getStatus() == approve.getStatus() && getProcessingType() == approve.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), approve.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), approve.getFeeToken()) && Intrinsics.areEqual(getTxHash(), approve.getTxHash());
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode()) * 31) + getTxHash().hashCode();
            }

            public String toString() {
                return "Approve(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ", txHash=" + getTxHash() + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f434id;
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
            public TokenDetailed getToken() {
                return this.token;
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
            public TokenDetailed getFeeToken() {
                return this.feeToken;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Approve(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash) {
                super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                this.f434id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.token = token;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeToken = feeToken;
                this.txHash = txHash;
            }
        }

        /* compiled from: Transaction.kt */
        /* loaded from: classes3.dex */
        public static final class SimplexPurchase extends Crypto {
            private final BigDecimal amount;
            private final String createdAt;
            private final TransactionDirection direction;
            private final BigDecimal feeAmount;
            private final TokenDetailed feeToken;

            /* renamed from: id */
            private final String f436id;
            private final String orderId;
            private final TransactionProcessingType processingType;
            private final String recipientAddress;
            private final String senderAddress;
            private final BigDecimal spentAmount;
            private final FiatCode spentFiatCode;
            private final Status status;
            private final TokenDetailed token;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenDetailed component10() {
                return getFeeToken();
            }

            public final String component11() {
                return getTxHash();
            }

            public final String component12() {
                return this.senderAddress;
            }

            public final String component13() {
                return this.recipientAddress;
            }

            public final String component14() {
                return this.orderId;
            }

            public final BigDecimal component15() {
                return this.spentAmount;
            }

            public final FiatCode component16() {
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

            public final TokenDetailed component6() {
                return getToken();
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

            public final SimplexPurchase copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash, String senderAddress, String recipientAddress, String orderId, BigDecimal spentAmount, FiatCode spentFiatCode) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(orderId, "orderId");
                Intrinsics.checkNotNullParameter(spentAmount, "spentAmount");
                Intrinsics.checkNotNullParameter(spentFiatCode, "spentFiatCode");
                return new SimplexPurchase(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash, senderAddress, recipientAddress, orderId, spentAmount, spentFiatCode);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof SimplexPurchase) {
                    SimplexPurchase simplexPurchase = (SimplexPurchase) obj;
                    return Intrinsics.areEqual(getId(), simplexPurchase.getId()) && Intrinsics.areEqual(getAmount(), simplexPurchase.getAmount()) && getType() == simplexPurchase.getType() && getDirection() == simplexPurchase.getDirection() && Intrinsics.areEqual(getCreatedAt(), simplexPurchase.getCreatedAt()) && Intrinsics.areEqual(getToken(), simplexPurchase.getToken()) && getStatus() == simplexPurchase.getStatus() && getProcessingType() == simplexPurchase.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), simplexPurchase.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), simplexPurchase.getFeeToken()) && Intrinsics.areEqual(getTxHash(), simplexPurchase.getTxHash()) && Intrinsics.areEqual(this.senderAddress, simplexPurchase.senderAddress) && Intrinsics.areEqual(this.recipientAddress, simplexPurchase.recipientAddress) && Intrinsics.areEqual(this.orderId, simplexPurchase.orderId) && Intrinsics.areEqual(this.spentAmount, simplexPurchase.spentAmount) && Intrinsics.areEqual(this.spentFiatCode, simplexPurchase.spentFiatCode);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode()) * 31) + getTxHash().hashCode()) * 31) + this.senderAddress.hashCode()) * 31) + this.recipientAddress.hashCode()) * 31) + this.orderId.hashCode()) * 31) + this.spentAmount.hashCode()) * 31) + this.spentFiatCode.hashCode();
            }

            public String toString() {
                return "SimplexPurchase(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ", txHash=" + getTxHash() + ", senderAddress=" + this.senderAddress + ", recipientAddress=" + this.recipientAddress + ", orderId=" + this.orderId + ", spentAmount=" + this.spentAmount + ", spentFiatCode=" + this.spentFiatCode + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f436id;
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
            public TokenDetailed getToken() {
                return this.token;
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
            public TokenDetailed getFeeToken() {
                return this.feeToken;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
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
            public SimplexPurchase(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash, String senderAddress, String recipientAddress, String orderId, BigDecimal spentAmount, FiatCode spentFiatCode) {
                super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(senderAddress, "senderAddress");
                Intrinsics.checkNotNullParameter(recipientAddress, "recipientAddress");
                Intrinsics.checkNotNullParameter(orderId, "orderId");
                Intrinsics.checkNotNullParameter(spentAmount, "spentAmount");
                Intrinsics.checkNotNullParameter(spentFiatCode, "spentFiatCode");
                this.f436id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.token = token;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeToken = feeToken;
                this.txHash = txHash;
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
            private final TokenDetailed feeToken;

            /* renamed from: id */
            private final String f437id;
            private final BigDecimal inputAmount;
            private final TokenDetailed inputToken;
            private final BigDecimal outputAmount;
            private final TokenDetailed outputToken;
            private final TransactionProcessingType processingType;
            private final Status status;
            private final TokenDetailed token;
            private final TradeType tradeType;
            private final String txHash;
            private final TransactionType type;

            public final String component1() {
                return getId();
            }

            public final TokenDetailed component10() {
                return getFeeToken();
            }

            public final String component11() {
                return getTxHash();
            }

            public final TokenDetailed component12() {
                return this.inputToken;
            }

            public final TokenDetailed component13() {
                return this.outputToken;
            }

            public final TradeType component14() {
                return this.tradeType;
            }

            public final BigDecimal component15() {
                return this.inputAmount;
            }

            public final BigDecimal component16() {
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

            public final TokenDetailed component6() {
                return getToken();
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

            public final Swap copy(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash, TokenDetailed inputToken, TokenDetailed outputToken, TradeType tradeType, BigDecimal inputAmount, BigDecimal outputAmount) {
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(inputToken, "inputToken");
                Intrinsics.checkNotNullParameter(outputToken, "outputToken");
                Intrinsics.checkNotNullParameter(tradeType, "tradeType");
                Intrinsics.checkNotNullParameter(inputAmount, "inputAmount");
                Intrinsics.checkNotNullParameter(outputAmount, "outputAmount");
                return new Swap(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash, inputToken, outputToken, tradeType, inputAmount, outputAmount);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof Swap) {
                    Swap swap = (Swap) obj;
                    return Intrinsics.areEqual(getId(), swap.getId()) && Intrinsics.areEqual(getAmount(), swap.getAmount()) && getType() == swap.getType() && getDirection() == swap.getDirection() && Intrinsics.areEqual(getCreatedAt(), swap.getCreatedAt()) && Intrinsics.areEqual(getToken(), swap.getToken()) && getStatus() == swap.getStatus() && getProcessingType() == swap.getProcessingType() && Intrinsics.areEqual(getFeeAmount(), swap.getFeeAmount()) && Intrinsics.areEqual(getFeeToken(), swap.getFeeToken()) && Intrinsics.areEqual(getTxHash(), swap.getTxHash()) && Intrinsics.areEqual(this.inputToken, swap.inputToken) && Intrinsics.areEqual(this.outputToken, swap.outputToken) && this.tradeType == swap.tradeType && Intrinsics.areEqual(this.inputAmount, swap.inputAmount) && Intrinsics.areEqual(this.outputAmount, swap.outputAmount);
                }
                return false;
            }

            public int hashCode() {
                return (((((((((((((((((((((((((((((getId().hashCode() * 31) + getAmount().hashCode()) * 31) + getType().hashCode()) * 31) + getDirection().hashCode()) * 31) + getCreatedAt().hashCode()) * 31) + getToken().hashCode()) * 31) + getStatus().hashCode()) * 31) + getProcessingType().hashCode()) * 31) + getFeeAmount().hashCode()) * 31) + getFeeToken().hashCode()) * 31) + getTxHash().hashCode()) * 31) + this.inputToken.hashCode()) * 31) + this.outputToken.hashCode()) * 31) + this.tradeType.hashCode()) * 31) + this.inputAmount.hashCode()) * 31) + this.outputAmount.hashCode();
            }

            public String toString() {
                return "Swap(id=" + getId() + ", amount=" + getAmount() + ", type=" + getType() + ", direction=" + getDirection() + ", createdAt=" + getCreatedAt() + ", token=" + getToken() + ", status=" + getStatus() + ", processingType=" + getProcessingType() + ", feeAmount=" + getFeeAmount() + ", feeToken=" + getFeeToken() + ", txHash=" + getTxHash() + ", inputToken=" + this.inputToken + ", outputToken=" + this.outputToken + ", tradeType=" + this.tradeType + ", inputAmount=" + this.inputAmount + ", outputAmount=" + this.outputAmount + ')';
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto, com.iMe.storage.domain.model.wallet.transaction.Transaction
            public String getId() {
                return this.f437id;
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
            public TokenDetailed getToken() {
                return this.token;
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
            public TokenDetailed getFeeToken() {
                return this.feeToken;
            }

            @Override // com.iMe.storage.domain.model.wallet.transaction.Transaction.Crypto
            public String getTxHash() {
                return this.txHash;
            }

            public final TokenDetailed getInputToken() {
                return this.inputToken;
            }

            public final TokenDetailed getOutputToken() {
                return this.outputToken;
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
            public Swap(String id, BigDecimal amount, TransactionType type, TransactionDirection direction, String createdAt, TokenDetailed token, Status status, TransactionProcessingType processingType, BigDecimal feeAmount, TokenDetailed feeToken, String txHash, TokenDetailed inputToken, TokenDetailed outputToken, TradeType tradeType, BigDecimal inputAmount, BigDecimal outputAmount) {
                super(id, amount, type, direction, createdAt, token, status, processingType, feeAmount, feeToken, txHash);
                Intrinsics.checkNotNullParameter(id, "id");
                Intrinsics.checkNotNullParameter(amount, "amount");
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(direction, "direction");
                Intrinsics.checkNotNullParameter(createdAt, "createdAt");
                Intrinsics.checkNotNullParameter(token, "token");
                Intrinsics.checkNotNullParameter(status, "status");
                Intrinsics.checkNotNullParameter(processingType, "processingType");
                Intrinsics.checkNotNullParameter(feeAmount, "feeAmount");
                Intrinsics.checkNotNullParameter(feeToken, "feeToken");
                Intrinsics.checkNotNullParameter(txHash, "txHash");
                Intrinsics.checkNotNullParameter(inputToken, "inputToken");
                Intrinsics.checkNotNullParameter(outputToken, "outputToken");
                Intrinsics.checkNotNullParameter(tradeType, "tradeType");
                Intrinsics.checkNotNullParameter(inputAmount, "inputAmount");
                Intrinsics.checkNotNullParameter(outputAmount, "outputAmount");
                this.f437id = id;
                this.amount = amount;
                this.type = type;
                this.direction = direction;
                this.createdAt = createdAt;
                this.token = token;
                this.status = status;
                this.processingType = processingType;
                this.feeAmount = feeAmount;
                this.feeToken = feeToken;
                this.txHash = txHash;
                this.inputToken = inputToken;
                this.outputToken = outputToken;
                this.tradeType = tradeType;
                this.inputAmount = inputAmount;
                this.outputAmount = outputAmount;
            }
        }
    }
}
