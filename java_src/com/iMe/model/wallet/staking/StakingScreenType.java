package com.iMe.model.wallet.staking;

import org.telegram.messenger.C3634R;
/* compiled from: StakingScreenType.kt */
/* loaded from: classes3.dex */
public enum StakingScreenType {
    STAKING_REPLENISH_SCREEN_TYPE(C3634R.string.wallet_operation_deposit, C3634R.string.staking_replenishment_confirm_title, C3634R.string.staking_replenishment_confirm_description, C3634R.raw.fork_staking_replenish, C3634R.string.staking_replenishment_description, C3634R.string.staking_replenishment_title),
    STAKING_PROFIT_SCREEN_TYPE(C3634R.string.staking_profit_get, C3634R.string.staking_profit_confirm_title, C3634R.string.staking_profit_confirm_description, C3634R.raw.fork_staking_profit, C3634R.string.staking_profit_description, C3634R.string.staking_profit_title),
    STAKING_WITHDRAW_SCREEN_TYPE(C3634R.string.staking_details_withdraw, C3634R.string.staking_withdraw_confirm_title, C3634R.string.staking_withdraw_confirm_description, C3634R.raw.fork_staking_withdraw, C3634R.string.staking_withdraw_description, C3634R.string.staking_withdraw_title);
    
    private final int actionBarTitleTextId;
    private final int animationId;
    private final int buttonTextId;
    private final int confirmMessageTextId;
    private final int confirmTitleTextId;
    private final int headerTextId;

    StakingScreenType(int i, int i2, int i3, int i4, int i5, int i6) {
        this.buttonTextId = i;
        this.confirmTitleTextId = i2;
        this.confirmMessageTextId = i3;
        this.animationId = i4;
        this.headerTextId = i5;
        this.actionBarTitleTextId = i6;
    }

    public final int getButtonTextId() {
        return this.buttonTextId;
    }

    public final int getConfirmTitleTextId() {
        return this.confirmTitleTextId;
    }

    public final int getConfirmMessageTextId() {
        return this.confirmMessageTextId;
    }

    public final int getAnimationId() {
        return this.animationId;
    }

    public final int getHeaderTextId() {
        return this.headerTextId;
    }

    public final int getActionBarTitleTextId() {
        return this.actionBarTitleTextId;
    }
}
