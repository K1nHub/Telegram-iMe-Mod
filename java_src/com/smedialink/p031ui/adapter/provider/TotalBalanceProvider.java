package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.TotalBalanceItem;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: TotalBalanceProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.TotalBalanceProvider */
/* loaded from: classes3.dex */
public final class TotalBalanceProvider extends BaseNodeProvider<TotalBalanceItem> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final int itemViewType;
    private final int layoutId;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TotalBalanceItem) obj, (List<? extends Object>) list);
    }

    public TotalBalanceProvider(CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.itemViewType = IdFabric$ViewTypes.TOTAL_BALANCE;
        this.layoutId = C3286R.layout.fork_recycle_item_wallet_crypto_total_balance;
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
        int i = C3286R.C3289id.text_wallet_crypto_total_balance;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "chat_messagePanelText"), i).setText(i, item.getFormattedBalance(this.cryptoPreferenceHelper.getCryptoHiddenBalance()));
        int i2 = C3286R.C3289id.image_wallet_crypto_eye;
        BaseViewHolder circleRippleBackground = BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(text, i2, "windowBackgroundWhiteGrayText2").setImageResource(i2, this.cryptoPreferenceHelper.getCryptoHiddenBalance() ? C3286R.C3288drawable.fork_wallet_crypto_cipher_eye : C3286R.C3288drawable.fork_filter_icon_eye), i2);
        int i3 = C3286R.C3289id.image_wallet_crypto_tokens_settings;
        BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(circleRippleBackground, "windowBackgroundWhiteGrayText2", i3, C3286R.C3289id.image_wallet_order_tokens), i3);
    }

    public void convert(BaseViewHolder helper, TotalBalanceItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3286R.C3289id.text_wallet_crypto_total_balance, item.getFormattedBalance(this.cryptoPreferenceHelper.getCryptoHiddenBalance()));
    }
}
