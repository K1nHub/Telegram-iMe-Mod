package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.domain.model.staking.StakingOperationStatus;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingOperationStatusExt.kt */
/* loaded from: classes3.dex */
public final class StakingOperationStatusExtKt {

    /* compiled from: StakingOperationStatusExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[StakingOperationStatus.values().length];
            try {
                iArr[StakingOperationStatus.CONFIRMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StakingOperationStatus.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StakingOperationStatus.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String color(StakingOperationStatus stakingOperationStatus) {
        Intrinsics.checkNotNullParameter(stakingOperationStatus, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[stakingOperationStatus.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return "windowBackgroundWhiteGrayText2";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "statisticChartLine_red";
        }
        return "statisticChartLine_green";
    }
}
