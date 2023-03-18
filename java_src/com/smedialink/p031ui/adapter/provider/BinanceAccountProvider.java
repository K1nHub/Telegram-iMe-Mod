package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.pay.BinanceAccountItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
/* compiled from: BinanceAccountProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.BinanceAccountProvider */
/* loaded from: classes3.dex */
public final class BinanceAccountProvider extends BaseNodeProvider<BinanceAccountItem> {
    private ActionBarMenuItem.ActionBarMenuItemDelegate actionBarMenuItemDelegate;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (BinanceAccountItem) obj, (List<? extends Object>) list);
    }

    public BinanceAccountProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.BINANCE_ACCOUNT;
        this.layoutId = C3286R.layout.fork_recycle_item_wallet_account;
    }

    public final ActionBarMenuItem.ActionBarMenuItemDelegate getActionBarMenuItemDelegate() {
        return this.actionBarMenuItemDelegate;
    }

    public final void setActionBarMenuItemDelegate(ActionBarMenuItem.ActionBarMenuItemDelegate actionBarMenuItemDelegate) {
        this.actionBarMenuItemDelegate = actionBarMenuItemDelegate;
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
    public void convert(BaseViewHolder helper, BinanceAccountItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3286R.C3289id.card_crypto_account, "windowBackgroundWhite");
        int i = C3286R.C3289id.text_account_id;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i, "chat_messagePanelText");
        int i2 = C3286R.C3289id.text_account_name;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, "chats_actionBackground");
        int i3 = C3286R.C3289id.image_copy;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, "dialogIcon", i3), i3), C3286R.C3289id.image_verified, item.getInfo().isVerified()).setText(i2, item.getInfo().getEmail()).setText(i, this.resourceManager.getString(C3286R.string.wallet_binance_pay_id, item.getShortId())), C3286R.C3289id.item_more_options, new BinanceAccountProvider$convert$1(this)), C3286R.C3289id.image_account_avatar, BinanceAccountProvider$convert$2.INSTANCE), C3286R.C3289id.horizontal_action_buttons, new BinanceAccountProvider$convert$3(item));
    }

    public void convert(BaseViewHolder helper, BinanceAccountItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(helper.setText(C3286R.C3289id.text_account_id, this.resourceManager.getString(C3286R.string.wallet_binance_pay_id, item.getShortId())).setText(C3286R.C3289id.text_account_name, item.getInfo().getEmail()), C3286R.C3289id.image_account_avatar, BinanceAccountProvider$convert$4.INSTANCE), C3286R.C3289id.horizontal_action_buttons, new BinanceAccountProvider$convert$5(item));
    }
}
