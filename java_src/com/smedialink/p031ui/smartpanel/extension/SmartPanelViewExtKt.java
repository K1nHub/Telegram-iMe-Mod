package com.smedialink.p031ui.smartpanel.extension;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.p031ui.smartpanel.SmartBotsView;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
/* compiled from: SmartPanelViewExt.kt */
/* renamed from: com.smedialink.ui.smartpanel.extension.SmartPanelViewExtKt */
/* loaded from: classes3.dex */
public final class SmartPanelViewExtKt {
    public static final int floatToDp(SmartBotsView smartBotsView, float f) {
        int roundToInt;
        Intrinsics.checkNotNullParameter(smartBotsView, "<this>");
        float f2 = smartBotsView.getContext().getResources().getDisplayMetrics().density;
        if (f == BitmapDescriptorFactory.HUE_RED) {
            return 0;
        }
        roundToInt = MathKt__MathJVMKt.roundToInt(Math.ceil(f2 * f));
        return roundToInt;
    }
}
