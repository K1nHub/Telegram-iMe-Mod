package com.iMe.storage.domain.model.staking;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.data.network.model.response.base.Status;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.transaction.TransactionDirection;
import com.iMe.storage.domain.model.wallet.transaction.TransactionType;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperation.kt */
/* loaded from: classes3.dex */
public final class StakingOperation {
    private final StakingOperationCost amount;
    private final TokenDetailed approvedToken;
    private final String failReason;
    private final StakingOperationCost fee;

    /* renamed from: id */
    private final long f374id;
    private final String issuedAt;
    private final String issuer;
    private final Boolean safe;
    private final String settledAt;
    private final int stakingId;
    private final StakingOperationStatus status;
    private final TokenDetailed token;
    private final String transaction;
    private final StakingOperationType type;

    /* compiled from: StakingOperation.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[StakingOperationType.values().length];
            try {
                iArr[StakingOperationType.APPROVAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StakingOperationType.DEPOSIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StakingOperationType.WITHDRAWAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[StakingOperationType.CLAIM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[StakingOperationStatus.values().length];
            try {
                iArr2[StakingOperationStatus.PENDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[StakingOperationStatus.CONFIRMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[StakingOperationStatus.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public final long component1() {
        return this.f374id;
    }

    public final StakingOperationCost component10() {
        return this.amount;
    }

    public final StakingOperationCost component11() {
        return this.fee;
    }

    public final Boolean component12() {
        return this.safe;
    }

    public final TokenDetailed component13() {
        return this.approvedToken;
    }

    public final TokenDetailed component14() {
        return this.token;
    }

    public final int component2() {
        return this.stakingId;
    }

    public final String component3() {
        return this.transaction;
    }

    public final StakingOperationType component4() {
        return this.type;
    }

    public final StakingOperationStatus component5() {
        return this.status;
    }

    public final String component6() {
        return this.issuer;
    }

    public final String component7() {
        return this.issuedAt;
    }

    public final String component8() {
        return this.settledAt;
    }

    public final String component9() {
        return this.failReason;
    }

    public final StakingOperation copy(long j, int i, String transaction, StakingOperationType type, StakingOperationStatus status, String issuer, String issuedAt, String str, String str2, StakingOperationCost stakingOperationCost, StakingOperationCost stakingOperationCost2, Boolean bool, TokenDetailed tokenDetailed, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(issuer, "issuer");
        Intrinsics.checkNotNullParameter(issuedAt, "issuedAt");
        Intrinsics.checkNotNullParameter(token, "token");
        return new StakingOperation(j, i, transaction, type, status, issuer, issuedAt, str, str2, stakingOperationCost, stakingOperationCost2, bool, tokenDetailed, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperation) {
            StakingOperation stakingOperation = (StakingOperation) obj;
            return this.f374id == stakingOperation.f374id && this.stakingId == stakingOperation.stakingId && Intrinsics.areEqual(this.transaction, stakingOperation.transaction) && this.type == stakingOperation.type && this.status == stakingOperation.status && Intrinsics.areEqual(this.issuer, stakingOperation.issuer) && Intrinsics.areEqual(this.issuedAt, stakingOperation.issuedAt) && Intrinsics.areEqual(this.settledAt, stakingOperation.settledAt) && Intrinsics.areEqual(this.failReason, stakingOperation.failReason) && Intrinsics.areEqual(this.amount, stakingOperation.amount) && Intrinsics.areEqual(this.fee, stakingOperation.fee) && Intrinsics.areEqual(this.safe, stakingOperation.safe) && Intrinsics.areEqual(this.approvedToken, stakingOperation.approvedToken) && Intrinsics.areEqual(this.token, stakingOperation.token);
        }
        return false;
    }

    public int hashCode() {
        int m1017m = ((((((((((((ProfileData$$ExternalSyntheticBackport0.m1017m(this.f374id) * 31) + this.stakingId) * 31) + this.transaction.hashCode()) * 31) + this.type.hashCode()) * 31) + this.status.hashCode()) * 31) + this.issuer.hashCode()) * 31) + this.issuedAt.hashCode()) * 31;
        String str = this.settledAt;
        int hashCode = (m1017m + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.failReason;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        StakingOperationCost stakingOperationCost = this.amount;
        int hashCode3 = (hashCode2 + (stakingOperationCost == null ? 0 : stakingOperationCost.hashCode())) * 31;
        StakingOperationCost stakingOperationCost2 = this.fee;
        int hashCode4 = (hashCode3 + (stakingOperationCost2 == null ? 0 : stakingOperationCost2.hashCode())) * 31;
        Boolean bool = this.safe;
        int hashCode5 = (hashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        TokenDetailed tokenDetailed = this.approvedToken;
        return ((hashCode5 + (tokenDetailed != null ? tokenDetailed.hashCode() : 0)) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "StakingOperation(id=" + this.f374id + ", stakingId=" + this.stakingId + ", transaction=" + this.transaction + ", type=" + this.type + ", status=" + this.status + ", issuer=" + this.issuer + ", issuedAt=" + this.issuedAt + ", settledAt=" + this.settledAt + ", failReason=" + this.failReason + ", amount=" + this.amount + ", fee=" + this.fee + ", safe=" + this.safe + ", approvedToken=" + this.approvedToken + ", token=" + this.token + ')';
    }

    public StakingOperation(long j, int i, String transaction, StakingOperationType type, StakingOperationStatus status, String issuer, String issuedAt, String str, String str2, StakingOperationCost stakingOperationCost, StakingOperationCost stakingOperationCost2, Boolean bool, TokenDetailed tokenDetailed, TokenDetailed token) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(issuer, "issuer");
        Intrinsics.checkNotNullParameter(issuedAt, "issuedAt");
        Intrinsics.checkNotNullParameter(token, "token");
        this.f374id = j;
        this.stakingId = i;
        this.transaction = transaction;
        this.type = type;
        this.status = status;
        this.issuer = issuer;
        this.issuedAt = issuedAt;
        this.settledAt = str;
        this.failReason = str2;
        this.amount = stakingOperationCost;
        this.fee = stakingOperationCost2;
        this.safe = bool;
        this.approvedToken = tokenDetailed;
        this.token = token;
    }

    public final long getId() {
        return this.f374id;
    }

    public final int getStakingId() {
        return this.stakingId;
    }

    public final String getTransaction() {
        return this.transaction;
    }

    public final StakingOperationType getType() {
        return this.type;
    }

    public final StakingOperationStatus getStatus() {
        return this.status;
    }

    public final String getIssuer() {
        return this.issuer;
    }

    public final String getIssuedAt() {
        return this.issuedAt;
    }

    public final String getSettledAt() {
        return this.settledAt;
    }

    public final String getFailReason() {
        return this.failReason;
    }

    public final StakingOperationCost getAmount() {
        return this.amount;
    }

    public final StakingOperationCost getFee() {
        return this.fee;
    }

    public final Boolean getSafe() {
        return this.safe;
    }

    public final TokenDetailed getApprovedToken() {
        return this.approvedToken;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final String getCreatedAt() {
        if (this.status == StakingOperationStatus.PENDING) {
            return this.issuedAt;
        }
        String str = this.settledAt;
        return str == null ? "" : str;
    }

    public final TransactionType getTransactionType() {
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            return TransactionType.APPROVE_CRYPTO;
        }
        return TransactionType.TRANSFER_CRYPTO;
    }

    public final Status getTransactionStatus() {
        int i = WhenMappings.$EnumSwitchMapping$1[this.status.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return Status.ERROR;
                }
                throw new NoWhenBranchMatchedException();
            }
            return Status.OK;
        }
        return Status.PENDING;
    }

    public final TransactionDirection getTransactionDirection() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3 || i == 4) {
                    return TransactionDirection.f392IN;
                }
                throw new NoWhenBranchMatchedException();
            }
            return TransactionDirection.OUT;
        }
        return TransactionDirection.SELF;
    }

    public final String getTokenTicker() {
        TokenDetailed token;
        String str = null;
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            TokenDetailed tokenDetailed = this.approvedToken;
            if (tokenDetailed != null) {
                str = tokenDetailed.getTicker();
            }
        } else {
            StakingOperationCost stakingOperationCost = this.amount;
            if (stakingOperationCost != null && (token = stakingOperationCost.getToken()) != null) {
                str = token.getTicker();
            }
        }
        return str == null ? "" : str;
    }
}
