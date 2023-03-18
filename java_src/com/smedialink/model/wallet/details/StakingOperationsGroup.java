package com.smedialink.model.wallet.details;

import com.smedialink.storage.domain.model.staking.StakingOperationType;
import org.telegram.messenger.C3286R;
/* compiled from: StakingOperationsGroup.kt */
/* loaded from: classes3.dex */
public enum StakingOperationsGroup {
    ALL(C3286R.C3289id.staking_details_operations_all, C3286R.string.wallet_token_details_transactions_all, null),
    DEPOSIT(C3286R.C3289id.staking_details_operations_deposit, C3286R.string.staking_operation_type_deposit, StakingOperationType.DEPOSIT),
    WITHDRAW(C3286R.C3289id.staking_details_operations_withdraw, C3286R.string.staking_operation_type_withdraw, StakingOperationType.WITHDRAWAL),
    CLAIM(C3286R.C3289id.staking_details_operations_claim, C3286R.string.staking_operation_type_claim, StakingOperationType.CLAIM);
    

    /* renamed from: id */
    private final int f275id;
    private final int nameResId;
    private final StakingOperationType stakingOperationType;

    StakingOperationsGroup(int i, int i2, StakingOperationType stakingOperationType) {
        this.f275id = i;
        this.nameResId = i2;
        this.stakingOperationType = stakingOperationType;
    }

    public final int getId() {
        return this.f275id;
    }

    public final int getNameResId() {
        return this.nameResId;
    }

    public final StakingOperationType getStakingOperationType() {
        return this.stakingOperationType;
    }
}
