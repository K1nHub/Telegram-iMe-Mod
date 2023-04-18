package com.iMe.p031ui.adapter.provider;

import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.p031ui.custom.NetworkTypeView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: HeaderWithNetworkSwitcherProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider$convert$2 */
/* loaded from: classes3.dex */
final class HeaderWithNetworkSwitcherProvider$convert$2 extends Lambda implements Function1<NetworkTypeView, Unit> {
    final /* synthetic */ HeaderItemWithNetworkSwitcher $item;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderWithNetworkSwitcherProvider$convert$2(HeaderItemWithNetworkSwitcher headerItemWithNetworkSwitcher) {
        super(1);
        this.$item = headerItemWithNetworkSwitcher;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NetworkTypeView networkTypeView) {
        invoke2(networkTypeView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NetworkTypeView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setNetworkType(this.$item.getNetworkType());
    }
}
