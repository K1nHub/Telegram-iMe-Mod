package com.iMe.p030ui.adapter.provider;

import android.view.View;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$Menu;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.home.CryptoAccountItem;
import com.iMe.p030ui.custom.HorizontalActionButtonsView;
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
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.CheckBoxCell;
import org.telegram.p043ui.Components.BackupImageView;
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoAccountProvider */
/* loaded from: classes3.dex */
public final class CryptoAccountProvider extends BaseNodeProvider<CryptoAccountItem> {
    private final int itemViewType;
    private final int layoutId;
    private Callbacks$Callback1<String> onAddressClickAction;
    private Callbacks$Callback1<Integer> onMenuItemClickAction;
    private final ResourceManager resourceManager;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAddressClickAction$lambda$1(String str) {
    }

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
        this.onMenuItemClickAction = new Callbacks$Callback1() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CryptoAccountProvider.onMenuItemClickAction$lambda$0((Integer) obj);
            }
        };
        this.onAddressClickAction = new Callbacks$Callback1() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback1
            public final void invoke(Object obj) {
                CryptoAccountProvider.onAddressClickAction$lambda$1((String) obj);
            }
        };
        this.itemViewType = IdFabric$ViewTypes.CRYPTO_ACCOUNT;
        this.layoutId = C3632R.layout.fork_recycle_item_wallet_account;
    }

    public final void setOnMenuItemClickAction(Callbacks$Callback1<Integer> callbacks$Callback1) {
        Intrinsics.checkNotNullParameter(callbacks$Callback1, "<set-?>");
        this.onMenuItemClickAction = callbacks$Callback1;
    }

    public final Callbacks$Callback1<String> getOnAddressClickAction() {
        return this.onAddressClickAction;
    }

    public final void setOnAddressClickAction(Callbacks$Callback1<String> callbacks$Callback1) {
        Intrinsics.checkNotNullParameter(callbacks$Callback1, "<set-?>");
        this.onAddressClickAction = callbacks$Callback1;
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
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3632R.C3635id.card_crypto_account, Theme.key_windowBackgroundWhite);
        int i = C3632R.C3635id.text_account_id;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i, Theme.key_windowBackgroundWhiteBlueText);
        int i2 = C3632R.C3635id.text_account_name;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, Theme.key_windowBackgroundWhiteBlackText).setText(i2, item.getAccountTitleText(this.resourceManager)).setText(i, StringExtKt.shortened(item.getAddress(), 7)), i, !Intrinsics.areEqual(item.getNetworkItem(), NetworkItem.All.INSTANCE)), i, new CryptoAccountProvider$convert$1(this, item)), C3632R.C3635id.item_more_options, new Function1<ActionBarMenuItem, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$2
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
                NetworkItem networkItem = CryptoAccountItem.this.getNetworkItem();
                if (networkItem instanceof NetworkItem.All) {
                    ViewExtKt.gone$default(applyForView, false, 1, null);
                } else if (networkItem instanceof NetworkItem.Crypto) {
                    this.setupMenuItem(applyForView, (NetworkItem.Crypto) CryptoAccountItem.this.getNetworkItem(), CryptoAccountItem.this.getAddress());
                }
            }
        }), C3632R.C3635id.image_account_avatar, new Function1<BackupImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$3
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
        }), C3632R.C3635id.horizontal_action_buttons, new Function1<HorizontalActionButtonsView, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$4
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
        BaseQuickAdapterExtKt.applyForView(helper.setText(C3632R.C3635id.text_account_id, StringExtKt.shortened(item.getAddress(), 7)), C3632R.C3635id.item_more_options, new Function1<ActionBarMenuItem, Unit>() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$5
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
                NetworkItem networkItem = CryptoAccountItem.this.getNetworkItem();
                if (networkItem instanceof NetworkItem.All) {
                    ViewExtKt.gone$default(applyForView, false, 1, null);
                } else if (networkItem instanceof NetworkItem.Crypto) {
                    ViewExtKt.visible$default(applyForView, false, 1, null);
                    applyForView.setIconColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
                    ViewExtKt.setCircleRippleBackground(applyForView);
                    this.setupMenuItems(applyForView, (NetworkItem.Crypto) CryptoAccountItem.this.getNetworkItem(), CryptoAccountItem.this.getAddress());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupMenuItem(final ActionBarMenuItem actionBarMenuItem, NetworkItem.Crypto crypto, String str) {
        ViewExtKt.visible$default(actionBarMenuItem, false, 1, null);
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setSubMenuOpenSide(2);
        actionBarMenuItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
        actionBarMenuItem.setIcon(C3632R.C3634drawable.ic_ab_other);
        actionBarMenuItem.setIconColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
        ViewExtKt.setCircleRippleBackground(actionBarMenuItem);
        setupMenuItems(actionBarMenuItem, crypto, str);
        actionBarMenuItem.redrawPopup(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground));
        actionBarMenuItem.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItem), false);
        actionBarMenuItem.setPopupItemsColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuItemIcon), true);
        actionBarMenuItem.setupPopupRadialSelectors(Theme.getColor(Theme.key_listSelector));
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CryptoAccountProvider.setupMenuItem$lambda$4$lambda$2(ActionBarMenuItem.this, view);
            }
        });
        actionBarMenuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$$ExternalSyntheticLambda3
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                CryptoAccountProvider.setupMenuItem$lambda$4$lambda$3(CryptoAccountProvider.this, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupMenuItem$lambda$4$lambda$2(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupMenuItem$lambda$4$lambda$3(CryptoAccountProvider this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onMenuItemClickAction.invoke(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupMenuItems(ActionBarMenuItem actionBarMenuItem, NetworkItem.Crypto crypto, String str) {
        actionBarMenuItem.removeAllSubItems();
        if (Intrinsics.areEqual(crypto.getNetworkId(), NetworkType.TON)) {
            int i = IdFabric$Menu.TON_ADDRESS_V3R2;
            CheckBoxCell checkBoxCell = new CheckBoxCell(actionBarMenuItem.getContext(), IdFabric$ViewTypes.TON_ADDRESS_VERSION);
            checkBoxCell.setText(this.resourceManager.getString(C3632R.string.wallet_ton_address_v3r2) + ' ', StringExtKt.shortened(str, 4), true, false);
            Unit unit = Unit.INSTANCE;
            actionBarMenuItem.addSubItem(i, checkBoxCell, AndroidUtilities.m104dp(225), AndroidUtilities.m104dp(50));
        }
        actionBarMenuItem.addSubItem(IdFabric$Menu.SCAN_ADDRESS, 0, this.resourceManager.getString(C3632R.string.wallet_transaction_details_action_open_etherscan, crypto.getExplorerName())).setIcon(crypto.getExplorerLogoUrl());
    }
}
