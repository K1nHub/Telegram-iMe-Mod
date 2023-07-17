package com.iMe.model.wallet.transaction;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.model.common.NoChildNode;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.storage.domain.model.staking.StakingOperationCost;
import com.iMe.storage.domain.model.staking.StakingOperationStatus;
import com.iMe.storage.domain.model.staking.StakingOperationType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.model.wallet.StakingOperationStatusExtKt;
import com.iMe.utils.formatter.BalanceFormatter;
import com.iMe.utils.formatter.DateFormatter;
import java.math.BigDecimal;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
/* compiled from: StakingOperationItem.kt */
/* loaded from: classes3.dex */
public final class StakingOperationItem extends NoChildNode {
    private final BigDecimal amount;
    private final String createdAt;
    private final StakingOperationCost fee;

    /* renamed from: id */
    private final long f368id;
    private final boolean isBadgeVisible;
    private final boolean safe;
    private final StakingOperationStatus status;
    private final TokenItem token;
    private final String tokenSymbol;
    private final String txHash;
    private final StakingOperationType type;

    /* compiled from: StakingOperationItem.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

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
        }
    }

    public final long component1() {
        return this.f368id;
    }

    public final boolean component10() {
        return this.isBadgeVisible;
    }

    public final TokenItem component11() {
        return this.token;
    }

    public final BigDecimal component2() {
        return this.amount;
    }

    public final String component3() {
        return this.tokenSymbol;
    }

    public final StakingOperationType component4() {
        return this.type;
    }

    public final StakingOperationStatus component5() {
        return this.status;
    }

    public final String component6() {
        return this.createdAt;
    }

    public final String component7() {
        return this.txHash;
    }

    public final StakingOperationCost component8() {
        return this.fee;
    }

    public final boolean component9() {
        return this.safe;
    }

    public final StakingOperationItem copy(long j, BigDecimal amount, String tokenSymbol, StakingOperationType type, StakingOperationStatus status, String createdAt, String txHash, StakingOperationCost stakingOperationCost, boolean z, boolean z2, TokenItem token) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tokenSymbol, "tokenSymbol");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Intrinsics.checkNotNullParameter(token, "token");
        return new StakingOperationItem(j, amount, tokenSymbol, type, status, createdAt, txHash, stakingOperationCost, z, z2, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingOperationItem) {
            StakingOperationItem stakingOperationItem = (StakingOperationItem) obj;
            return this.f368id == stakingOperationItem.f368id && Intrinsics.areEqual(this.amount, stakingOperationItem.amount) && Intrinsics.areEqual(this.tokenSymbol, stakingOperationItem.tokenSymbol) && this.type == stakingOperationItem.type && this.status == stakingOperationItem.status && Intrinsics.areEqual(this.createdAt, stakingOperationItem.createdAt) && Intrinsics.areEqual(this.txHash, stakingOperationItem.txHash) && Intrinsics.areEqual(this.fee, stakingOperationItem.fee) && this.safe == stakingOperationItem.safe && this.isBadgeVisible == stakingOperationItem.isBadgeVisible && Intrinsics.areEqual(this.token, stakingOperationItem.token);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m706m = ((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f368id) * 31) + this.amount.hashCode()) * 31) + this.tokenSymbol.hashCode()) * 31) + this.type.hashCode()) * 31) + this.status.hashCode()) * 31) + this.createdAt.hashCode()) * 31) + this.txHash.hashCode()) * 31;
        StakingOperationCost stakingOperationCost = this.fee;
        int hashCode = (m706m + (stakingOperationCost == null ? 0 : stakingOperationCost.hashCode())) * 31;
        boolean z = this.safe;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isBadgeVisible;
        return ((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "StakingOperationItem(id=" + this.f368id + ", amount=" + this.amount + ", tokenSymbol=" + this.tokenSymbol + ", type=" + this.type + ", status=" + this.status + ", createdAt=" + this.createdAt + ", txHash=" + this.txHash + ", fee=" + this.fee + ", safe=" + this.safe + ", isBadgeVisible=" + this.isBadgeVisible + ", token=" + this.token + ')';
    }

    public final long getId() {
        return this.f368id;
    }

    public final BigDecimal getAmount() {
        return this.amount;
    }

    public final String getTokenSymbol() {
        return this.tokenSymbol;
    }

    public final StakingOperationType getType() {
        return this.type;
    }

    public final StakingOperationStatus getStatus() {
        return this.status;
    }

    public final String getCreatedAt() {
        return this.createdAt;
    }

    public final String getTxHash() {
        return this.txHash;
    }

    public final StakingOperationCost getFee() {
        return this.fee;
    }

    public final boolean getSafe() {
        return this.safe;
    }

    public final boolean isBadgeVisible() {
        return this.isBadgeVisible;
    }

    public final TokenItem getToken() {
        return this.token;
    }

    public StakingOperationItem(long j, BigDecimal amount, String tokenSymbol, StakingOperationType type, StakingOperationStatus status, String createdAt, String txHash, StakingOperationCost stakingOperationCost, boolean z, boolean z2, TokenItem token) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(tokenSymbol, "tokenSymbol");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        Intrinsics.checkNotNullParameter(token, "token");
        this.f368id = j;
        this.amount = amount;
        this.tokenSymbol = tokenSymbol;
        this.type = type;
        this.status = status;
        this.createdAt = createdAt;
        this.txHash = txHash;
        this.fee = stakingOperationCost;
        this.safe = z;
        this.isBadgeVisible = z2;
        this.token = token;
    }

    public final String getTransactionTitle(ResourceManager resourceManager) {
        int i;
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i2 == 1) {
            i = C3417R.string.staking_operation_type_approval;
        } else if (i2 == 2) {
            i = C3417R.string.staking_operation_type_deposit;
        } else if (i2 == 3) {
            i = this.safe ? C3417R.string.staking_operation_type_withdrawal_request : C3417R.string.staking_operation_type_immediate_withdrawal;
        } else if (i2 != 4) {
            throw new NoWhenBranchMatchedException();
        } else {
            i = C3417R.string.staking_operation_type_claim;
        }
        return resourceManager.getString(i);
    }

    public final String getStatusText(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        return resourceManager.getString(this.status.getTitleResId());
    }

    public final int getStatusColor() {
        return StakingOperationStatusExtKt.getColorKey(this.status);
    }

    public final int getIcon() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return C3417R.C3419drawable.fork_ic_transaction_receive;
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return C3417R.C3419drawable.fork_ic_transaction_staking_withdraw;
            }
            return C3417R.C3419drawable.fork_ic_transaction_sent;
        }
        return C3417R.C3419drawable.fork_ic_transaction_approve;
    }

    public final String getTransactionTimeText() {
        return StringExtKt.formatISODate(this.createdAt, DateFormatter.DateType.ONLY_TIME);
    }

    public final String getAmount(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        if (WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()] == 1) {
            return resourceManager.getString(C3417R.string.wallet_transactions_type_approve_title, this.token.getTicker());
        }
        return getSymbol() + BalanceFormatter.formatBalance(this.amount, Integer.valueOf(this.token.getDecimals())) + ' ' + this.token.getTicker();
    }

    private final String getSymbol() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.type.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3 || i == 4) {
                    return "+";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "-";
        }
        return "";
    }
}
