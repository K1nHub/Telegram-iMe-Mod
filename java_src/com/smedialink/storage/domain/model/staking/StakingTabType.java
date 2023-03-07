package com.smedialink.storage.domain.model.staking;

import com.smedialink.storage.R$id;
import com.smedialink.storage.R$string;
/* compiled from: StakingTabType.kt */
/* loaded from: classes3.dex */
public enum StakingTabType {
    ALL(R$string.staking_all, R$id.staking_all, null),
    PARTICIPATED(R$string.staking_participated, R$id.staking_participated, Boolean.TRUE);
    
    private final int fragmentId;
    private final Boolean isParticipated;
    private final int titleResId;

    StakingTabType(int i, int i2, Boolean bool) {
        this.titleResId = i;
        this.fragmentId = i2;
        this.isParticipated = bool;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getFragmentId() {
        return this.fragmentId;
    }

    public final Boolean isParticipated() {
        return this.isParticipated;
    }
}
