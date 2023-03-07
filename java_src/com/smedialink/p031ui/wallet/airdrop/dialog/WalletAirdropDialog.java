package com.smedialink.p031ui.wallet.airdrop.dialog;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.smedialink.p031ui.base.WalletAuthFragment;
import com.smedialink.p031ui.base.mvp.MvpAlertDialog;
import com.smedialink.p031ui.custom.ActionButton;
import com.smedialink.p031ui.wallet.common.WalletRootFragment;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStep;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import com.smedialink.utils.helper.wallet.WalletHelper;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkAirdropContentAlertBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Cells.CheckBoxCell;
import org.telegram.p048ui.Components.RLottieImageView;
import org.telegram.p048ui.LaunchActivity;
/* compiled from: WalletAirdropDialog.kt */
/* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog */
/* loaded from: classes3.dex */
public final class WalletAirdropDialog extends MvpAlertDialog implements WalletAirdropDialogView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletAirdropDialog.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletAirdropDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkAirdropContentAlertBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy walletFlowCoordinator$delegate;

    /* compiled from: WalletAirdropDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AirdropStep.values().length];
            iArr[AirdropStep.INTRO.ordinal()] = 1;
            iArr[AirdropStep.CREATE_WALLET.ordinal()] = 2;
            iArr[AirdropStep.CLAIM.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final AlertDialog newInstance(BaseFragment baseFragment) {
        return Companion.newInstance(baseFragment);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WalletAirdropDialog(org.telegram.p048ui.ActionBar.BaseFragment r5) {
        /*
            r4 = this;
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            android.app.Activity r0 = r5.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r4.<init>(r0)
            r4.fragment = r5
            com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$presenter$2 r5 = new com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$presenter$2
            r5.<init>(r4)
            moxy.ktx.MoxyKtxDelegate r0 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r1 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter> r3 = com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2, r5)
            r4.presenter$delegate = r0
            org.koin.mp.KoinPlatformTools r5 = org.koin.p047mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r0 = r5.defaultLazyMode()
            com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$special$$inlined$inject$default$1 r1 = new com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$special$$inlined$inject$default$1
            r2 = 0
            r1.<init>(r4, r2, r2)
            kotlin.Lazy r0 = kotlin.LazyKt.lazy(r0, r1)
            r4.walletFlowCoordinator$delegate = r0
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$special$$inlined$inject$default$2 r0 = new com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$special$$inlined$inject$default$2
            r0.<init>(r4, r2, r2)
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r0)
            r4.resourceManager$delegate = r5
            com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$binding$2 r5 = new com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$binding$2
            r5.<init>(r4)
            r0 = 1
            com.smedialink.utils.extentions.delegate.ResettableLazy r5 = com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r2, r5, r0, r2)
            r4.binding$delegate = r5
            com.smedialink.utils.dialogs.DialogsFactoryKt.setBottomGravity(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialog.<init>(org.telegram.ui.ActionBar.BaseFragment):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WalletAirdropDialogPresenter getPresenter() {
        return (WalletAirdropDialogPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletFlowCoordinator getWalletFlowCoordinator() {
        return (WalletFlowCoordinator) this.walletFlowCoordinator$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkAirdropContentAlertBinding getBinding() {
        return (ForkAirdropContentAlertBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpAlertDialog
    public View onCreateView(Bundle bundle) {
        setupRootView();
        setupImageView();
        setupTitleView();
        setupCheckBoxViews();
        setupButtons();
        setupListeners();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogView
    public void configureDialogState(boolean z, boolean z2, AirdropStep step, int i) {
        Intrinsics.checkNotNullParameter(step, "step");
        ForkAirdropContentAlertBinding binding = getBinding();
        setupMenuItem(step);
        setupDescriptionView(i);
        CheckBoxCell checkboxAuth = binding.checkboxAuth;
        Intrinsics.checkNotNullExpressionValue(checkboxAuth, "checkboxAuth");
        setCheckBoxDone(checkboxAuth, z);
        CheckBoxCell checkboxCreateWallet = binding.checkboxCreateWallet;
        Intrinsics.checkNotNullExpressionValue(checkboxCreateWallet, "checkboxCreateWallet");
        setCheckBoxDone(checkboxCreateWallet, z2);
        int i2 = WhenMappings.$EnumSwitchMapping$0[step.ordinal()];
        if (i2 == 1) {
            ActionButton actionButton = binding.buttonAction;
            actionButton.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_action_start));
            Intrinsics.checkNotNullExpressionValue(actionButton, "");
            ViewExtKt.safeThrottledClick$default(actionButton, 0L, new WalletAirdropDialog$configureDialogState$1$1$1(this), 1, null);
            AppCompatTextView appCompatTextView = binding.textAdditionalAction;
            appCompatTextView.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_action_reject));
            Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
            ViewExtKt.safeThrottledClick$default(appCompatTextView, 0L, new WalletAirdropDialog$configureDialogState$1$2$1(this), 1, null);
        } else if (i2 == 2) {
            ActionButton actionButton2 = binding.buttonAction;
            actionButton2.setText(getResourceManager().getString(C3158R.string.wallet_dashboard_create_eth_wallet));
            Intrinsics.checkNotNullExpressionValue(actionButton2, "");
            ViewExtKt.safeThrottledClick$default(actionButton2, 0L, new WalletAirdropDialog$configureDialogState$1$3$1(this), 1, null);
            AppCompatTextView appCompatTextView2 = binding.textAdditionalAction;
            appCompatTextView2.setText(getResourceManager().getString(C3158R.string.wallet_dashboard_import_eth_wallet));
            Intrinsics.checkNotNullExpressionValue(appCompatTextView2, "");
            ViewExtKt.safeThrottledClick$default(appCompatTextView2, 0L, new WalletAirdropDialog$configureDialogState$1$4$1(this), 1, null);
        } else if (i2 != 3) {
        } else {
            ActionButton actionButton3 = binding.buttonAction;
            actionButton3.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_action_take));
            Intrinsics.checkNotNullExpressionValue(actionButton3, "");
            ViewExtKt.safeThrottledClick$default(actionButton3, 0L, new WalletAirdropDialog$configureDialogState$1$5$1(this), 1, null);
            AppCompatTextView textAdditionalAction = binding.textAdditionalAction;
            Intrinsics.checkNotNullExpressionValue(textAdditionalAction, "textAdditionalAction");
            ViewExtKt.gone(textAdditionalAction);
        }
    }

    @Override // com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogView
    public void onAcceptAirdrop() {
        if (this.fragment.getParentActivity() instanceof LaunchActivity) {
            Activity parentActivity = this.fragment.getParentActivity();
            Objects.requireNonNull(parentActivity, "null cannot be cast to non-null type org.telegram.ui.LaunchActivity");
            WalletHelper.openAuthBotChat((LaunchActivity) parentActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccessClaimAirdrop$lambda-6  reason: not valid java name */
    public static final void m1557onSuccessClaimAirdrop$lambda6(WalletAirdropDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.checkAndOpenWalletFragment();
    }

    @Override // com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogView
    public void onSuccessClaimAirdrop(String title, String description) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        DialogsFactoryKt.showSuccessAlert$default(this.fragment, title, description, null, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletAirdropDialog.m1557onSuccessClaimAirdrop$lambda6(WalletAirdropDialog.this);
            }
        }, 4, null);
    }

    private final void checkAndOpenWalletFragment() {
        if (this.fragment.getParentLayout().getLastFragment() instanceof WalletAuthFragment) {
            return;
        }
        WalletFlowCoordinator walletFlowCoordinator = getWalletFlowCoordinator();
        INavigationLayout parentLayout = this.fragment.getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "fragment.parentLayout");
        WalletFlowCoordinator.start$default(walletFlowCoordinator, parentLayout, WalletRootFragment.Companion.newInstance(), false, 4, null);
    }

    private final void setCheckBoxDone(CheckBoxCell checkBoxCell, boolean z) {
        checkBoxCell.setCheckBoxColor(z ? "chats_actionBackground" : "windowBackgroundWhiteGrayText2", "windowBackgroundWhiteGrayText2", "checkboxSquareCheck");
    }

    private final void setupButtons() {
        AppCompatTextView appCompatTextView = getBinding().textAdditionalAction;
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.withMediumTypeface(appCompatTextView);
        appCompatTextView.setTextColor(Theme.getColor("chats_actionBackground"));
    }

    private final List<CheckBoxCell> setupCheckBoxViews() {
        List<CheckBoxCell> listOf;
        ForkAirdropContentAlertBinding binding = getBinding();
        binding.checkboxAuth.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_auth_description), "", true, false);
        binding.checkboxCreateWallet.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_create_wallet_description), "", true, false);
        binding.checkboxTakeBonus.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_claim_bonus_description), "", true, false);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new CheckBoxCell[]{binding.checkboxAuth, binding.checkboxTakeBonus, binding.checkboxCreateWallet});
        for (CheckBoxCell checkBoxCell : listOf) {
            checkBoxCell.getTextView().setTextSize(1, 14.0f);
            checkBoxCell.setMultiline(!Intrinsics.areEqual(checkBoxCell, binding.checkboxTakeBonus));
            checkBoxCell.setCheckBoxColor("windowBackgroundWhiteGrayText2", "windowBackgroundWhiteGrayText2", "checkboxSquareCheck");
            checkBoxCell.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        }
        return listOf;
    }

    private final void setupImageView() {
        RLottieImageView rLottieImageView = getBinding().imageAlertPicture;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(C3158R.C3164raw.fork_lime_airdrop, ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
    }

    private final void setupRootView() {
        getBinding().getRoot().setBackgroundColor(Theme.getColor("dialogBackground"));
    }

    private final void setupTitleView() {
        AppCompatTextView appCompatTextView = getBinding().textAlertTitle;
        appCompatTextView.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_title));
        appCompatTextView.setTextColor(Theme.getColor("chat_messagePanelText"));
        Intrinsics.checkNotNullExpressionValue(appCompatTextView, "");
        ViewExtKt.withMediumTypeface(appCompatTextView);
    }

    private final void setupDescriptionView(int i) {
        AppCompatTextView appCompatTextView = getBinding().textAlertDescription;
        appCompatTextView.setText(getResourceManager().getString(C3158R.string.airdrop_dialog_description, String.valueOf(i)));
        appCompatTextView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
    }

    private final void setupMenuItem(AirdropStep airdropStep) {
        final ActionBarMenuItem actionBarMenuItem = getBinding().itemMenu;
        actionBarMenuItem.setSubMenuOpenSide(2);
        actionBarMenuItem.setIcon(C3158R.C3160drawable.ic_ab_other);
        actionBarMenuItem.setBackground(Theme.createSelectorDrawable(Theme.getColor("player_actionBarSelector")));
        actionBarMenuItem.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletAirdropDialog.m1558setupMenuItem$lambda16$lambda14(ActionBarMenuItem.this, view);
            }
        });
        actionBarMenuItem.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3158R.string.AccDescrMoreOptions));
        actionBarMenuItem.addSubItem(IdFabric$Menu.TOKEN_SITE, C3158R.C3160drawable.fork_ic_settings_help, getResourceManager().getString(C3158R.string.airdrop_dialog_lime_beginner_menu_title));
        if (airdropStep != AirdropStep.INTRO) {
            actionBarMenuItem.addSubItem(IdFabric$Menu.REJECT, C3158R.C3160drawable.ic_close_white, getResourceManager().getString(C3158R.string.airdrop_dialog_action_reject));
        }
        actionBarMenuItem.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$$ExternalSyntheticLambda2
            @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletAirdropDialog.m1559setupMenuItem$lambda16$lambda15(ActionBarMenuItem.this, this, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupMenuItem$lambda-16$lambda-14  reason: not valid java name */
    public static final void m1558setupMenuItem$lambda16$lambda14(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setupMenuItem$lambda-16$lambda-15  reason: not valid java name */
    public static final void m1559setupMenuItem$lambda16$lambda15(ActionBarMenuItem this_with, WalletAirdropDialog this$0, int i) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == IdFabric$Menu.TOKEN_SITE) {
            Browser.openUrl(this_with.getContext(), this$0.getResourceManager().getString(C3158R.string.airdrop_dialog_lime_beginner_site));
        } else if (i == IdFabric$Menu.REJECT) {
            this$0.getPresenter().rejectAirdrop();
        }
    }

    private final void setupListeners() {
        ActionButton buttonAction = getBinding().buttonAction;
        Intrinsics.checkNotNullExpressionValue(buttonAction, "buttonAction");
        ViewExtKt.safeThrottledClick$default(buttonAction, 0L, new WalletAirdropDialog$setupListeners$1$1(this), 1, null);
    }

    /* compiled from: WalletAirdropDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AlertDialog newInstance(BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new WalletAirdropDialog(fragment);
        }
    }
}
