package com.smedialink.model.staking;

import org.telegram.messenger.C3286R;
/* compiled from: StakingProgrammeStatus.kt */
/* loaded from: classes3.dex */
public enum StakingProgrammeStatus {
    ACTIVE(C3286R.string.staking_details_status_active, "chat_inDownCall"),
    WITHDRAWAL_AVAILABLE(C3286R.string.staking_details_status_withdrawal_available, "windowBackgroundWhiteBlueText"),
    SHORT_OF_FUNDS(C3286R.string.staking_details_status_short_of_funds, "windowBackgroundWhiteRedText"),
    CLOSED(C3286R.string.staking_details_status_finished, "windowBackgroundWhiteRedText");
    
    private final String colorKey;
    private final int textResId;

    StakingProgrammeStatus(int i, String str) {
        this.textResId = i;
        this.colorKey = str;
    }

    public final int getTextResId() {
        return this.textResId;
    }

    public final String getColorKey() {
        return this.colorKey;
    }
}
