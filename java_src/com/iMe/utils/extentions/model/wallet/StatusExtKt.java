package com.iMe.utils.extentions.model.wallet;

import com.iMe.storage.data.network.model.response.base.Status;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StatusExt.kt */
/* loaded from: classes4.dex */
public final class StatusExtKt {

    /* compiled from: StatusExt.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.PENDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.CANCELLED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
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
