package com.iMe.p031ui.catalog.tabs.user_channels;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CatalogUserChannelsFragment.kt */
/* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsFragment$setupListeners$1 */
/* loaded from: classes.dex */
public final class CatalogUserChannelsFragment$setupListeners$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CatalogUserChannelsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogUserChannelsFragment$setupListeners$1(CatalogUserChannelsFragment catalogUserChannelsFragment) {
        super(1);
        this.this$0 = catalogUserChannelsFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        CatalogUserChannelsPresenter presenter;
        Intrinsics.checkNotNullParameter(it, "it");
        presenter = this.this$0.getPresenter();
        presenter.onAddChannelClick();
    }
}
