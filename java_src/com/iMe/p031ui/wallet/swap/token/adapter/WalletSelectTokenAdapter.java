package com.iMe.p031ui.wallet.swap.token.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.select.SelectableTokenBalance;
import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: WalletSelectTokenAdapter.kt */
/* renamed from: com.iMe.ui.wallet.swap.token.adapter.WalletSelectTokenAdapter */
/* loaded from: classes4.dex */
public final class WalletSelectTokenAdapter extends BaseQuickAdapter<SelectableTokenItem, BaseViewHolder> {
    public WalletSelectTokenAdapter() {
        super(C3295R.layout.fork_recycle_item_wallet_select_token, null, 2, null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, SelectableTokenItem selectableTokenItem, List list) {
        convert2(baseViewHolder, selectableTokenItem, (List<? extends Object>) list);
    }

    /* renamed from: convert  reason: avoid collision after fix types in other method */
    protected void convert2(BaseViewHolder holder, SelectableTokenItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        int i = C3295R.C3298id.text_token_balance;
        SelectableTokenBalance balance = item.getBalance();
        BaseViewHolder text = holder.setText(i, balance != null ? balance.getTotal() : null).setText(C3295R.C3298id.text_token_title, item.getToken().getName());
        int i2 = C3295R.C3298id.text_token_balance_in_dollars;
        SelectableTokenBalance balance2 = item.getBalance();
        BaseQuickAdapterExtKt.applyForView(text.setText(i2, balance2 != null ? balance2.getTotalInDollars() : null).setGone(i2, !item.isWithBalance()).setGone(i, !item.isWithBalance()), C3295R.C3298id.text_token_ticker, new WalletSelectTokenAdapter$convert$1(item));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, SelectableTokenItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3295R.C3298id.constraint_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3295R.C3298id.text_token_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i2, Theme.key_chats_actionBackground);
        int i3 = C3295R.C3298id.text_token_balance_in_dollars;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_windowBackgroundWhiteGrayText2);
        int i4 = C3295R.C3298id.text_token_balance;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i4, Theme.key_chat_messagePanelText), i4, i3);
        SelectableTokenBalance balance = item.getBalance();
        BaseViewHolder text = mediumTypeface.setText(i4, balance != null ? balance.getTotal() : null).setText(i2, item.getToken().getName());
        SelectableTokenBalance balance2 = item.getBalance();
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setVisibleElseGone(text.setText(i3, balance2 != null ? balance2.getTotalInDollars() : null), i3, item.isWithBalance()), i4, item.isWithBalance()), C3295R.C3298id.text_token_ticker, new WalletSelectTokenAdapter$convert$2(item)), C3295R.C3298id.image_token_logo, new WalletSelectTokenAdapter$convert$3(item));
    }
}
