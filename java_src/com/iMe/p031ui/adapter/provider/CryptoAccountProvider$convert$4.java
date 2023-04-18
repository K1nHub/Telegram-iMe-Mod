package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.home.CryptoAccountItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$4 */
/* loaded from: classes3.dex */
public final class CryptoAccountProvider$convert$4 extends Lambda implements Function1<ActionBarMenuItem, Unit> {
    final /* synthetic */ CryptoAccountItem $item;
    final /* synthetic */ CryptoAccountProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoAccountProvider$convert$4(CryptoAccountProvider cryptoAccountProvider, CryptoAccountItem cryptoAccountItem) {
        super(1);
        this.this$0 = cryptoAccountProvider;
        this.$item = cryptoAccountItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(ActionBarMenuItem actionBarMenuItem) {
        invoke2(actionBarMenuItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(ActionBarMenuItem applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        this.this$0.setupMenuItems(applyForView, this.$item.getNetworkType(), this.$item.getAddress());
    }
}
