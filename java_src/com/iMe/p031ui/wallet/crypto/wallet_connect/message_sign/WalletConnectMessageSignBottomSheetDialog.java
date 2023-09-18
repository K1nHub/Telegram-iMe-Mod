package com.iMe.p031ui.wallet.crypto.wallet_connect.message_sign;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.databinding.ForkContentWalletConnectMessageSignBinding;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: WalletConnectMessageSignBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog */
/* loaded from: classes6.dex */
public final class WalletConnectMessageSignBottomSheetDialog extends MvpBottomSheet implements WalletConnectMessageSignView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletConnectMessageSignBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletConnectMessageSignBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectMessageSignBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final BaseFragment fragment;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;
    private final Lazy walletFlowCoordinator$delegate;

    public static final WalletConnectMessageSignBottomSheetDialog newInstance(long j, WalletConnectSessionItem walletConnectSessionItem, WCEthereumSignMessage wCEthereumSignMessage, WalletConnectManager walletConnectManager, BaseFragment baseFragment) {
        return Companion.newInstance(j, walletConnectSessionItem, wCEthereumSignMessage, walletConnectManager, baseFragment);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WalletConnectMessageSignBottomSheetDialog(final long r10, final com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem r12, final com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage r13, final com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager r14, org.telegram.p043ui.ActionBar.BaseFragment r15) {
        /*
            r9 = this;
            java.lang.String r0 = "sessionItem"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "message"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "walletConnectManager"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            android.app.Activity r0 = r15.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r9.<init>(r0, r1)
            r9.fragment = r15
            com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$presenter$2 r15 = new com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$presenter$2
            r2 = r15
            r3 = r9
            r4 = r10
            r6 = r12
            r7 = r13
            r8 = r14
            r2.<init>()
            moxy.ktx.MoxyKtxDelegate r10 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r11 = r9.getMvpDelegate()
            java.lang.String r12 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r11, r12)
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            r12.<init>()
            java.lang.Class<com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter> r13 = com.iMe.p031ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignPresenter.class
            java.lang.String r13 = r13.getName()
            r12.append(r13)
            java.lang.String r13 = "."
            r12.append(r13)
            java.lang.String r13 = "presenter"
            r12.append(r13)
            java.lang.String r12 = r12.toString()
            r10.<init>(r11, r12, r15)
            r9.presenter$delegate = r10
            org.koin.mp.KoinPlatformTools r10 = org.koin.p042mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r11 = r10.defaultLazyMode()
            com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$1 r12 = new com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$1
            r13 = 0
            r12.<init>()
            kotlin.Lazy r11 = kotlin.LazyKt.lazy(r11, r12)
            r9.walletFlowCoordinator$delegate = r11
            kotlin.LazyThreadSafetyMode r10 = r10.defaultLazyMode()
            com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$2 r11 = new com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$special$$inlined$inject$default$2
            r11.<init>()
            kotlin.Lazy r10 = kotlin.LazyKt.lazy(r10, r11)
            r9.resourceManager$delegate = r10
            com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$binding$2 r10 = new com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$binding$2
            r10.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r10 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r9, r13, r10, r1, r13)
            r9.binding$delegate = r10
            r10 = 0
            r9.setApplyBottomPadding(r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog.<init>(long, com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem, com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage, com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    private final WalletConnectMessageSignPresenter getPresenter() {
        return (WalletConnectMessageSignPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final WalletFlowCoordinator getWalletFlowCoordinator() {
        return (WalletFlowCoordinator) this.walletFlowCoordinator$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentWalletConnectMessageSignBinding getBinding() {
        return (ForkContentWalletConnectMessageSignBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupViews();
        NestedScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignView
    public void setupScreenWithData(String message, String from, String peerUrl) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(peerUrl, "peerUrl");
        ForkContentWalletConnectMessageSignBinding binding = getBinding();
        binding.textMessage.setText(message);
        binding.textFrom.setTextAndValue(from, getResourceManager().getString(C3473R.string.wallet_connect_transaction_from), true);
        binding.textPeerUrl.setTextAndValue(peerUrl, getResourceManager().getString(C3473R.string.wallet_connect_transaction_dapp), false);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        getPresenter().rejectSign();
        super.dismiss();
    }

    private final void setupColors() {
        ForkContentWalletConnectMessageSignBinding binding = getBinding();
        binding.buttonProcess.applyColors();
        ActionBarMenuItem setupColors$lambda$4$lambda$1 = binding.buttonClose;
        setupColors$lambda$4$lambda$1.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$1, "setupColors$lambda$4$lambda$1");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$4$lambda$1);
        AppCompatTextView setupColors$lambda$4$lambda$2 = binding.textTitle;
        setupColors$lambda$4$lambda$2.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlueHeader));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$2, "setupColors$lambda$4$lambda$2");
        ViewExtKt.withMediumTypeface(setupColors$lambda$4$lambda$2);
        AppCompatTextView setupColors$lambda$4$lambda$3 = binding.textMessage;
        setupColors$lambda$4$lambda$3.setTextColor(getThemedColor(Theme.key_windowBackgroundWhiteBlackText));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$4$lambda$3, "setupColors$lambda$4$lambda$3");
        ViewExtKt.withMonoTypeface(setupColors$lambda$4$lambda$3);
    }

    private final void setupViews() {
        ForkContentWalletConnectMessageSignBinding binding = getBinding();
        binding.textTitle.setText(getResourceManager().getString(C3473R.string.wallet_connect_transaction_title));
        binding.buttonProcess.setText(getResourceManager().getString(C3473R.string.wallet_connect_transaction_button_sign));
        ActionBarMenuItem actionBarMenuItem = binding.buttonClose;
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setIcon(C3473R.C3475drawable.ic_close_white);
    }

    private final void setupListeners() {
        ForkContentWalletConnectMessageSignBinding binding = getBinding();
        BigActionButton buttonProcess = binding.buttonProcess;
        Intrinsics.checkNotNullExpressionValue(buttonProcess, "buttonProcess");
        ViewExtKt.safeThrottledClick$default(buttonProcess, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$setupListeners$1$1
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
                WalletConnectMessageSignBottomSheetDialog.this.showSignConfirmationDialog();
            }
        }, 1, null);
        ActionBarMenuItem buttonClose = binding.buttonClose;
        Intrinsics.checkNotNullExpressionValue(buttonClose, "buttonClose");
        ViewExtKt.safeThrottledClick$default(buttonClose, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$setupListeners$1$2
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
                WalletConnectMessageSignBottomSheetDialog.this.dismiss();
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showSignConfirmationDialog() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        showDialog(DialogUtils.createDialog$default(context, getPresenter().getSendConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletConnectMessageSignBottomSheetDialog.showSignConfirmationDialog$lambda$9(WalletConnectMessageSignBottomSheetDialog.this);
            }
        }, null, 8, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSignConfirmationDialog$lambda$9(final WalletConnectMessageSignBottomSheetDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        WalletFlowCoordinator walletFlowCoordinator = this$0.getWalletFlowCoordinator();
        INavigationLayout parentLayout = this$0.fragment.getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "fragment.parentLayout");
        WalletFlowCoordinator.startAction$default(walletFlowCoordinator, parentLayout, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletConnectMessageSignBottomSheetDialog.showSignConfirmationDialog$lambda$9$lambda$8(WalletConnectMessageSignBottomSheetDialog.this);
            }
        }, false, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showSignConfirmationDialog$lambda$9$lambda$8(WalletConnectMessageSignBottomSheetDialog this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().approveSign();
        this$0.dismiss();
    }

    /* compiled from: WalletConnectMessageSignBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignBottomSheetDialog$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletConnectMessageSignBottomSheetDialog newInstance(long j, WalletConnectSessionItem sessionItem, WCEthereumSignMessage message, WalletConnectManager walletConnectManager, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(walletConnectManager, "walletConnectManager");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new WalletConnectMessageSignBottomSheetDialog(j, sessionItem, message, walletConnectManager, fragment);
        }
    }
}
