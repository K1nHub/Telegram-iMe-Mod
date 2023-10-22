package com.iMe.p030ui.wallet.cryptobox.conditions;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import com.iMe.common.IdFabric$Menu;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.cryptobox.CryptoBoxActionButtonType;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.p030ui.base.mvp.MvpBottomSheet;
import com.iMe.p030ui.custom.DetailsIconCellView;
import com.iMe.p030ui.custom.ImageHeaderView;
import com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroFragment;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.iMe.utils.helper.wallet.WalletHelper;
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
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkContentCryptoboxConditionsBinding;
import org.telegram.p042ui.ActionBar.ActionBarMenuItem;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.ChatActivity;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.Premium.PremiumButtonView;
import org.telegram.p042ui.LaunchActivity;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CryptoBoxConditionsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog */
/* loaded from: classes3.dex */
public final class CryptoBoxConditionsBottomSheetDialog extends MvpBottomSheet implements CryptoBoxConditionsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(CryptoBoxConditionsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(CryptoBoxConditionsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;", 0)), Reflection.property1(new PropertyReference1Impl(CryptoBoxConditionsBottomSheetDialog.class, "actionButton", "getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy actionButton$delegate;
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;

    public static final CryptoBoxConditionsBottomSheetDialog newInstance(BaseFragment baseFragment, CryptoBoxInfo cryptoBoxInfo, TLRPC$Chat tLRPC$Chat) {
        return Companion.newInstance(baseFragment, cryptoBoxInfo, tLRPC$Chat);
    }

    @Override // org.telegram.p042ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CryptoBoxConditionsBottomSheetDialog(final com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo r4, final org.telegram.tgnet.TLRPC$Chat r5, org.telegram.p042ui.ActionBar.BaseFragment r6) {
        /*
            r3 = this;
            java.lang.String r0 = "cryptoBoxInfo"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r3.<init>(r0, r1)
            r3.fragment = r6
            com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$presenter$2 r6 = new com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$presenter$2
            r6.<init>()
            moxy.ktx.MoxyKtxDelegate r4 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r5 = r3.getMvpDelegate()
            java.lang.String r0 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class<com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter> r2 = com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsPresenter.class
            java.lang.String r2 = r2.getName()
            r0.append(r2)
            java.lang.String r2 = "."
            r0.append(r2)
            java.lang.String r2 = "presenter"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r4.<init>(r5, r0, r6)
            r3.presenter$delegate = r4
            org.koin.mp.KoinPlatformTools r4 = org.koin.p041mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r4 = r4.defaultLazyMode()
            com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$special$$inlined$inject$default$1 r5 = new com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$special$$inlined$inject$default$1
            r6 = 0
            r5.<init>()
            kotlin.Lazy r4 = kotlin.LazyKt.lazy(r4, r5)
            r3.resourceManager$delegate = r4
            com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$binding$2 r4 = new com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$binding$2
            r4.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r4 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r3, r6, r4, r1, r6)
            r3.binding$delegate = r4
            com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$actionButton$2 r4 = new com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$actionButton$2
            r4.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r4 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r3, r6, r4, r1, r6)
            r3.actionButton$delegate = r4
            r4 = 0
            r3.setApplyBottomPadding(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog.<init>(com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo, org.telegram.tgnet.TLRPC$Chat, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    public final CryptoBoxConditionsPresenter getPresenter() {
        return (CryptoBoxConditionsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentCryptoboxConditionsBinding getBinding() {
        return (ForkContentCryptoboxConditionsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    private final PremiumButtonView getActionButton() {
        return (PremiumButtonView) this.actionButton$delegate.getValue(this, $$delegatedProperties[2]);
    }

    @Override // com.iMe.p030ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupViews();
        setupColors();
        setupListeners();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void renderScreenData(String tokenLogoUrl, String networkIconUrl, String name, String description, String rewardPerUserText, String membersText, String balanceText, String startDate, Network.Explorer explorer) {
        Intrinsics.checkNotNullParameter(tokenLogoUrl, "tokenLogoUrl");
        Intrinsics.checkNotNullParameter(networkIconUrl, "networkIconUrl");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(rewardPerUserText, "rewardPerUserText");
        Intrinsics.checkNotNullParameter(membersText, "membersText");
        Intrinsics.checkNotNullParameter(balanceText, "balanceText");
        Intrinsics.checkNotNullParameter(startDate, "startDate");
        Intrinsics.checkNotNullParameter(explorer, "explorer");
        ForkContentCryptoboxConditionsBinding binding = getBinding();
        binding.viewHeader.setupViewData(new ImageHeaderView.IconData.RemoteImage(tokenLogoUrl), networkIconUrl, name, description);
        binding.viewRewardPerUserCell.setupViewData(getResourceManager().getString(C3630R.string.cryptobox_conditions_reward_per_user), rewardPerUserText, C3630R.C3632drawable.fork_ic_cryptobox, true);
        binding.viewMembersCell.setupViewData(getResourceManager().getString(C3630R.string.cryptobox_details_members), membersText, C3630R.C3632drawable.msg_groups, true);
        binding.viewBalanceCell.setupViewData(getResourceManager().getString(C3630R.string.cryptobox_details_balance), balanceText, C3630R.C3632drawable.fork_ic_donations_24, true);
        DetailsIconCellView viewStartDateCell = binding.viewStartDateCell;
        Intrinsics.checkNotNullExpressionValue(viewStartDateCell, "viewStartDateCell");
        DetailsIconCellView.setupViewData$default(viewStartDateCell, getResourceManager().getString(C3630R.string.staking_conditions_start), startDate, C3630R.C3632drawable.fork_ic_start, false, 8, null);
        binding.itemMoreOptions.addSubItem(IdFabric$Menu.SCAN_ADDRESS, 0, getResourceManager().getString(C3630R.string.wallet_transaction_details_action_open_etherscan, explorer.getName())).setIcon(explorer.getLogoUrl());
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void renderButton(CryptoBoxActionButtonType buttonType) {
        Integer num;
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        PremiumButtonView actionButton = getActionButton();
        if (Intrinsics.areEqual(buttonType, CryptoBoxActionButtonType.C1528Ok.INSTANCE)) {
            num = Integer.valueOf(getThemedColor(Theme.key_featuredStickers_addButton));
            actionButton.setOverlayColor(num.intValue());
        } else {
            if (Intrinsics.areEqual(buttonType, CryptoBoxActionButtonType.Taken.INSTANCE) ? true : Intrinsics.areEqual(buttonType, CryptoBoxActionButtonType.Finished.INSTANCE) ? true : Intrinsics.areEqual(buttonType, CryptoBoxActionButtonType.Stopped.INSTANCE)) {
                num = Integer.valueOf(getResourceManager().getColor(C3630R.C3631color.cell_button_green));
                actionButton.setOverlayColor(num.intValue());
            } else {
                num = null;
            }
        }
        actionButton.setOverlayText(getResourceManager().getString(buttonType.getTextResId()), num != null, true);
        ForkContentCryptoboxConditionsBinding binding = getBinding();
        if (buttonType instanceof CryptoBoxActionButtonType.WithDescription) {
            LinearLayout linearActionDescription = binding.linearActionDescription;
            Intrinsics.checkNotNullExpressionValue(linearActionDescription, "linearActionDescription");
            ViewExtKt.visible$default(linearActionDescription, false, 1, null);
            TextView renderButton$lambda$8$lambda$7$lambda$6 = binding.textActionDescription;
            if (buttonType instanceof CryptoBoxActionButtonType.WithDescription.Subscribe) {
                final CryptoBoxActionButtonType.WithDescription.Subscribe subscribe = (CryptoBoxActionButtonType.WithDescription.Subscribe) buttonType;
                renderButton$lambda$8$lambda$7$lambda$6.setText(getResourceManager().getString(subscribe.getDescriptionTextResId(), subscribe.getChatName()));
                Intrinsics.checkNotNullExpressionValue(renderButton$lambda$8$lambda$7$lambda$6, "renderButton$lambda$8$lambda$7$lambda$6");
                ViewExtKt.setSubstringClickListener$default(renderButton$lambda$8$lambda$7$lambda$6, subscribe.getChatName(), false, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda2
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        CryptoBoxConditionsBottomSheetDialog.renderButton$lambda$8$lambda$7$lambda$6$lambda$5(CryptoBoxConditionsBottomSheetDialog.this, subscribe);
                    }
                }, 2, null);
                return;
            }
            renderButton$lambda$8$lambda$7$lambda$6.setText(getResourceManager().getString(((CryptoBoxActionButtonType.WithDescription) buttonType).getDescriptionTextResId()));
            return;
        }
        LinearLayout linearActionDescription2 = binding.linearActionDescription;
        Intrinsics.checkNotNullExpressionValue(linearActionDescription2, "linearActionDescription");
        ViewExtKt.gone$default(linearActionDescription2, false, 1, null);
    }

    public static final void renderButton$lambda$8$lambda$7$lambda$6$lambda$5(CryptoBoxConditionsBottomSheetDialog this$0, CryptoBoxActionButtonType.WithDescription.Subscribe this_with) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this$0.fragment.presentFragment(ChatActivity.newInstanceForDialogId(-this_with.getChatId()));
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void openAddressScan(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Browser.openUrl(getContext(), url);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void copyNameToClipboard(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        ContextExtKt.copyToClipboard$default(name, null, 2, null);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void startActivationFlow() {
        Activity parentActivity = this.fragment.getParentActivity();
        LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        if (launchActivity != null) {
            WalletHelper.safeRunWithActivationCheck(launchActivity, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    CryptoBoxConditionsBottomSheetDialog.startActivationFlow$lambda$9(CryptoBoxConditionsBottomSheetDialog.this);
                }
            });
        }
    }

    public static final void startActivationFlow$lambda$9(CryptoBoxConditionsBottomSheetDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().onAuthSuccess();
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialog$default(context, dialogModel, action, null, 8, null));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletIntroScreen(String linkedWalletAddress, WalletCreationType.Initial walletCreationType) {
        Intrinsics.checkNotNullParameter(linkedWalletAddress, "linkedWalletAddress");
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        this.fragment.presentFragment(CreateWalletIntroFragment.Companion.newInstance(walletCreationType, linkedWalletAddress));
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String title, String[] items, DialogInterface.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(listener, "listener");
        showDialog(DialogsFactoryKt.createOptionsBottomSheetDialog(this.fragment, title, items, listener));
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void showParticipationSuccess() {
        DialogsFactoryKt.showSuccessAlert(this.fragment, getResourceManager().getString(C3630R.string.cryptobox_participation_success_title), getResourceManager().getString(C3630R.string.cryptobox_participation_success_description), getResourceManager().getString(C3630R.string.common_ok), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                CryptoBoxConditionsBottomSheetDialog.this.dismiss();
            }
        });
    }

    public final PremiumButtonView initActionButton() {
        return new PremiumButtonView(getContext(), AndroidUtilities.m102dp(4), true, this.resourcesProvider);
    }

    private final void setupViews() {
        ForkContentCryptoboxConditionsBinding binding = getBinding();
        binding.frameButtonContainer.addView(getActionButton(), LayoutHelper.createFrame(-1, 48, 16));
        final ActionBarMenuItem setupViews$lambda$12$lambda$11 = binding.itemMoreOptions;
        setupViews$lambda$12$lambda$11.setLongClickEnabled(false);
        setupViews$lambda$12$lambda$11.setSubMenuOpenSide(2);
        setupViews$lambda$12$lambda$11.setIcon(C3630R.C3632drawable.ic_ab_other);
        setupViews$lambda$12$lambda$11.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        Intrinsics.checkNotNullExpressionValue(setupViews$lambda$12$lambda$11, "setupViews$lambda$12$lambda$11");
        ViewExtKt.setCircleRippleBackground(setupViews$lambda$12$lambda$11);
        setupViews$lambda$12$lambda$11.addSubItem(IdFabric$Menu.COPY, C3630R.C3632drawable.msg_copy, getResourceManager().getString(C3630R.string.cryptobox_copy_name));
        ViewExtKt.safeThrottledClick$default(setupViews$lambda$12$lambda$11, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$setupViews$1$1$1
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
                ActionBarMenuItem.this.toggleSubMenu();
            }
        }, 1, null);
        setupViews$lambda$12$lambda$11.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda3
            @Override // org.telegram.p042ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                CryptoBoxConditionsBottomSheetDialog.setupViews$lambda$12$lambda$11$lambda$10(CryptoBoxConditionsBottomSheetDialog.this, i);
            }
        });
        setupViews$lambda$12$lambda$11.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3630R.string.AccDescrMoreOptions));
    }

    public static final void setupViews$lambda$12$lambda$11$lambda$10(CryptoBoxConditionsBottomSheetDialog this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (i == IdFabric$Menu.SCAN_ADDRESS) {
            this$0.getPresenter().onViewOnScanClick();
        } else if (i == IdFabric$Menu.COPY) {
            this$0.getPresenter().onCopyNameClick();
        }
    }

    private final void setupColors() {
        ForkContentCryptoboxConditionsBinding binding = getBinding();
        binding.viewHeader.setupColors();
        binding.viewRewardPerUserCell.setupColors();
        binding.viewMembersCell.setupColors();
        binding.viewBalanceCell.setupColors();
        binding.viewStartDateCell.setupColors();
        binding.textActionDescription.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayText));
        AppCompatImageView imageActionDescription = binding.imageActionDescription;
        Intrinsics.checkNotNullExpressionValue(imageActionDescription, "imageActionDescription");
        int i = Theme.key_windowBackgroundWhiteGrayIcon;
        ImageViewExtKt.setImageColor(imageActionDescription, getThemedColor(i));
        ActionBarMenuItem setupColors$lambda$14$lambda$13 = binding.itemMoreOptions;
        setupColors$lambda$14$lambda$13.setIconColor(getThemedColor(i));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$14$lambda$13, "setupColors$lambda$14$lambda$13");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$14$lambda$13);
    }

    private final void setupListeners() {
        ViewExtKt.safeThrottledClick$default(getActionButton(), 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$setupListeners$1
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
                CryptoBoxConditionsPresenter presenter;
                Intrinsics.checkNotNullParameter(it, "it");
                presenter = CryptoBoxConditionsBottomSheetDialog.this.getPresenter();
                presenter.onActionClick();
            }
        }, 1, null);
    }

    /* compiled from: CryptoBoxConditionsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ CryptoBoxConditionsBottomSheetDialog newInstance$default(Companion companion, BaseFragment baseFragment, CryptoBoxInfo cryptoBoxInfo, TLRPC$Chat tLRPC$Chat, int i, Object obj) {
            if ((i & 4) != 0) {
                tLRPC$Chat = null;
            }
            return companion.newInstance(baseFragment, cryptoBoxInfo, tLRPC$Chat);
        }

        public final CryptoBoxConditionsBottomSheetDialog newInstance(BaseFragment fragment, CryptoBoxInfo cryptoBoxInfo, TLRPC$Chat tLRPC$Chat) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(cryptoBoxInfo, "cryptoBoxInfo");
            return new CryptoBoxConditionsBottomSheetDialog(cryptoBoxInfo, tLRPC$Chat, fragment);
        }
    }
}
