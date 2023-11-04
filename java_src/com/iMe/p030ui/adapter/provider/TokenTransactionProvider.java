package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p030ui.custom.TimeWithClockView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TokenTransactionProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TokenTransactionProvider */
/* loaded from: classes3.dex */
public final class TokenTransactionProvider extends BaseNodeProvider<TransactionItem> {
    private float extraPadding;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public TokenTransactionProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.TRANSACTION;
        this.layoutId = C3634R.layout.fork_recycle_item_wallet_transaction;
    }

    public final void setExtraPadding(float f) {
        this.extraPadding = f;
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
    public void convert(BaseViewHolder helper, final TransactionItem item) {
        BaseViewHolder padding;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3634R.C3637id.linear_root;
        BaseViewHolder rippleForeground = BaseQuickAdapterExtKt.setRippleForeground(helper, i, false);
        int i2 = C3634R.C3637id.text_date;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(rippleForeground, i2, Theme.key_chats_date);
        int i3 = C3634R.C3637id.text_amount;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_chats_name);
        int i4 = C3634R.C3637id.text_status;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i4, item.getTransactionStatusColorKey());
        int i5 = C3634R.C3637id.text_transaction_type_title;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i5, Theme.key_chats_message);
        int i6 = C3634R.C3637id.view_divider;
        BaseNodeAdapter<TransactionItem> adapter = getAdapter();
        Intrinsics.checkNotNull(adapter);
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setVisibleElseGone(themedTextColor4, i6, !RecycleViewExtKt.isLastItem(helper, adapter)).setImageResource(C3634R.C3637id.image_transaction_type_icon, item.getTransactionIcon()), i3);
        float f = this.extraPadding;
        padding = BaseQuickAdapterExtKt.setPadding(mediumTypeface, i, (r13 & 2) != 0 ? 0.0f : f, (r13 & 4) != 0 ? 0.0f : BitmapDescriptorFactory.HUE_RED, (r13 & 8) != 0 ? 0.0f : f, (r13 & 16) != 0 ? 0.0f : BitmapDescriptorFactory.HUE_RED);
        BaseQuickAdapterExtKt.applyForView(padding.setText(i4, item.getTransactionStatus(this.resourceManager)).setText(i3, item.getAmount(this.resourceManager)).setText(i5, item.getTransactionTitle(this.resourceManager)), i2, new Function1<TimeWithClockView, Unit>() { // from class: com.iMe.ui.adapter.provider.TokenTransactionProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TimeWithClockView timeWithClockView) {
                invoke2(timeWithClockView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(TimeWithClockView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setTime(TransactionItem.this);
            }
        });
    }
}
