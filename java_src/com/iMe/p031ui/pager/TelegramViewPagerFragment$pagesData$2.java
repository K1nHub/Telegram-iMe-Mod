package com.iMe.p031ui.pager;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.iMe.ui.pager.TelegramViewPagerFragment$pagesData$2 */
/* loaded from: classes3.dex */
final class TelegramViewPagerFragment$pagesData$2 extends Lambda implements Function0<ViewPageData[]> {
    final /* synthetic */ TelegramViewPagerFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelegramViewPagerFragment$pagesData$2(TelegramViewPagerFragment telegramViewPagerFragment) {
        super(0);
        this.this$0 = telegramViewPagerFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ViewPageData[] invoke() {
        return this.this$0.initPageData();
    }
}
