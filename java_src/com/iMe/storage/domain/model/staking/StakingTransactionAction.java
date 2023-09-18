package com.iMe.storage.domain.model.staking;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTransactionAction.kt */
/* loaded from: classes4.dex */
public final class StakingTransactionAction {
    private final StakingTransactionGas gas;
    private final StakingTransactionArgs transaction;

    public static /* synthetic */ StakingTransactionAction copy$default(StakingTransactionAction stakingTransactionAction, StakingTransactionArgs stakingTransactionArgs, StakingTransactionGas stakingTransactionGas, int i, Object obj) {
        if ((i & 1) != 0) {
            stakingTransactionArgs = stakingTransactionAction.transaction;
        }
        if ((i & 2) != 0) {
            stakingTransactionGas = stakingTransactionAction.gas;
        }
        return stakingTransactionAction.copy(stakingTransactionArgs, stakingTransactionGas);
    }

    public final StakingTransactionArgs component1() {
        return this.transaction;
    }

    public final StakingTransactionGas component2() {
        return this.gas;
    }

    public final StakingTransactionAction copy(StakingTransactionArgs transaction, StakingTransactionGas gas) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(gas, "gas");
        return new StakingTransactionAction(transaction, gas);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingTransactionAction) {
            StakingTransactionAction stakingTransactionAction = (StakingTransactionAction) obj;
            return Intrinsics.areEqual(this.transaction, stakingTransactionAction.transaction) && Intrinsics.areEqual(this.gas, stakingTransactionAction.gas);
        }
        return false;
    }

    public int hashCode() {
        return (this.transaction.hashCode() * 31) + this.gas.hashCode();
    }

    public String toString() {
        return "StakingTransactionAction(transaction=" + this.transaction + ", gas=" + this.gas + ')';
    }

    public StakingTransactionAction(StakingTransactionArgs transaction, StakingTransactionGas gas) {
        Intrinsics.checkNotNullParameter(transaction, "transaction");
        Intrinsics.checkNotNullParameter(gas, "gas");
        this.transaction = transaction;
        this.gas = gas;
    }

    public final StakingTransactionArgs getTransaction() {
        return this.transaction;
    }

    public final StakingTransactionGas getGas() {
        return this.gas;
    }
}
