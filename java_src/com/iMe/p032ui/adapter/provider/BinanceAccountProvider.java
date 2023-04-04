package com.iMe.p032ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
/* compiled from: BinanceAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BinanceAccountProvider */
/* loaded from: classes.dex */
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
        this.layoutId = C3316R.layout.fork_recycle_item_wallet_account;
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
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3316R.C3319id.card_crypto_account, "windowBackgroundWhite");
        int i = C3316R.C3319id.text_account_id;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i, "chat_messagePanelText");
        int i2 = C3316R.C3319id.text_account_name;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, "chats_actionBackground");
        int i3 = C3316R.C3319id.image_copy;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, "dialogIcon", i3), i3), C3316R.C3319id.image_verified, item.getInfo().isVerified()).setText(i2, item.getInfo().getEmail()).setText(i, this.resourceManager.getString(C3316R.string.wallet_binance_pay_id, item.getShortId())), C3316R.C3319id.item_more_options, new BinanceAccountProvider$convert$1(this)), C3316R.C3319id.image_account_avatar, BinanceAccountProvider$convert$2.INSTANCE), C3316R.C3319id.horizontal_action_buttons, new BinanceAccountProvider$convert$3(item));
    }

    public void convert(BaseViewHolder helper, BinanceAccountItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(helper.setText(C3316R.C3319id.text_account_id, this.resourceManager.getString(C3316R.string.wallet_binance_pay_id, item.getShortId())).setText(C3316R.C3319id.text_account_name, item.getInfo().getEmail()), C3316R.C3319id.image_account_avatar, BinanceAccountProvider$convert$4.INSTANCE), C3316R.C3319id.horizontal_action_buttons, new BinanceAccountProvider$convert$5(item));
    }
}
