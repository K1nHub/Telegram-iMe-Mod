package com.smedialink.model.staking;

import com.smedialink.model.common.NoChildNode;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: StakingDashboardItem.kt */
/* loaded from: classes3.dex */
public abstract class StakingDashboardItem extends NoChildNode {
    public /* synthetic */ StakingDashboardItem(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private StakingDashboardItem() {
    }

    /* compiled from: StakingDashboardItem.kt */
    /* loaded from: classes3.dex */
    public static final class Data extends StakingDashboardItem {
        private final float profit;
        private final float staked;

        public final float getStaked() {
            return this.staked;
        }

        public final float getProfit() {
            return this.profit;
        }

        public Data(float f, float f2) {
            super(null);
            this.staked = f;
            this.profit = f2;
        }
    }

    /* compiled from: StakingDashboardItem.kt */
    /* loaded from: classes3.dex */
    public static final class Loading extends StakingDashboardItem {
        public static final Loading INSTANCE = new Loading();

        private Loading() {
            super(null);
        }
    }
}
