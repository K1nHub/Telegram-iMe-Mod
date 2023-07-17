package com.iMe.p031ui.adapter.provider;

import android.view.View;
import androidx.core.view.ViewCompat;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.p031ui.custom.NetworkTypeView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: HeaderWithNetworkSwitcherProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider$convert$1 */
/* loaded from: classes.dex */
final class HeaderWithNetworkSwitcherProvider$convert$1 extends Lambda implements Function1<NetworkTypeView, Unit> {
    final /* synthetic */ HeaderItemWithNetworkSwitcher $item;
    final /* synthetic */ HeaderWithNetworkSwitcherProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderWithNetworkSwitcherProvider$convert$1(HeaderItemWithNetworkSwitcher headerItemWithNetworkSwitcher, HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider) {
        super(1);
        this.$item = headerItemWithNetworkSwitcher;
        this.this$0 = headerWithNetworkSwitcherProvider;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(NetworkTypeView networkTypeView) {
        invoke2(networkTypeView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(NetworkTypeView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        final HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider = this.this$0;
        if (ViewCompat.isLaidOut(applyForView) && !applyForView.isLayoutRequested()) {
            Callbacks$Callback onNetworkViewLayoutAction = headerWithNetworkSwitcherProvider.getOnNetworkViewLayoutAction();
            if (onNetworkViewLayoutAction != null) {
                onNetworkViewLayoutAction.invoke();
            }
        } else {
            applyForView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.removeOnLayoutChangeListener(this);
                    Callbacks$Callback onNetworkViewLayoutAction2 = HeaderWithNetworkSwitcherProvider.this.getOnNetworkViewLayoutAction();
                    if (onNetworkViewLayoutAction2 != null) {
                        onNetworkViewLayoutAction2.invoke();
                    }
                }
            });
        }
        applyForView.setNetwork(this.$item.getNetworkType());
    }
}
