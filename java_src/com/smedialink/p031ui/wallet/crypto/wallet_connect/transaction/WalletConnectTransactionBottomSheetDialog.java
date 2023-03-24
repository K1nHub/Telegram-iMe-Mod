package com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType;
import com.smedialink.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.smedialink.p031ui.base.mvp.MvpBottomSheet;
import com.smedialink.p031ui.custom.BigActionButton;
import com.smedialink.p031ui.custom.FeeView;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.dialogs.DialogUtils;
import com.smedialink.utils.extentions.common.ViewExtKt;
import com.smedialink.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.fork.utils.Callbacks$Callback;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.databinding.ForkContentWalletConnectTransactionBinding;
import org.telegram.p048ui.ActionBar.ActionBarMenuItem;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
/* compiled from: WalletConnectTransactionBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionBottomSheetDialog extends MvpBottomSheet implements WalletConnectTransactionView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletConnectTransactionBottomSheetDialog.class, "presenter", "getPresenter()Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletConnectTransactionBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectTransactionBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final WalletConnectTransactionScreenType screenType;
    private final Lazy walletFlowCoordinator$delegate;

    public static final WalletConnectTransactionBottomSheetDialog newInstance(WalletConnectTransactionScreenType walletConnectTransactionScreenType, BaseFragment baseFragment) {
        return Companion.newInstance(walletConnectTransactionScreenType, baseFragment);
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.telegram.p048ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WalletConnectTransactionBottomSheetDialog(com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType r5, org.telegram.p048ui.ActionBar.BaseFragment r6) {
        /*
            r4 = this;
            java.lang.String r0 = "screenType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r4.<init>(r0, r1)
            r4.screenType = r5
            r4.fragment = r6
            com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$presenter$2 r5 = new com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$presenter$2
            r5.<init>(r4)
            moxy.ktx.MoxyKtxDelegate r6 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r0 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter> r3 = com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r6.<init>(r0, r2, r5)
            r4.presenter$delegate = r6
            org.koin.mp.KoinPlatformTools r5 = org.koin.p047mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r6 = r5.defaultLazyMode()
            com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$1 r0 = new com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$1
            r2 = 0
            r0.<init>(r4, r2, r2)
            kotlin.Lazy r6 = kotlin.LazyKt.lazy(r6, r0)
            r4.walletFlowCoordinator$delegate = r6
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$2 r6 = new com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$special$$inlined$inject$default$2
            r6.<init>(r4, r2, r2)
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r6)
            r4.resourceManager$delegate = r5
            com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$binding$2 r5 = new com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$binding$2
            r5.<init>(r4)
            com.smedialink.utils.extentions.delegate.ResettableLazy r5 = com.smedialink.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r2, r5, r1, r2)
            r4.binding$delegate = r5
            r5 = 0
            r4.setApplyBottomPadding(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog.<init>(com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectTransactionScreenType, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    private final WalletConnectTransactionPresenter getPresenter() {
        return (WalletConnectTransactionPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletFlowCoordinator getWalletFlowCoordinator() {
        return (WalletFlowCoordinator) this.walletFlowCoordinator$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentWalletConnectTransactionBinding getBinding() {
        return (ForkContentWalletConnectTransactionBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.smedialink.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupViews();
        LinearLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView
    public void setupScreenWithData(String transactionAmount, String network, String from, String to, String peerUrl) {
        Intrinsics.checkNotNullParameter(transactionAmount, "transactionAmount");
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(peerUrl, "peerUrl");
        ForkContentWalletConnectTransactionBinding binding = getBinding();
        binding.textNetwork.setTextAndValue(getResourceManager().getString(C3301R.string.wallet_connect_session_details_network), network, true);
        binding.textFrom.setTextAndValue(getResourceManager().getString(C3301R.string.wallet_connect_transaction_from), from, true);
        binding.textTo.setTextAndValue(getResourceManager().getString(C3301R.string.wallet_connect_transaction_to), to, true);
        binding.textPeerUrl.setTextAndValue(getResourceManager().getString(C3301R.string.wallet_connect_transaction_dapp), peerUrl, true);
        binding.textTransactionAmount.setText(transactionAmount);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView
    public void showFee(FeeView.ChooseFeeType feeType) {
        Intrinsics.checkNotNullParameter(feeType, "feeType");
        FeeView showFee$lambda$1 = getBinding().feeView;
        Intrinsics.checkNotNullExpressionValue(showFee$lambda$1, "showFee$lambda$1");
        ViewExtKt.visible(showFee$lambda$1);
        showFee$lambda$1.init(this.fragment, this, feeType);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView
    public void onTransactionSuccess() {
        showToast(getResourceManager().getString(C3301R.string.wallet_connect_transaction_success));
        dismiss();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        rejectTransaction();
        super.onBackPressed();
    }

    private final void setupColors() {
        ForkContentWalletConnectTransactionBinding binding = getBinding();
        binding.buttonProcess.applyColors();
        ActionBarMenuItem setupColors$lambda$5$lambda$2 = binding.buttonClose;
        setupColors$lambda$5$lambda$2.setIconColor(getThemedColor("windowBackgroundWhiteGrayIcon"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$2, "setupColors$lambda$5$lambda$2");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$5$lambda$2);
        AppCompatTextView setupColors$lambda$5$lambda$3 = binding.textTitle;
        setupColors$lambda$5$lambda$3.setTextColor(getThemedColor("windowBackgroundWhiteBlueHeader"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$3, "setupColors$lambda$5$lambda$3");
        ViewExtKt.withMediumTypeface(setupColors$lambda$5$lambda$3);
        AppCompatTextView setupColors$lambda$5$lambda$4 = binding.textTransactionAmount;
        setupColors$lambda$5$lambda$4.setTextColor(getThemedColor("windowBackgroundWhiteBlackText"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$5$lambda$4, "setupColors$lambda$5$lambda$4");
        ViewExtKt.withMediumTypeface(setupColors$lambda$5$lambda$4);
    }

    private final void setupViews() {
        ForkContentWalletConnectTransactionBinding binding = getBinding();
        binding.textTitle.setText(getResourceManager().getString(C3301R.string.wallet_connect_transaction_title));
        binding.buttonProcess.setText(getResourceManager().getString(this.screenType.getButtonTextResId()));
        ActionBarMenuItem actionBarMenuItem = getBinding().buttonClose;
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setIcon(C3301R.C3303drawable.ic_close_white);
    }

    private final void setupListeners() {
        ForkContentWalletConnectTransactionBinding binding = getBinding();
        BigActionButton buttonProcess = binding.buttonProcess;
        Intrinsics.checkNotNullExpressionValue(buttonProcess, "buttonProcess");
        ViewExtKt.safeThrottledClick$default(buttonProcess, 0L, new WalletConnectTransactionBottomSheetDialog$setupListeners$1$1(this), 1, null);
        ActionBarMenuItem buttonClose = binding.buttonClose;
        Intrinsics.checkNotNullExpressionValue(buttonClose, "buttonClose");
        ViewExtKt.safeThrottledClick$default(buttonClose, 0L, new WalletConnectTransactionBottomSheetDialog$setupListeners$1$2(this), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showTransactionConfirmationDialog() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialog$default(context, getPresenter().getSendConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletConnectTransactionBottomSheetDialog.showTransactionConfirmationDialog$lambda$9(WalletConnectTransactionBottomSheetDialog.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showTransactionConfirmationDialog$lambda$9(WalletConnectTransactionBottomSheetDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletFlowCoordinator walletFlowCoordinator = this$0.getWalletFlowCoordinator();
        INavigationLayout parentLayout = this$0.fragment.getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "fragment.parentLayout");
        final WalletConnectTransactionPresenter presenter = this$0.getPresenter();
        WalletFlowCoordinator.startAction$default(walletFlowCoordinator, parentLayout, new Callbacks$Callback() { // from class: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$$ExternalSyntheticLambda1
            @Override // org.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletConnectTransactionPresenter.this.processTransaction();
            }
        }, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void rejectTransaction() {
        getPresenter().rejectTransaction();
        dismiss();
    }

    /* compiled from: WalletConnectTransactionBottomSheetDialog.kt */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletConnectTransactionBottomSheetDialog newInstance(WalletConnectTransactionScreenType screenType, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(screenType, "screenType");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new WalletConnectTransactionBottomSheetDialog(screenType, fragment);
        }
    }
}
