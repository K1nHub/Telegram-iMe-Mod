package com.iMe.p030ui.wallet.crypto.settings.blockchains.details;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.p030ui.base.mvp.MvpBottomSheet;
import com.iMe.p030ui.custom.BigActionButton;
import com.iMe.p030ui.custom.ImageHeaderView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentBlockchainsWalletDetailsBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: BlockchainWalletDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog */
/* loaded from: classes3.dex */
public final class BlockchainWalletDetailsBottomSheetDialog extends MvpBottomSheet implements BlockchainWalletDetailsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(BlockchainWalletDetailsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(BlockchainWalletDetailsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentBlockchainsWalletDetailsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final DialogModel infoDialogModel;
    private final MoxyKtxDelegate presenter$delegate;
    private final Function1<BlockchainManagementItem.Wallet, Unit> resetWalletAction;
    private final Lazy resourceManager$delegate;
    private final Function1<BlockchainManagementItem.Wallet, Unit> showBackupAction;
    private final BlockchainManagementItem.Wallet walletItem;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BlockchainWalletDetailsBottomSheetDialog(final org.telegram.p043ui.ActionBar.BaseFragment r3, com.iMe.model.wallet.crypto.settings.BlockchainManagementItem.Wallet r4, kotlin.jvm.functions.Function1<? super com.iMe.model.wallet.crypto.settings.BlockchainManagementItem.Wallet, kotlin.Unit> r5, kotlin.jvm.functions.Function1<? super com.iMe.model.wallet.crypto.settings.BlockchainManagementItem.Wallet, kotlin.Unit> r6, com.iMe.model.dialog.DialogModel r7) {
        /*
            r2 = this;
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "walletItem"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "resetWalletAction"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "showBackupAction"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "infoDialogModel"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            android.app.Activity r0 = r3.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r2.<init>(r0, r1)
            r2.walletItem = r4
            r2.resetWalletAction = r5
            r2.showBackupAction = r6
            r2.infoDialogModel = r7
            com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$presenter$2 r4 = new com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$presenter$2
            r4.<init>()
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r6 = r2.getMvpDelegate()
            java.lang.String r7 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r7)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.Class<com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter> r0 = com.iMe.p030ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter.class
            java.lang.String r0 = r0.getName()
            r7.append(r0)
            java.lang.String r0 = "."
            r7.append(r0)
            java.lang.String r0 = "presenter"
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r5.<init>(r6, r7, r4)
            r2.presenter$delegate = r5
            org.koin.mp.KoinPlatformTools r4 = org.koin.p041mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r4 = r4.defaultLazyMode()
            com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$special$$inlined$inject$default$1 r5 = new com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$special$$inlined$inject$default$1
            r6 = 0
            r5.<init>()
            kotlin.Lazy r4 = kotlin.LazyKt.lazy(r4, r5)
            r2.resourceManager$delegate = r4
            com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$binding$2 r4 = new com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$binding$2
            r4.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r3 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r2, r6, r4, r1, r6)
            r2.binding$delegate = r3
            r3 = 0
            r2.setApplyBottomPadding(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog.<init>(org.telegram.ui.ActionBar.BaseFragment, com.iMe.model.wallet.crypto.settings.BlockchainManagementItem$Wallet, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, com.iMe.model.dialog.DialogModel):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BlockchainWalletDetailsPresenter getPresenter() {
        return (BlockchainWalletDetailsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentBlockchainsWalletDetailsBinding getBinding() {
        return (ForkContentBlockchainsWalletDetailsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupActionItem();
        setupColors();
        setupListeners();
        setupTexts();
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView
    public void setupScreenWithData(int i, String title, String subtitle, String createdDate, String address) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(subtitle, "subtitle");
        Intrinsics.checkNotNullParameter(createdDate, "createdDate");
        Intrinsics.checkNotNullParameter(address, "address");
        ForkContentBlockchainsWalletDetailsBinding binding = getBinding();
        ImageHeaderView viewHeader = binding.viewHeader;
        Intrinsics.checkNotNullExpressionValue(viewHeader, "viewHeader");
        ImageHeaderView.setupViewData$default(viewHeader, new ImageHeaderView.IconData.ResourceDrawable(i), null, title, subtitle, 2, null);
        binding.viewConnectedCell.setupViewData(getResourceManager().getString(C3632R.string.wallet_details_created), createdDate, C3632R.C3634drawable.msg_calendar2, true);
        binding.viewAddressCell.setupViewData(getResourceManager().getString(C3632R.string.wallet_connect_session_details_address), address, C3632R.C3634drawable.fork_ic_nav_wallet_24, true);
    }

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView
    public void showResetWalletConfirmationDialog(DialogModel dialogModel) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(context, dialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                BlockchainWalletDetailsBottomSheetDialog.this.resetWallet();
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    private final void setupActionItem() {
        final ActionBarMenuItem setupActionItem$lambda$4 = getBinding().itemMoreOptions;
        setupActionItem$lambda$4.setLongClickEnabled(false);
        setupActionItem$lambda$4.setSubMenuOpenSide(2);
        setupActionItem$lambda$4.setIcon(C3632R.C3634drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupActionItem$lambda$4, "setupActionItem$lambda$4");
        ViewExtKt.setCircleRippleBackground(setupActionItem$lambda$4);
        setupActionItem$lambda$4.addSubItem(IdFabric$Menu.INFO, C3632R.C3634drawable.msg_info, getResourceManager().getString(C3632R.string.wallet_crypto_buy_information_dialog_title));
        setupActionItem$lambda$4.addSubItem(IdFabric$Menu.COPY, C3632R.C3634drawable.msg_copy, getResourceManager().getString(C3632R.string.wallet_transaction_details_action_copy_address));
        setupActionItem$lambda$4.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BlockchainWalletDetailsBottomSheetDialog.setupActionItem$lambda$4$lambda$2(ActionBarMenuItem.this, view);
            }
        });
        setupActionItem$lambda$4.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$$ExternalSyntheticLambda2
            @Override // org.telegram.p043ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                BlockchainWalletDetailsBottomSheetDialog.setupActionItem$lambda$4$lambda$3(BlockchainWalletDetailsBottomSheetDialog.this, setupActionItem$lambda$4, i);
            }
        });
        setupActionItem$lambda$4.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3632R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionItem$lambda$4$lambda$2(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionItem$lambda$4$lambda$3(BlockchainWalletDetailsBottomSheetDialog this$0, ActionBarMenuItem this_with, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        if (i == IdFabric$Menu.INFO) {
            Context context = this_with.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            this$0.showDialog(DialogUtils.createDialog$default(context, this$0.infoDialogModel, null, null, 12, null));
        } else if (i == IdFabric$Menu.COPY) {
            ContextExtKt.copyToClipboard$default(this$0.walletItem.getAddress(), null, 2, null);
        }
    }

    private final void setupColors() {
        ForkContentBlockchainsWalletDetailsBinding binding = getBinding();
        binding.viewHeader.setupColors();
        binding.viewConnectedCell.setupColors();
        binding.viewAddressCell.setupColors();
        binding.buttonBackup.applyColors();
        BigActionButton setupColors$lambda$6$lambda$5 = binding.buttonReset;
        setupColors$lambda$6$lambda$5.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
        setupColors$lambda$6$lambda$5.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(4), 0, Theme.getColor(Theme.key_listSelector)));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$6$lambda$5, "setupColors$lambda$6$lambda$5");
        ViewExtKt.withMediumTypeface(setupColors$lambda$6$lambda$5);
    }

    private final void setupTexts() {
        ForkContentBlockchainsWalletDetailsBinding binding = getBinding();
        binding.buttonBackup.setText(getResourceManager().getString(C3632R.string.wallet_eth_account_settings_backup_title));
        binding.buttonReset.setText(LocaleController.getString("Reset", C3632R.string.Reset));
    }

    private final void setupListeners() {
        ForkContentBlockchainsWalletDetailsBinding binding = getBinding();
        BigActionButton buttonBackup = binding.buttonBackup;
        Intrinsics.checkNotNullExpressionValue(buttonBackup, "buttonBackup");
        ViewExtKt.safeThrottledClick$default(buttonBackup, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                Intrinsics.checkNotNullParameter(it, "it");
                BlockchainWalletDetailsBottomSheetDialog.this.showWalletBackup();
            }
        }, 1, null);
        BigActionButton buttonReset = binding.buttonReset;
        Intrinsics.checkNotNullExpressionValue(buttonReset, "buttonReset");
        ViewExtKt.safeThrottledClick$default(buttonReset, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(View view) {
                invoke2(view);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(View it) {
                BlockchainWalletDetailsPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = BlockchainWalletDetailsBottomSheetDialog.this.getPresenter();
                presenter.showResetWalletConfirmationDialog();
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetWallet() {
        this.resetWalletAction.invoke(this.walletItem);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showWalletBackup() {
        this.showBackupAction.invoke(this.walletItem);
        dismiss();
    }

    /* compiled from: BlockchainWalletDetailsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BlockchainWalletDetailsBottomSheetDialog newInstance(BlockchainManagementItem.Wallet walletItem, BaseFragment fragment, Function1<? super BlockchainManagementItem.Wallet, Unit> resetWalletAction, Function1<? super BlockchainManagementItem.Wallet, Unit> showBackupAction, DialogModel infoDialogModel) {
            Intrinsics.checkNotNullParameter(walletItem, "walletItem");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(resetWalletAction, "resetWalletAction");
            Intrinsics.checkNotNullParameter(showBackupAction, "showBackupAction");
            Intrinsics.checkNotNullParameter(infoDialogModel, "infoDialogModel");
            return new BlockchainWalletDetailsBottomSheetDialog(fragment, walletItem, resetWalletAction, showBackupAction, infoDialogModel);
        }
    }
}
