package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.p031ui.custom.HorizontalActionButtonsView;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3419R;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Components.BackupImageView;
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoAccountProvider */
/* loaded from: classes.dex */
public final class CryptoAccountProvider extends BaseNodeProvider<CryptoAccountItem> {
    private final int itemViewType;
    private final int layoutId;
    private Callbacks$Callback1<Integer> onMenuItemClickAction;
    private final ResourceManager resourceManager;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onMenuItemClickAction$lambda$0(Integer num) {
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (CryptoAccountItem) obj, (List<? extends Object>) list);
    }

    public CryptoAccountProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.onMenuItemClickAction = new Callbacks$Callback1() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CryptoAccountProvider.onMenuItemClickAction$lambda$0((Integer) obj);
            }
        };
        this.itemViewType = IdFabric$ViewTypes.CRYPTO_ACCOUNT;
        this.layoutId = C3419R.layout.fork_recycle_item_wallet_account;
    }

    public final Callbacks$Callback1<Integer> getOnMenuItemClickAction() {
        return this.onMenuItemClickAction;
    }

    public final void setOnMenuItemClickAction(Callbacks$Callback1<Integer> callbacks$Callback1) {
        Intrinsics.checkNotNullParameter(callbacks$Callback1, "<set-?>");
        this.onMenuItemClickAction = callbacks$Callback1;
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
    public void convert(BaseViewHolder helper, final CryptoAccountItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3419R.C3422id.card_crypto_account, Theme.key_windowBackgroundWhite);
        int i = C3419R.C3422id.text_account_id;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i, Theme.key_chat_messagePanelText);
        int i2 = C3419R.C3422id.text_account_name;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, Theme.key_chats_actionBackground);
        int i3 = C3419R.C3422id.image_copy;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, i3, Theme.key_dialogIcon), i3).setText(i2, this.resourceManager.getString(C3419R.string.wallet_home_crypto_account_telegram_id, Long.valueOf(item.getUser().f1675id))).setText(i, StringExtKt.shortened$default(item.getAddress(), 0, 1, null)), C3419R.C3422id.item_more_options, new CryptoAccountProvider$convert$1(this, item)), C3419R.C3422id.image_account_avatar, new Function1<BackupImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
                invoke2(backupImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(BackupImageView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setUser(CryptoAccountItem.this.getUser());
            }
        }), C3419R.C3422id.horizontal_action_buttons, new Function1<HorizontalActionButtonsView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HorizontalActionButtonsView horizontalActionButtonsView) {
                invoke2(horizontalActionButtonsView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(HorizontalActionButtonsView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.initButtons(CryptoAccountItem.this.getActions());
            }
        });
    }

    public void convert(BaseViewHolder helper, final CryptoAccountItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(helper.setText(C3419R.C3422id.text_account_id, StringExtKt.shortened$default(item.getAddress(), 0, 1, null)), C3419R.C3422id.item_more_options, new Function1<ActionBarMenuItem, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ActionBarMenuItem actionBarMenuItem) {
                invoke2(actionBarMenuItem);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ActionBarMenuItem applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setIconColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
                ViewExtKt.setCircleRippleBackground(applyForView);
                CryptoAccountProvider.this.setupMenuItems(applyForView, item.getNetworkType(), item.getAddress());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupMenuItems(ActionBarMenuItem actionBarMenuItem, Network network, String str) {
        actionBarMenuItem.removeAllSubItems();
        if (Intrinsics.areEqual(network.getId(), NetworkType.TON)) {
            int i = IdFabric$Menu.TON_ADDRESS_V3R2;
            CheckBoxCell checkBoxCell = new CheckBoxCell(actionBarMenuItem.getContext(), IdFabric$ViewTypes.TON_ADDRESS_VERSION);
            checkBoxCell.setText(this.resourceManager.getString(C3419R.string.wallet_ton_address_v3r2) + ' ', StringExtKt.shortened(str, 4), true, false);
            Unit unit = Unit.INSTANCE;
            actionBarMenuItem.addSubItem(i, checkBoxCell, AndroidUtilities.m72dp(225), AndroidUtilities.m72dp(50));
        }
        actionBarMenuItem.addSubItem(IdFabric$Menu.SCAN_ADDRESS, 0, this.resourceManager.getString(C3419R.string.wallet_transaction_details_action_open_etherscan, network.getExplorer().getName())).setIcon(network.getExplorer().getLogoUrl());
    }
}
