package com.smedialink.p031ui.pager;

import android.app.Activity;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.p046ui.view.FloatingActionButton;
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.smedialink.ui.pager.TelegramViewPagerFragment$floatingActionButton$2 */
/* loaded from: classes3.dex */
final class TelegramViewPagerFragment$floatingActionButton$2 extends Lambda implements Function0<FloatingActionButton> {
    final /* synthetic */ TelegramViewPagerFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelegramViewPagerFragment$floatingActionButton$2(TelegramViewPagerFragment telegramViewPagerFragment) {
        super(0);
        this.this$0 = telegramViewPagerFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final FloatingActionButton invoke() {
        Activity parentActivity = this.this$0.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        return new FloatingActionButton(parentActivity);
    }
}
