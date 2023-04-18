package com.iMe.model.wallet.details;

import com.iMe.storage.domain.model.staking.StakingOperationType;
import org.telegram.messenger.C3242R;
/* compiled from: StakingOperationsGroup.kt */
/* loaded from: classes3.dex */
public enum StakingOperationsGroup {
    ALL(C3242R.C3245id.staking_details_operations_all, C3242R.string.wallet_token_details_transactions_all, null),
    DEPOSIT(C3242R.C3245id.staking_details_operations_deposit, C3242R.string.staking_operation_type_deposit, StakingOperationType.DEPOSIT),
    WITHDRAW(C3242R.C3245id.staking_details_operations_withdraw, C3242R.string.staking_operation_type_withdraw, StakingOperationType.WITHDRAWAL),
    CLAIM(C3242R.C3245id.staking_details_operations_claim, C3242R.string.staking_operation_type_claim, StakingOperationType.CLAIM);
    

    /* renamed from: id */
    private final int f273id;
    private final int nameResId;
    private final StakingOperationType stakingOperationType;

    StakingOperationsGroup(int i, int i2, StakingOperationType stakingOperationType) {
        this.f273id = i;
        this.nameResId = i2;
        this.stakingOperationType = stakingOperationType;
    }

    public final int getId() {
        return this.f273id;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    public final StakingOperationType getStakingOperationType() {
        return this.stakingOperationType;
    }
}
