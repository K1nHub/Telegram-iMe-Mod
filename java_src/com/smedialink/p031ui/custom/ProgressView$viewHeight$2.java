package com.smedialink.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: ProgressView.kt */
/* renamed from: com.smedialink.ui.custom.ProgressView$viewHeight$2 */
/* loaded from: classes3.dex */
final class ProgressView$viewHeight$2 extends Lambda implements Function0<Integer> {
    public static final ProgressView$viewHeight$2 INSTANCE = new ProgressView$viewHeight$2();

    ProgressView$viewHeight$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m50dp(24));
    }
}
