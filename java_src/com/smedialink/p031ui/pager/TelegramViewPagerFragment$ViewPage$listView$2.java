package com.smedialink.p031ui.pager;

import com.smedialink.p031ui.pager.TelegramViewPagerFragment;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TelegramViewPagerFragment.kt */
/* renamed from: com.smedialink.ui.pager.TelegramViewPagerFragment$ViewPage$listView$2 */
/* loaded from: classes3.dex */
public final class TelegramViewPagerFragment$ViewPage$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ TelegramViewPagerFragment.ViewPage this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TelegramViewPagerFragment$ViewPage$listView$2(TelegramViewPagerFragment.ViewPage viewPage) {
        super(0);
        this.this$0 = viewPage;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
