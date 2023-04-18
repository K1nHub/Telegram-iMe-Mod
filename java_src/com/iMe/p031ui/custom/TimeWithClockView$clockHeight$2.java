package com.iMe.p031ui.custom;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: TimeWithClockView.kt */
/* renamed from: com.iMe.ui.custom.TimeWithClockView$clockHeight$2 */
/* loaded from: classes3.dex */
final class TimeWithClockView$clockHeight$2 extends Lambda implements Function0<Integer> {
    public static final TimeWithClockView$clockHeight$2 INSTANCE = new TimeWithClockView$clockHeight$2();

    TimeWithClockView$clockHeight$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(Theme.dialogs_clockDrawable.getIntrinsicHeight());
    }
}
