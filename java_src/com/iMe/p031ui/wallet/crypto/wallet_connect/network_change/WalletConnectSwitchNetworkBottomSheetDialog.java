package com.iMe.p031ui.wallet.crypto.wallet_connect.network_change;

import android.os.Bundle;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.databinding.ForkContentWalletConnectSwitchNetworkBinding;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: WalletConnectSwitchNetworkBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog */
/* loaded from: classes3.dex */
public final class WalletConnectSwitchNetworkBottomSheetDialog extends MvpBottomSheet implements WalletConnectSwitchNetworkView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletConnectSwitchNetworkBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletConnectSwitchNetworkBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSwitchNetworkBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;

    public static final WalletConnectSwitchNetworkBottomSheetDialog newInstance(long j, WalletConnectSessionItem walletConnectSessionItem, NetworkType networkType, BaseFragment baseFragment) {
        return Companion.newInstance(j, walletConnectSessionItem, networkType, baseFragment);
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
    public WalletConnectSwitchNetworkBottomSheetDialog(long r9, com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem r11, com.iMe.storage.domain.model.crypto.NetworkType r12, org.telegram.p044ui.ActionBar.BaseFragment r13) {
        /*
            r8 = this;
            java.lang.String r0 = "sessionItem"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "networkType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            android.app.Activity r0 = r13.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r8.<init>(r0, r1)
            com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$presenter$2 r0 = new com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$presenter$2
            r2 = r0
            r3 = r8
            r4 = r9
            r6 = r11
            r7 = r12
            r2.<init>(r3, r4, r6, r7)
            moxy.ktx.MoxyKtxDelegate r9 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r10 = r8.getMvpDelegate()
            java.lang.String r11 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r10, r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.Class<com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter> r12 = com.iMe.p031ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkPresenter.class
            java.lang.String r12 = r12.getName()
            r11.append(r12)
            java.lang.String r12 = "."
            r11.append(r12)
            java.lang.String r12 = "presenter"
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r9.<init>(r10, r11, r0)
            r8.presenter$delegate = r9
            org.koin.mp.KoinPlatformTools r9 = org.koin.p043mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r9 = r9.defaultLazyMode()
            com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$special$$inlined$inject$default$1 r10 = new com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$special$$inlined$inject$default$1
            r11 = 0
            r10.<init>(r8, r11, r11)
            kotlin.Lazy r9 = kotlin.LazyKt.lazy(r9, r10)
            r8.resourceManager$delegate = r9
            com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$binding$2 r9 = new com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$binding$2
            r9.<init>(r13)
            com.iMe.utils.extentions.delegate.ResettableLazy r9 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r8, r11, r9, r1, r11)
            r8.binding$delegate = r9
            r9 = 0
            r8.setApplyBottomPadding(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog.<init>(long, com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem, com.iMe.storage.domain.model.crypto.NetworkType, org.telegram.ui.ActionBar.BaseFragment):void");
    }

    private final WalletConnectSwitchNetworkPresenter getPresenter() {
        return (WalletConnectSwitchNetworkPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentWalletConnectSwitchNetworkBinding getBinding() {
        return (ForkContentWalletConnectSwitchNetworkBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupViews();
        setupColors();
        setupListeners();
        ConstraintLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkView
    public void setupScreenWithData(String iconUrl, String name, String url, int i, String networkName) {
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(networkName, "networkName");
        ForkContentWalletConnectSwitchNetworkBinding binding = getBinding();
        binding.viewHeader.setupViewData(iconUrl, getResourceManager().getString(C3242R.string.wallet_connect_switch_network_title, name), url);
        binding.viewNetworkCell.setupViewData(getResourceManager().getString(C3242R.string.wallet_connect_session_details_network), networkName, i, true);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        rejectNetworkChange();
        super.onBackPressed();
    }

    private final void setupColors() {
        ForkContentWalletConnectSwitchNetworkBinding binding = getBinding();
        binding.viewHeader.setupColors();
        binding.viewNetworkCell.setupColors();
        binding.buttonChangeNetwork.applyColors();
        ActionBarMenuItem setupColors$lambda$2$lambda$1 = binding.buttonClose;
        setupColors$lambda$2$lambda$1.setIconColor(getThemedColor("windowBackgroundWhiteGrayIcon"));
        Intrinsics.checkNotNullExpressionValue(setupColors$lambda$2$lambda$1, "setupColors$lambda$2$lambda$1");
        ViewExtKt.setCircleRippleBackground(setupColors$lambda$2$lambda$1);
    }

    private final void setupViews() {
        ForkContentWalletConnectSwitchNetworkBinding binding = getBinding();
        binding.viewNetworkCell.setIconTinted(false);
        binding.buttonChangeNetwork.setText(getResourceManager().getString(C3242R.string.wallet_connect_switch_network));
        ActionBarMenuItem actionBarMenuItem = getBinding().buttonClose;
        actionBarMenuItem.setLongClickEnabled(false);
        actionBarMenuItem.setIcon(C3242R.C3244drawable.ic_close_white);
    }

    private final void setupListeners() {
        ForkContentWalletConnectSwitchNetworkBinding binding = getBinding();
        BigActionButton buttonChangeNetwork = binding.buttonChangeNetwork;
        Intrinsics.checkNotNullExpressionValue(buttonChangeNetwork, "buttonChangeNetwork");
        ViewExtKt.safeThrottledClick$default(buttonChangeNetwork, 0L, new WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$1(this), 1, null);
        ActionBarMenuItem buttonClose = binding.buttonClose;
        Intrinsics.checkNotNullExpressionValue(buttonClose, "buttonClose");
        ViewExtKt.safeThrottledClick$default(buttonClose, 0L, new WalletConnectSwitchNetworkBottomSheetDialog$setupListeners$1$2(this), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void approveNetworkChange() {
        getPresenter().approveNetworkChange();
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void rejectNetworkChange() {
        getPresenter().rejectNetworkChange();
        dismiss();
    }

    /* compiled from: WalletConnectSwitchNetworkBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkBottomSheetDialog$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletConnectSwitchNetworkBottomSheetDialog newInstance(long j, WalletConnectSessionItem sessionItem, NetworkType networkType, BaseFragment fragment) {
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(networkType, "networkType");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            return new WalletConnectSwitchNetworkBottomSheetDialog(j, sessionItem, networkType, fragment);
        }
    }
}
