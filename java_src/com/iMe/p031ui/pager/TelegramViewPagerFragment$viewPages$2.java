package com.iMe.p031ui.pager;

import com.iMe.p031ui.pager.TelegramViewPagerFragment;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.iMe.ui.pager.TelegramViewPagerFragment$viewPages$2 */
/* loaded from: classes3.dex */
public final class TelegramViewPagerFragment$viewPages$2 extends Lambda implements Function0<TelegramViewPagerFragment.ViewPage[]> {
    final /* synthetic */ TelegramViewPagerFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelegramViewPagerFragment$viewPages$2(TelegramViewPagerFragment telegramViewPagerFragment) {
        super(0);
        this.this$0 = telegramViewPagerFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final TelegramViewPagerFragment.ViewPage[] invoke() {
        TelegramViewPagerFragment.ViewPage[] initPager;
        initPager = this.this$0.initPager();
        return initPager;
    }
}
