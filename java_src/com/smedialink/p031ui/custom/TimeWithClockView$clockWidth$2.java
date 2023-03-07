package com.smedialink.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: TimeWithClockView.kt */
/* renamed from: com.smedialink.ui.custom.TimeWithClockView$clockWidth$2 */
/* loaded from: classes3.dex */
final class TimeWithClockView$clockWidth$2 extends Lambda implements Function0<Integer> {
    public static final TimeWithClockView$clockWidth$2 INSTANCE = new TimeWithClockView$clockWidth$2();

    TimeWithClockView$clockWidth$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(Theme.dialogs_clockDrawable.getIntrinsicWidth());
    }
}
