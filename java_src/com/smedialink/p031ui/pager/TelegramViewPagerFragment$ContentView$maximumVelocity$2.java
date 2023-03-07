package com.smedialink.p031ui.pager;

import android.view.ViewConfiguration;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.smedialink.ui.pager.TelegramViewPagerFragment$ContentView$maximumVelocity$2 */
/* loaded from: classes3.dex */
final class TelegramViewPagerFragment$ContentView$maximumVelocity$2 extends Lambda implements Function0<Integer> {
    final /* synthetic */ TelegramViewPagerFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelegramViewPagerFragment$ContentView$maximumVelocity$2(TelegramViewPagerFragment telegramViewPagerFragment) {
        super(0);
        this.this$0 = telegramViewPagerFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Integer invoke() {
        return Integer.valueOf(ViewConfiguration.get(this.this$0.getParentActivity()).getScaledMaximumFlingVelocity());
    }
}
