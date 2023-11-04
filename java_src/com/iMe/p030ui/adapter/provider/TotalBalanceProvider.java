package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.TotalBalanceItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TotalBalanceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TotalBalanceProvider */
/* loaded from: classes3.dex */
public final class TotalBalanceProvider extends BaseNodeProvider<TotalBalanceItem> {
    private final int itemViewType = IdFabric$ViewTypes.TOTAL_BALANCE;
    private final int layoutId = C3634R.layout.fork_recycle_item_wallet_crypto_total_balance;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TotalBalanceItem) obj, (List<? extends Object>) list);
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
    public void convert(BaseViewHolder helper, TotalBalanceItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3634R.C3637id.text_wallet_crypto_total_balance;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, Theme.key_chat_messagePanelText), i).setText(i, item.getBalanceText());
        int i2 = C3634R.C3637id.image_wallet_crypto_eye;
        int i3 = Theme.key_windowBackgroundWhiteGrayText2;
        BaseViewHolder circleRippleBackground = BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(text, i2, i3).setImageResource(i2, item.isBalanceHidden() ? C3634R.C3636drawable.fork_wallet_crypto_cipher_eye : C3634R.C3636drawable.fork_filter_icon_eye), i2);
        int i4 = C3634R.C3637id.image_wallet_crypto_tokens_settings;
        int i5 = C3634R.C3637id.image_wallet_order_tokens;
        BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(circleRippleBackground, i3, i4, i5), i4), i5);
    }

    public void convert(BaseViewHolder helper, TotalBalanceItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3634R.C3637id.text_wallet_crypto_total_balance, item.getBalanceText()).setImageResource(C3634R.C3637id.image_wallet_crypto_eye, item.isBalanceHidden() ? C3634R.C3636drawable.fork_wallet_crypto_cipher_eye : C3634R.C3636drawable.fork_filter_icon_eye);
    }
}
