package com.smedialink.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
/* compiled from: TimeWithClockView.kt */
/* renamed from: com.smedialink.ui.custom.TimeWithClockView$clockPadding$2 */
/* loaded from: classes3.dex */
final class TimeWithClockView$clockPadding$2 extends Lambda implements Function0<Integer> {
    public static final TimeWithClockView$clockPadding$2 INSTANCE = new TimeWithClockView$clockPadding$2();

    TimeWithClockView$clockPadding$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(AndroidUtilities.m51dp(6.0f));
    }
}
