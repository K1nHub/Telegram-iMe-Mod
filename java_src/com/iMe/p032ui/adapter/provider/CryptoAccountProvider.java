package com.iMe.p032ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.StringExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3316R;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.Cells.CheckBoxCell;
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoAccountProvider */
/* loaded from: classes.dex */
public final class CryptoAccountProvider extends BaseNodeProvider<CryptoAccountItem> {
    private ActionBarMenuItem.ActionBarMenuItemDelegate actionBarMenuItemDelegate;
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (CryptoAccountItem) obj, (List<? extends Object>) list);
    }

    public CryptoAccountProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.CRYPTO_ACCOUNT;
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
    public void convert(BaseViewHolder helper, CryptoAccountItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3316R.C3319id.card_crypto_account, "windowBackgroundWhite");
        int i = C3316R.C3319id.text_account_id;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i, "chat_messagePanelText");
        int i2 = C3316R.C3319id.text_account_name;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, "chats_actionBackground");
        int i3 = C3316R.C3319id.image_copy;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, i3, "dialogIcon"), i3).setText(i2, this.resourceManager.getString(C3316R.string.wallet_home_crypto_account_telegram_id, Long.valueOf(item.getUser().f1642id))).setText(i, StringExtKt.shortened$default(item.getAddress(), 0, 1, null)), C3316R.C3319id.item_more_options, new CryptoAccountProvider$convert$1(this, item)), C3316R.C3319id.image_account_avatar, new CryptoAccountProvider$convert$2(item)), C3316R.C3319id.horizontal_action_buttons, new CryptoAccountProvider$convert$3(item));
    }

    public void convert(BaseViewHolder helper, CryptoAccountItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper.setText(C3316R.C3319id.text_account_id, StringExtKt.shortened$default(item.getAddress(), 0, 1, null)), C3316R.C3319id.item_more_options, new CryptoAccountProvider$convert$4(this, item));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupMenuItems(ActionBarMenuItem actionBarMenuItem, NetworkType networkType, String str) {
        actionBarMenuItem.removeAllSubItems();
        if (networkType == NetworkType.THE_OPEN_NETWORK) {
            int i = IdFabric$Menu.TON_ADDRESS_V3R2;
            CheckBoxCell checkBoxCell = new CheckBoxCell(actionBarMenuItem.getContext(), IdFabric$ViewTypes.TON_ADDRESS_VERSION);
            checkBoxCell.setText(this.resourceManager.getString(C3316R.string.wallet_ton_address_v3r2) + ' ', StringExtKt.shortened(str, 4), true, false);
            Unit unit = Unit.INSTANCE;
            actionBarMenuItem.addSubItem(i, checkBoxCell, AndroidUtilities.m50dp(225), AndroidUtilities.m50dp(50));
        }
        int i2 = IdFabric$Menu.SCAN_ADDRESS;
        int scannerIcon = networkType.getScannerIcon();
        ResourceManager resourceManager = this.resourceManager;
        actionBarMenuItem.addSubItem(i2, scannerIcon, resourceManager.getString(C3316R.string.wallet_transaction_details_action_open_etherscan, resourceManager.getString(networkType.getScannerName())));
    }
}
