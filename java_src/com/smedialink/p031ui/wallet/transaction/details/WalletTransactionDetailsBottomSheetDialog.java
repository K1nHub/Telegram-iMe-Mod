package com.smedialink.p031ui.wallet.transaction.details;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.p010os.BundleKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.smedialink.common.IdFabric$Menu;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.ActionItem;
import com.smedialink.model.wallet.transaction.StakingOperationItem;
import com.smedialink.model.wallet.transaction.TransactionItem;
import com.smedialink.model.wallet.transfer.TransferScreenArgs;
import com.smedialink.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.smedialink.p031ui.base.mvp.MvpBottomSheet;
import com.smedialink.p031ui.custom.DividerView;
import com.smedialink.p031ui.wallet.transaction.details.adapter.WalletActionAdapter;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.dialogs.DialogExtKt;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.dialogs.DialogsFactoryKt;
import com.smedialink.utils.extentions.common.ContextExtKt;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import java.util.List;
import kotlin.Lazy;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.browser.Browser;
import org.telegram.messenger.databinding.ForkContentWalletTransactionDetailsLayoutBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.AlertDialog;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.ManageLinksActivity;
import org.telegram.p048ui.ProfileActivity;
/* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog */
/* loaded from: classes3.dex */
public final class WalletTransactionDetailsBottomSheetDialog extends MvpBottomSheet implements WalletTransactionDetailsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletTransactionDetailsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletTransactionDetailsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletTransactionDetailsLayoutBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final Lazy actionAdapter$delegate;
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final Lazy networkIconCornerSize$delegate;
    private final Callbacks$Callback1<ActionItem> parentAdditionalAction;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final ScreenType screenType;
    private final Lazy walletFlowCoordinator$delegate;

    public static final WalletTransactionDetailsBottomSheetDialog newInstance(BaseFragment baseFragment, ScreenType screenType, Callbacks$Callback1<ActionItem> callbacks$Callback1) {
        return Companion.newInstance(baseFragment, screenType, callbacks$Callback1);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WalletTransactionDetailsBottomSheetDialog(org.telegram.p048ui.ActionBar.BaseFragment r4, com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog.ScreenType r5, org.fork.utils.Callbacks$Callback1<com.smedialink.model.wallet.ActionItem> r6) {
        /*
            r3 = this;
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "screenType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            android.app.Activity r0 = r4.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r3.<init>(r0, r1)
            r3.fragment = r4
            r3.screenType = r5
            r3.parentAdditionalAction = r6
            com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$presenter$2 r4 = new com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$presenter$2
            r4.<init>(r3)
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r6 = r3.getMvpDelegate()
            java.lang.String r0 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r6, r0)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class<com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsPresenter> r2 = com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsPresenter.class
            java.lang.String r2 = r2.getName()
            r0.append(r2)
            java.lang.String r2 = "."
            r0.append(r2)
            java.lang.String r2 = "presenter"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            r5.<init>(r6, r0, r4)
            r3.presenter$delegate = r5
            org.koin.mp.KoinPlatformTools r4 = org.koin.p047mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r5 = r4.defaultLazyMode()
            com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$1 r6 = new com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$1
            r0 = 0
            r6.<init>(r3, r0, r0)
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r6)
            r3.actionAdapter$delegate = r5
            kotlin.LazyThreadSafetyMode r5 = r4.defaultLazyMode()
            com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$2 r6 = new com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$2
            r6.<init>(r3, r0, r0)
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r6)
            r3.walletFlowCoordinator$delegate = r5
            kotlin.LazyThreadSafetyMode r4 = r4.defaultLazyMode()
            com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$3 r5 = new com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$special$$inlined$inject$default$3
            r5.<init>(r3, r0, r0)
            kotlin.Lazy r4 = kotlin.LazyKt.lazy(r4, r5)
            r3.resourceManager$delegate = r4
            com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2 r4 = new com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$networkIconCornerSize$2
            r4.<init>(r3)
            kotlin.Lazy r4 = kotlin.LazyKt.lazy(r4)
            r3.networkIconCornerSize$delegate = r4
            com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$binding$2 r4 = new com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$binding$2
            r4.<init>(r3)
            com.smedialink.utils.extentions.delegate.ResettableLazy r4 = com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r3, r0, r4, r1, r0)
            r3.binding$delegate = r4
            r4 = 0
            r3.setApplyBottomPadding(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog.<init>(org.telegram.ui.ActionBar.BaseFragment, com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$ScreenType, org.fork.utils.Callbacks$Callback1):void");
    }

    private final WalletTransactionDetailsPresenter getPresenter() {
        return (WalletTransactionDetailsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletActionAdapter getActionAdapter() {
        return (WalletActionAdapter) this.actionAdapter$delegate.getValue();
    }

    private final WalletFlowCoordinator getWalletFlowCoordinator() {
        return (WalletFlowCoordinator) this.walletFlowCoordinator$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final float getNetworkIconCornerSize() {
        return ((Number) this.networkIconCornerSize$delegate.getValue()).floatValue();
    }

    private final ForkContentWalletTransactionDetailsLayoutBinding getBinding() {
        return (ForkContentWalletTransactionDetailsLayoutBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupActionItem();
        setupTexts();
        setupRecycleView();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void setupScreenWithData(int i, String category, String amount, String recipientTitle, String recipient, String str, String status, String date, String processing, String fee, boolean z, boolean z2, Integer num) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(recipientTitle, "recipientTitle");
        Intrinsics.checkNotNullParameter(recipient, "recipient");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(date, "date");
        Intrinsics.checkNotNullParameter(processing, "processing");
        Intrinsics.checkNotNullParameter(fee, "fee");
        ForkContentWalletTransactionDetailsLayoutBinding binding = getBinding();
        binding.imageCoinIcon.setImageResource(i);
        binding.textTransactionType.setText(category);
        binding.textTransactionAmount.setText(amount);
        binding.textRecipientTitle.setText(recipientTitle);
        binding.textRecipientValue.setText(recipient);
        binding.textStatusValue.setText(status);
        binding.textDateValue.setText(date);
        binding.textProcessingValue.setText(processing);
        binding.textFeeValue.setText(fee);
        if (!(str == null || str.length() == 0)) {
            AppCompatTextView textCommentTitle = binding.textCommentTitle;
            Intrinsics.checkNotNullExpressionValue(textCommentTitle, "textCommentTitle");
            ViewExtKt.visible(textCommentTitle);
            DividerView dividerComment = binding.dividerComment;
            Intrinsics.checkNotNullExpressionValue(dividerComment, "dividerComment");
            ViewExtKt.visible(dividerComment);
            AppCompatTextView setupScreenWithData$lambda$2$lambda$0 = binding.textCommentValue;
            Intrinsics.checkNotNullExpressionValue(setupScreenWithData$lambda$2$lambda$0, "setupScreenWithData$lambda$2$lambda$0");
            ViewExtKt.visible(setupScreenWithData$lambda$2$lambda$0);
            setupScreenWithData$lambda$2$lambda$0.setText(str);
        }
        if (num != null) {
            AppCompatImageView setupScreenWithData$lambda$2$lambda$1 = binding.imageStakingIcon;
            Intrinsics.checkNotNullExpressionValue(setupScreenWithData$lambda$2$lambda$1, "setupScreenWithData$lambda$2$lambda$1");
            ViewExtKt.visible(setupScreenWithData$lambda$2$lambda$1);
            setupScreenWithData$lambda$2$lambda$1.setImageResource(num.intValue());
        }
        AppCompatTextView textFeeTitle = binding.textFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textFeeTitle, "textFeeTitle");
        textFeeTitle.setVisibility(z ? 0 : 8);
        AppCompatTextView textFeeValue = binding.textFeeValue;
        Intrinsics.checkNotNullExpressionValue(textFeeValue, "textFeeValue");
        textFeeValue.setVisibility(z ? 0 : 8);
        ActionBarMenuItem itemMoreOptions = binding.itemMoreOptions;
        Intrinsics.checkNotNullExpressionValue(itemMoreOptions, "itemMoreOptions");
        itemMoreOptions.setVisibility(z2 ? 0 : 8);
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void setupTransactionActions(final List<ActionItem> actionItems, final List<? extends Function0<Unit>> actionsListeners) {
        Intrinsics.checkNotNullParameter(actionItems, "actionItems");
        Intrinsics.checkNotNullParameter(actionsListeners, "actionsListeners");
        LinearLayout linearLayout = getBinding().linearActions;
        Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.linearActions");
        linearLayout.setVisibility(actionItems.isEmpty() ^ true ? 0 : 8);
        WalletActionAdapter actionAdapter = getActionAdapter();
        actionAdapter.setNewInstance(actionItems);
        actionAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                WalletTransactionDetailsBottomSheetDialog.setupTransactionActions$lambda$4$lambda$3(actionsListeners, this, actionItems, baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void setupTransactionActions$lambda$4$lambda$3(List actionsListeners, WalletTransactionDetailsBottomSheetDialog this$0, List actionItems, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Intrinsics.checkNotNullParameter(actionsListeners, "$actionsListeners");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(actionItems, "$actionItems");
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        ((Function0) actionsListeners.get(i)).invoke();
        Callbacks$Callback1<ActionItem> callbacks$Callback1 = this$0.parentAdditionalAction;
        if (callbacks$Callback1 != 0) {
            callbacks$Callback1.invoke(actionItems.get(i));
        }
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void actionCopyToClipboard(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        ContextExtKt.copyToClipboard$default(text, null, 2, null);
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void openSendScreen(TokenCode code, NetworkType networkType, String address) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(address, "address");
        WalletFlowCoordinator walletFlowCoordinator = getWalletFlowCoordinator();
        INavigationLayout parentLayout = this.fragment.getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "fragment.parentLayout");
        ManageLinksActivity newInstanceForWalletTransfer = ManageLinksActivity.newInstanceForWalletTransfer(new TransferScreenArgs(code, address, null, null, networkType, 12, null));
        Intrinsics.checkNotNullExpressionValue(newInstanceForWalletTransfer, "newInstanceForWalletTran…      )\n                )");
        WalletFlowCoordinator.start$default(walletFlowCoordinator, parentLayout, newInstanceForWalletTransfer, false, 4, null);
        dismiss();
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void openProfileScreen(long j) {
        ProfileActivity profileActivity = new ProfileActivity(BundleKt.bundleOf(TuplesKt.m99to("user_id", Long.valueOf(j))));
        profileActivity.setPlayProfileAnimation(0);
        this.fragment.presentFragment(profileActivity);
        dismiss();
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void openUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Browser.openUrl(this.fragment.getParentActivity(), url);
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void shareTransactionInfo(String transactionInfo) {
        Intrinsics.checkNotNullParameter(transactionInfo, "transactionInfo");
        Activity parentActivity = this.fragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "fragment.parentActivity");
        ContextExtKt.share(parentActivity, transactionInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmCancelDialog$lambda$6(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void showConfirmCancelDialog(DialogModel dialogModel, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = this.fragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "fragment.parentActivity");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda5
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTransactionDetailsBottomSheetDialog.showConfirmCancelDialog$lambda$6(Function0.this);
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showConfirmBoostDialog$lambda$8(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void showConfirmBoostDialog(DialogModel dialogModel, final Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(dialogModel, "dialogModel");
        Intrinsics.checkNotNullParameter(action, "action");
        Activity parentActivity = this.fragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "fragment.parentActivity");
        showDialog(DialogUtils.createDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda4
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTransactionDetailsBottomSheetDialog.showConfirmBoostDialog$lambda$8(Function0.this);
            }
        }, null, 8, null));
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void onSuccessCancelTransaction(String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        showDialog(DialogsFactoryKt.createSuccessAlert$default(this.fragment, getResourceManager().getString(C3301R.string.wallet_cancel_transaction_success_dialog_title), getResourceManager().getString(C3301R.string.wallet_cancel_transaction_success_dialog_description), null, null, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda3
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTransactionDetailsBottomSheetDialog.onSuccessCancelTransaction$lambda$9(WalletTransactionDetailsBottomSheetDialog.this);
            }
        }, 12, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSuccessCancelTransaction$lambda$9(WalletTransactionDetailsBottomSheetDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    @Override // com.smedialink.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void onSuccessBoostTransaction(String txHash) {
        Intrinsics.checkNotNullParameter(txHash, "txHash");
        showDialog(DialogsFactoryKt.createSuccessAlert$default(this.fragment, getResourceManager().getString(C3301R.string.wallet_boost_transaction_success_dialog_title), getResourceManager().getString(C3301R.string.wallet_boost_transaction_success_dialog_description), null, null, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda2
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletTransactionDetailsBottomSheetDialog.onSuccessBoostTransaction$lambda$10(WalletTransactionDetailsBottomSheetDialog.this);
            }
        }, 12, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onSuccessBoostTransaction$lambda$10(WalletTransactionDetailsBottomSheetDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    private final void setupActionItem() {
        final ActionBarMenuItem setupActionItem$lambda$13 = getBinding().itemMoreOptions;
        setupActionItem$lambda$13.setLongClickEnabled(false);
        setupActionItem$lambda$13.setSubMenuOpenSide(2);
        setupActionItem$lambda$13.setIcon(C3301R.C3303drawable.ic_ab_other);
        Intrinsics.checkNotNullExpressionValue(setupActionItem$lambda$13, "setupActionItem$lambda$13");
        ViewExtKt.setCircleRippleBackground(setupActionItem$lambda$13);
        setupActionItem$lambda$13.addSubItem(IdFabric$Menu.SHARE, C3301R.C3303drawable.msg_shareout, getResourceManager().getString(C3301R.string.common_share));
        setupActionItem$lambda$13.setOnClickListener(new View.OnClickListener() { // from class: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WalletTransactionDetailsBottomSheetDialog.setupActionItem$lambda$13$lambda$11(ActionBarMenuItem.this, view);
            }
        });
        setupActionItem$lambda$13.setDelegate(new ActionBarMenuItem.ActionBarMenuItemDelegate() { // from class: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$$ExternalSyntheticLambda6
            @Override // org.telegram.p048ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemDelegate
            public final void onItemClick(int i) {
                WalletTransactionDetailsBottomSheetDialog.setupActionItem$lambda$13$lambda$12(WalletTransactionDetailsBottomSheetDialog.this, i);
            }
        });
        setupActionItem$lambda$13.setContentDescription(LocaleController.getString("AccDescrMoreOptions", C3301R.string.AccDescrMoreOptions));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionItem$lambda$13$lambda$11(ActionBarMenuItem this_with, View view) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        this_with.toggleSubMenu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupActionItem$lambda$13$lambda$12(WalletTransactionDetailsBottomSheetDialog this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onSubItemClick(i);
    }

    private final void onSubItemClick(int i) {
        if (i == IdFabric$Menu.SHARE) {
            getPresenter().shareTransaction();
        }
    }

    private final void setupColors() {
        ForkContentWalletTransactionDetailsLayoutBinding binding = getBinding();
        this.shadowDrawable.setColorFilter(new PorterDuffColorFilter(Theme.getColor("actionBarDefault"), PorterDuff.Mode.SRC_IN));
        binding.constraintRoot.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
        binding.cardViewTransactionInfo.setCardBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        binding.linearActions.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        binding.constraintBottomAction.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
        binding.constraintLayoutHeader.setBackgroundColor(Theme.getColor("actionBarDefault"));
        binding.textTransactionType.setTextColor(Theme.getColor("actionBarDefaultTitle"));
        AppCompatImageView appCompatImageView = binding.imageStakingIcon;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor("windowBackgroundWhite")));
        materialShapeDrawable.setCornerSize(getNetworkIconCornerSize());
        appCompatImageView.setBackground(materialShapeDrawable);
        AppCompatTextView textFeeTitle = binding.textFeeTitle;
        Intrinsics.checkNotNullExpressionValue(textFeeTitle, "textFeeTitle");
        AppCompatTextView textProcessingTitle = binding.textProcessingTitle;
        Intrinsics.checkNotNullExpressionValue(textProcessingTitle, "textProcessingTitle");
        AppCompatTextView textDateTitle = binding.textDateTitle;
        Intrinsics.checkNotNullExpressionValue(textDateTitle, "textDateTitle");
        AppCompatTextView textRecipientTitle = binding.textRecipientTitle;
        Intrinsics.checkNotNullExpressionValue(textRecipientTitle, "textRecipientTitle");
        AppCompatTextView textStatusTitle = binding.textStatusTitle;
        Intrinsics.checkNotNullExpressionValue(textStatusTitle, "textStatusTitle");
        AppCompatTextView textCommentTitle = binding.textCommentTitle;
        Intrinsics.checkNotNullExpressionValue(textCommentTitle, "textCommentTitle");
        ViewExtKt.setTextsColor("windowBackgroundWhiteBlackText", textFeeTitle, textProcessingTitle, textDateTitle, textRecipientTitle, textStatusTitle, textCommentTitle);
        AppCompatTextView textFeeValue = binding.textFeeValue;
        Intrinsics.checkNotNullExpressionValue(textFeeValue, "textFeeValue");
        AppCompatTextView textProcessingValue = binding.textProcessingValue;
        Intrinsics.checkNotNullExpressionValue(textProcessingValue, "textProcessingValue");
        AppCompatTextView textDateValue = binding.textDateValue;
        Intrinsics.checkNotNullExpressionValue(textDateValue, "textDateValue");
        AppCompatTextView textRecipientValue = binding.textRecipientValue;
        Intrinsics.checkNotNullExpressionValue(textRecipientValue, "textRecipientValue");
        AppCompatTextView textStatusValue = binding.textStatusValue;
        Intrinsics.checkNotNullExpressionValue(textStatusValue, "textStatusValue");
        AppCompatTextView textCommentValue = binding.textCommentValue;
        Intrinsics.checkNotNullExpressionValue(textCommentValue, "textCommentValue");
        ViewExtKt.setTextsColor("windowBackgroundWhiteGrayText2", textFeeValue, textProcessingValue, textDateValue, textRecipientValue, textStatusValue, textCommentValue);
        AppCompatTextView setupColors$lambda$19$lambda$15 = binding.textSectionName;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$19$lambda$15, "setupColors$lambda$19$lambda$15");
        ViewExtKt.withMediumTypeface(setupColors$lambda$19$lambda$15);
        setupColors$lambda$19$lambda$15.setTextColor(Theme.getColor("windowBackgroundWhiteBlueHeader"));
        AppCompatTextView setupColors$lambda$19$lambda$16 = binding.textSectionActions;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$19$lambda$16, "setupColors$lambda$19$lambda$16");
        ViewExtKt.withMediumTypeface(setupColors$lambda$19$lambda$16);
        setupColors$lambda$19$lambda$16.setTextColor(Theme.getColor("windowBackgroundWhiteBlueHeader"));
        AppCompatTextView setupColors$lambda$19$lambda$17 = binding.textTransactionAmount;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$19$lambda$17, "setupColors$lambda$19$lambda$17");
        ViewExtKt.withMediumTypeface(setupColors$lambda$19$lambda$17);
        setupColors$lambda$19$lambda$17.setTextColor(Theme.getColor("actionBarDefaultTitle"));
        AppCompatTextView setupColors$lambda$19$lambda$18 = binding.textActionCancel;
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$19$lambda$18, "setupColors$lambda$19$lambda$18");
        ViewExtKt.setRippleBackground(setupColors$lambda$19$lambda$18, true);
        ViewExtKt.withMediumTypeface(setupColors$lambda$19$lambda$18);
        setupColors$lambda$19$lambda$18.setTextColor(Theme.getColor("chats_actionBackground"));
    }

    private final void setupRecycleView() {
        RecyclerView recyclerView = getBinding().recycleActions;
        recyclerView.setAdapter(getActionAdapter());
        recyclerView.setLayoutManager(new LinearLayoutManager(this.fragment.getParentActivity()));
    }

    private final void setupTexts() {
        ForkContentWalletTransactionDetailsLayoutBinding binding = getBinding();
        binding.textActionCancel.setText(getResourceManager().getString(C3301R.string.common_ok));
        binding.textSectionName.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_section_info));
        binding.textSectionActions.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_section_actions));
        binding.textFeeTitle.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_fee_title));
        binding.textProcessingTitle.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_processing_title));
        binding.textDateTitle.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_date_title));
        binding.textRecipientTitle.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_recipient_title));
        binding.textStatusTitle.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_status_title));
        binding.textCommentTitle.setText(getResourceManager().getString(C3301R.string.wallet_transaction_details_comment_title));
    }

    private final void setupListeners() {
        AppCompatTextView textActionCancel = getBinding().textActionCancel;
        Intrinsics.checkNotNullExpressionValue(textActionCancel, "textActionCancel");
        ViewExtKt.safeThrottledClick$default(textActionCancel, 0L, new WalletTransactionDetailsBottomSheetDialog$setupListeners$1$1(this), 1, null);
    }

    /* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$ScreenType */
    /* loaded from: classes3.dex */
    public static abstract class ScreenType {
        public /* synthetic */ ScreenType(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private ScreenType() {
        }

        /* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
        /* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails */
        /* loaded from: classes3.dex */
        public static final class TransactionDetails extends ScreenType {
            private final TransactionItem item;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof TransactionDetails) && Intrinsics.areEqual(this.item, ((TransactionDetails) obj).item);
            }

            public int hashCode() {
                return this.item.hashCode();
            }

            public String toString() {
                return "TransactionDetails(item=" + this.item + ')';
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public TransactionDetails(TransactionItem item) {
                super(null);
                Intrinsics.checkNotNullParameter(item, "item");
                this.item = item;
            }

            public final TransactionItem getItem() {
                return this.item;
            }
        }

        /* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
        /* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$ScreenType$StakingOperationDetails */
        /* loaded from: classes3.dex */
        public static final class StakingOperationDetails extends ScreenType {
            private final StakingOperationItem item;
            private final NetworkType networkType;

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof StakingOperationDetails) {
                    StakingOperationDetails stakingOperationDetails = (StakingOperationDetails) obj;
                    return Intrinsics.areEqual(this.item, stakingOperationDetails.item) && this.networkType == stakingOperationDetails.networkType;
                }
                return false;
            }

            public int hashCode() {
                return (this.item.hashCode() * 31) + this.networkType.hashCode();
            }

            public String toString() {
                return "StakingOperationDetails(item=" + this.item + ", networkType=" + this.networkType + ')';
            }

            public final StakingOperationItem getItem() {
                return this.item;
            }

            public final NetworkType getNetworkType() {
                return this.networkType;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public StakingOperationDetails(StakingOperationItem item, NetworkType networkType) {
                super(null);
                Intrinsics.checkNotNullParameter(item, "item");
                Intrinsics.checkNotNullParameter(networkType, "networkType");
                this.item = item;
                this.networkType = networkType;
            }
        }
    }

    /* compiled from: WalletTransactionDetailsBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.transaction.details.WalletTransactionDetailsBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void newInstance$lambda$0(ActionItem actionItem) {
        }

        private Companion() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ WalletTransactionDetailsBottomSheetDialog newInstance$default(Companion companion, BaseFragment baseFragment, ScreenType screenType, Callbacks$Callback1 callbacks$Callback1, int i, Object obj) {
            if ((i & 4) != 0) {
                callbacks$Callback1 = C2333xc5bfbef6.INSTANCE;
            }
            return companion.newInstance(baseFragment, screenType, callbacks$Callback1);
        }

        public final WalletTransactionDetailsBottomSheetDialog newInstance(BaseFragment fragment, ScreenType screenType, Callbacks$Callback1<ActionItem> callbacks$Callback1) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            return new WalletTransactionDetailsBottomSheetDialog(fragment, screenType, callbacks$Callback1);
        }
    }
}
