package com.iMe.p031ui.pager;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.ScrollSlidingTextTabStrip;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.iMe.ui.pager.TelegramViewPagerFragment$scrollSlidingTextTabStrip$2 */
/* loaded from: classes3.dex */
public final class TelegramViewPagerFragment$scrollSlidingTextTabStrip$2 extends Lambda implements Function0<ScrollSlidingTextTabStrip> {
    final /* synthetic */ TelegramViewPagerFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelegramViewPagerFragment$scrollSlidingTextTabStrip$2(TelegramViewPagerFragment telegramViewPagerFragment) {
        super(0);
        this.this$0 = telegramViewPagerFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ScrollSlidingTextTabStrip invoke() {
        ScrollSlidingTextTabStrip initTabLayout;
        initTabLayout = this.this$0.initTabLayout();
        return initTabLayout;
    }
}
