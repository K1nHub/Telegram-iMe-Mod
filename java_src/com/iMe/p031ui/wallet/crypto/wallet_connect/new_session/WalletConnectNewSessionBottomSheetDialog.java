package com.iMe.p031ui.wallet.crypto.wallet_connect.new_session;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.databinding.ForkContentWalletConnectNewSessionBinding;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: WalletConnectNewSessionBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog */
/* loaded from: classes4.dex */
public final class WalletConnectNewSessionBottomSheetDialog extends MvpBottomSheet implements WalletConnectNewSessionView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletConnectNewSessionBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletConnectNewSessionBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectNewSessionBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;

    public static final WalletConnectNewSessionBottomSheetDialog newInstance(WCSessionStoreItem wCSessionStoreItem, BaseFragment baseFragment) {
        return Companion.newInstance(wCSessionStoreItem, baseFragment);
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    @Override // org.telegram.p044ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WalletConnectNewSessionBottomSheetDialog(com.trustwallet.walletconnect.WCSessionStoreItem r6, org.telegram.p044ui.ActionBar.BaseFragment r7) {
        /*
            r5 = this;
            java.lang.String r0 = "sessionItem"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            android.app.Activity r0 = r7.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r5.<init>(r0, r1)
            com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$presenter$2 r0 = new com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$presenter$2
            r0.<init>(r5, r6)
            moxy.ktx.MoxyKtxDelegate r6 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r2 = r5.getMvpDelegate()
            java.lang.String r3 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.Class<com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter> r4 = com.iMe.p031ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionPresenter.class
            java.lang.String r4 = r4.getName()
            r3.append(r4)
            java.lang.String r4 = "."
            r3.append(r4)
            java.lang.String r4 = "presenter"
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r6.<init>(r2, r3, r0)
            r5.presenter$delegate = r6
            org.koin.mp.KoinPlatformTools r6 = org.koin.p043mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r6 = r6.defaultLazyMode()
            com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$special$$inlined$inject$default$1 r0 = new com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$special$$inlined$inject$default$1
            r2 = 0
            r0.<init>(r5, r2, r2)
            kotlin.Lazy r6 = kotlin.LazyKt.lazy(r6, r0)
            r5.resourceManager$delegate = r6
            com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$binding$2 r6 = new com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$binding$2
            r6.<init>(r7)
            com.iMe.utils.extentions.delegate.ResettableLazy r6 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r5, r2, r6, r1, r2)
            r5.binding$delegate = r6
            r6 = 0
            r5.setApplyBottomPadding(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog.<init>(com.trustwallet.walletconnect.WCSessionStoreItem, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    private final WalletConnectNewSessionPresenter getPresenter() {
        return (WalletConnectNewSessionPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentWalletConnectNewSessionBinding getBinding() {
        return (ForkContentWalletConnectNewSessionBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupViews();
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionView
    public void setupScreenWithData(String iconUrl, String name, String url, String address, String network) {
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(network, "network");
        ForkContentWalletConnectNewSessionBinding binding = getBinding();
        binding.viewHeader.setupViewData(iconUrl, getResourceManager().getString(C3295R.string.wallet_connect_new_session_title, name), url);
        binding.viewWalletCell.setupViewData(getResourceManager().getString(C3295R.string.wallet_connect_new_session_wallet), address, C3295R.C3297drawable.fork_ic_nav_wallet_24, true);
        binding.viewNetworkCell.setupViewData(getResourceManager().getString(C3295R.string.wallet_connect_session_details_network), network, C3295R.C3297drawable.msg_language, true);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        rejectSession();
        super.onBackPressed();
    }

    private final void setupColors() {
        ForkContentWalletConnectNewSessionBinding binding = getBinding();
        binding.viewHeader.setupColors();
        binding.viewWalletCell.setupColors();
        binding.viewNetworkCell.setupColors();
        binding.buttonConnect.applyColors();
        ActionBarMenuItem setupColors$lambda$2$lambda$1 = binding.buttonClose;
        setupColors$lambda$2$lambda$1.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteGrayIcon));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$2$lambda$1, "setupColors$lambda$2$lambda$1");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$2$lambda$1);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        AppCompatTextView textViewBalance = binding.textViewBalance;
        Intrinsics.checkNotNullExpressionValue(textViewBalance, "textViewBalance");
        AppCompatTextView textTransactionsApproval = binding.textTransactionsApproval;
        Intrinsics.checkNotNullExpressionValue(textTransactionsApproval, "textTransactionsApproval");
        ViewExtKt.setTextsColor(i, textViewBalance, textTransactionsApproval);
        AppCompatImageView appCompatImageView = binding.imageViewBalance;
        int i2 = Theme.key_windowBackgroundWhiteBlueIcon;
        appCompatImageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.SRC_IN));
        binding.imageTransactionsApproval.setColorFilter(new PorterDuffColorFilter(getThemedColor(i2), PorterDuff.Mode.SRC_IN));
    }

    private final void setupViews() {
        ForkContentWalletConnectNewSessionBinding binding = getBinding();
        binding.textViewBalance.setText(getResourceManager().getString(C3295R.string.wallet_connect_new_session_view_balance));
        binding.textTransactionsApproval.setText(getResourceManager().getString(C3295R.string.wallet_connect_new_transactions_approval));
        binding.buttonConnect.setText(getResourceManager().getString(C3295R.string.wallet_connect_new_connection));
        ActionBarMenuItem actionBarMenuItem = getBinding().buttonClose;
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setIcon(C3295R.C3297drawable.ic_close_white);
    }

    private final void setupListeners() {
        ForkContentWalletConnectNewSessionBinding binding = getBinding();
        BigActionButton buttonConnect = binding.buttonConnect;
        Intrinsics.checkNotNullExpressionValue(buttonConnect, "buttonConnect");
        ViewExtKt.safeThrottledClick$default(buttonConnect, 0L, new WalletConnectNewSessionBottomSheetDialog$setupListeners$1$1(this), 1, null);
        ActionBarMenuItem buttonClose = binding.buttonClose;
        Intrinsics.checkNotNullExpressionValue(buttonClose, "buttonClose");
        ViewExtKt.safeThrottledClick$default(buttonClose, 0L, new WalletConnectNewSessionBottomSheetDialog$setupListeners$1$2(this), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void approveSession() {
        getPresenter().approveSession();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void rejectSession() {
        getPresenter().rejectSession();
        dismiss();
    }

    /* compiled from: WalletConnectNewSessionBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionBottomSheetDialog$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletConnectNewSessionBottomSheetDialog newInstance(WCSessionStoreItem sessionItem, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new WalletConnectNewSessionBottomSheetDialog(sessionItem, fragment);
        }
    }
}
