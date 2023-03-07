package com.smedialink.utils.extentions.model.wallet;

import com.smedialink.storage.data.network.model.response.base.Status;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StatusExt.kt */
/* loaded from: classes3.dex */
public final class StatusExtKt {

    /* compiled from: StatusExt.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            iArr[Status.OK.ordinal()] = 1;
            iArr[Status.ERROR.ordinal()] = 2;
            iArr[Status.PENDING.ordinal()] = 3;
            iArr[Status.CANCELLED.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final String color(Status status) {
        Intrinsics.checkNotNullParameter(status, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[status.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i == 4) {
                        return "statisticChartLine_red";
                    }
                    throw new NoWhenBranchMatchedException();
                }
                return "windowBackgroundWhiteGrayText2";
            }
            return "statisticChartLine_red";
        }
        return "statisticChartLine_green";
    }
}
