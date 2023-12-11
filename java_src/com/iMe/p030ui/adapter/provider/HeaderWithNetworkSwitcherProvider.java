package com.iMe.p030ui.adapter.provider;

import android.view.View;
import androidx.core.view.ViewCompat;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.home.HeaderItemWithNetworkSwitcher;
import com.iMe.p030ui.custom.NetworkTypeView;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: HeaderWithNetworkSwitcherProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider */
/* loaded from: classes3.dex */
public final class HeaderWithNetworkSwitcherProvider extends BaseNodeProvider<HeaderItemWithNetworkSwitcher> {
    private final int itemViewType = IdFabric$ViewTypes.HEADER_CELL_WITH_NETWORK;
    private final int layoutId = C3632R.layout.fork_recycle_item_wallet_dashboard_header_with_network_switcher;
    private Callbacks$Callback onNetworkViewLayoutAction;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (HeaderItemWithNetworkSwitcher) obj, (List<? extends Object>) list);
    }

    public final Callbacks$Callback getOnNetworkViewLayoutAction() {
        return this.onNetworkViewLayoutAction;
    }

    public final void setOnNetworkViewLayoutAction(Callbacks$Callback callbacks$Callback) {
        this.onNetworkViewLayoutAction = callbacks$Callback;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final HeaderItemWithNetworkSwitcher item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.text_wallet_header;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, Theme.key_windowBackgroundWhiteGrayText2), i).setText(i, item.getTitle());
        int i2 = C3632R.C3635id.network_type_view;
        BaseQuickAdapterExtKt.applyForView(text.setVisible(i2, item.isNetworkSwitcherVisible()), i2, new Function1<NetworkTypeView, Unit>() { // from class: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NetworkTypeView networkTypeView) {
                invoke2(networkTypeView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(NetworkTypeView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                final HeaderWithNetworkSwitcherProvider headerWithNetworkSwitcherProvider = this;
                if (ViewCompat.isLaidOut(applyForView) && !applyForView.isLayoutRequested()) {
                    Callbacks$Callback onNetworkViewLayoutAction = headerWithNetworkSwitcherProvider.getOnNetworkViewLayoutAction();
                    if (onNetworkViewLayoutAction != null) {
                        onNetworkViewLayoutAction.invoke();
                    }
                } else {
                    applyForView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider$convert$1$invoke$$inlined$doOnLayout$1
                        @Override // android.view.View.OnLayoutChangeListener
                        public void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                            Intrinsics.checkNotNullParameter(view, "view");
                            view.removeOnLayoutChangeListener(this);
                            Callbacks$Callback onNetworkViewLayoutAction2 = HeaderWithNetworkSwitcherProvider.this.getOnNetworkViewLayoutAction();
                            if (onNetworkViewLayoutAction2 != null) {
                                onNetworkViewLayoutAction2.invoke();
                            }
                        }
                    });
                }
                applyForView.setNetwork(HeaderItemWithNetworkSwitcher.this.getNetworkItem());
            }
        });
    }

    public void convert(BaseViewHolder helper, final HeaderItemWithNetworkSwitcher item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseViewHolder text = helper.setText(C3632R.C3635id.text_wallet_header, item.getTitle());
        int i = C3632R.C3635id.network_type_view;
        BaseQuickAdapterExtKt.applyForView(text.setVisible(i, item.isNetworkSwitcherVisible()), i, new Function1<NetworkTypeView, Unit>() { // from class: com.iMe.ui.adapter.provider.HeaderWithNetworkSwitcherProvider$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NetworkTypeView networkTypeView) {
                invoke2(networkTypeView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(NetworkTypeView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setNetwork(HeaderItemWithNetworkSwitcher.this.getNetworkItem());
            }
        });
    }
}
