package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.p030ui.custom.HorizontalActionButtonsView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.BackupImageView;
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
        this.layoutId = C3630R.layout.fork_recycle_item_wallet_account;
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
    public void convert(BaseViewHolder helper, final BinanceAccountItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3630R.C3633id.card_crypto_account, Theme.key_windowBackgroundWhite);
        int i = C3630R.C3633id.text_account_id;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i, Theme.key_chat_messagePanelText);
        int i2 = C3630R.C3633id.text_account_name;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, Theme.key_chats_actionBackground);
        int i3 = C3630R.C3633id.image_copy;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2.setVisible(i3, true), i3, Theme.key_dialogIcon), i3), C3630R.C3633id.image_verified, item.getInfo().isVerified()).setText(i2, item.getInfo().getEmail()).setText(i, this.resourceManager.getString(C3630R.string.wallet_binance_pay_id, item.getShortId())), C3630R.C3633id.item_more_options, new BinanceAccountProvider$convert$1(this)), C3630R.C3633id.image_account_avatar, new Function1<BackupImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.BinanceAccountProvider$convert$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
                invoke2(backupImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(BackupImageView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setImageResource(C3630R.C3632drawable.fork_ic_binance_40);
            }
        }), C3630R.C3633id.horizontal_action_buttons, new Function1<HorizontalActionButtonsView, Unit>() { // from class: com.iMe.ui.adapter.provider.BinanceAccountProvider$convert$3
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
                applyForView.initButtons(BinanceAccountItem.this.getActions());
            }
        });
    }

    public void convert(BaseViewHolder helper, final BinanceAccountItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(helper.setText(C3630R.C3633id.text_account_id, this.resourceManager.getString(C3630R.string.wallet_binance_pay_id, item.getShortId())).setText(C3630R.C3633id.text_account_name, item.getInfo().getEmail()), C3630R.C3633id.image_account_avatar, new Function1<BackupImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.BinanceAccountProvider$convert$4
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
                invoke2(backupImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(BackupImageView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setImageResource(C3630R.C3632drawable.fork_ic_binance_40);
            }
        }), C3630R.C3633id.horizontal_action_buttons, new Function1<HorizontalActionButtonsView, Unit>() { // from class: com.iMe.ui.adapter.provider.BinanceAccountProvider$convert$5
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
                applyForView.initButtons(BinanceAccountItem.this.getActions());
            }
        });
    }
}
