package com.iMe.p031ui.wallet.crypto.wallet_connect.session_details;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.MvpBottomSheet;
import com.iMe.p031ui.custom.BigActionButton;
import com.iMe.p031ui.custom.DetailsIconCellView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.dialogs.DialogExtKt;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.extentions.delegate.ResettableLazy;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import moxy.ktx.MoxyKtxDelegate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.databinding.ForkContentWalletConnectSessionDetailsBinding;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: WalletConnectSessionDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog */
/* loaded from: classes6.dex */
public final class WalletConnectSessionDetailsBottomSheetDialog extends MvpBottomSheet implements WalletConnectSessionDetailsView {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(WalletConnectSessionDetailsBottomSheetDialog.class, "presenter", "getPresenter()Lcom/iMe/ui/wallet/crypto/wallet_connect/session_details/WalletConnectSessionDetailsPresenter;", 0)), Reflection.property1(new PropertyReference1Impl(WalletConnectSessionDetailsBottomSheetDialog.class, "binding", "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletConnectSessionDetailsBinding;", 0))};
    public static final Companion Companion = new Companion(null);
    private final ResettableLazy binding$delegate;
    private final Function0<Unit> disconnectAction;
    private final MoxyKtxDelegate presenter$delegate;
    private final Lazy resourceManager$delegate;

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public WalletConnectSessionDetailsBottomSheetDialog(final com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem r5, final org.telegram.p043ui.ActionBar.BaseFragment r6, kotlin.jvm.functions.Function0<kotlin.Unit> r7) {
        /*
            r4 = this;
            java.lang.String r0 = "item"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "fragment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "disconnectAction"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            android.app.Activity r0 = r6.getParentActivity()
            java.lang.String r1 = "fragment.parentActivity"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r1 = 1
            r4.<init>(r0, r1)
            r4.disconnectAction = r7
            com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$presenter$2 r7 = new com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$presenter$2
            r7.<init>()
            moxy.ktx.MoxyKtxDelegate r5 = new moxy.ktx.MoxyKtxDelegate
            moxy.MvpDelegate r0 = r4.getMvpDelegate()
            java.lang.String r2 = "mvpDelegate"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class<com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter> r3 = com.iMe.p031ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsPresenter.class
            java.lang.String r3 = r3.getName()
            r2.append(r3)
            java.lang.String r3 = "."
            r2.append(r3)
            java.lang.String r3 = "presenter"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r5.<init>(r0, r2, r7)
            r4.presenter$delegate = r5
            org.koin.mp.KoinPlatformTools r5 = org.koin.p042mp.KoinPlatformTools.INSTANCE
            kotlin.LazyThreadSafetyMode r5 = r5.defaultLazyMode()
            com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$special$$inlined$inject$default$1 r7 = new com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$special$$inlined$inject$default$1
            r0 = 0
            r7.<init>()
            kotlin.Lazy r5 = kotlin.LazyKt.lazy(r5, r7)
            r4.resourceManager$delegate = r5
            com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$binding$2 r5 = new com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$binding$2
            r5.<init>()
            com.iMe.utils.extentions.delegate.ResettableLazy r5 = com.iMe.utils.extentions.delegate.ResettableLazyDelegateKt.resettableLazy$default(r4, r0, r5, r1, r0)
            r4.binding$delegate = r5
            r5 = 0
            r4.setApplyBottomPadding(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog.<init>(com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem, org.telegram.ui.ActionBar.BaseFragment, kotlin.jvm.functions.Function0):void");
    }

    private final WalletConnectSessionDetailsPresenter getPresenter() {
        return (WalletConnectSessionDetailsPresenter) this.presenter$delegate.getValue(this, $$delegatedProperties[0]);
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) this.resourceManager$delegate.getValue();
    }

    private final ForkContentWalletConnectSessionDetailsBinding getBinding() {
        return (ForkContentWalletConnectSessionDetailsBinding) this.binding$delegate.getValue(this, $$delegatedProperties[1]);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpBottomSheet
    public View onCreateView(Bundle bundle) {
        setupColors();
        setupListeners();
        setupTexts();
        LinearLayoutCompat root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsView
    public void setupScreenWithData(String iconUrl, String name, String url, String connectedDate, String address, String network) {
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(connectedDate, "connectedDate");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(network, "network");
        ForkContentWalletConnectSessionDetailsBinding binding = getBinding();
        binding.viewHeader.setupViewData(iconUrl, name, url);
        binding.viewConnectedCell.setupViewData(getResourceManager().getString(C3473R.string.wallet_connect_session_details_connected), connectedDate, C3473R.C3475drawable.msg_calendar2, true);
        binding.viewAddressCell.setupViewData(getResourceManager().getString(C3473R.string.wallet_connect_session_details_address), address, C3473R.C3475drawable.fork_ic_nav_wallet_24, true);
        DetailsIconCellView viewNetworkCell = binding.viewNetworkCell;
        Intrinsics.checkNotNullExpressionValue(viewNetworkCell, "viewNetworkCell");
        DetailsIconCellView.setupViewData$default(viewNetworkCell, getResourceManager().getString(C3473R.string.wallet_connect_session_details_network), network, C3473R.C3475drawable.msg_language, false, 8, null);
    }

    private final void setupColors() {
        ForkContentWalletConnectSessionDetailsBinding binding = getBinding();
        binding.viewHeader.setupColors();
        binding.viewConnectedCell.setupColors();
        binding.viewAddressCell.setupColors();
        binding.viewNetworkCell.setupColors();
        binding.buttonDisconnect.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m72dp(4), Theme.getColor(Theme.key_chat_attachAudioBackground), ViewExtKt.withAlpha(Theme.getColor(Theme.key_windowBackgroundWhite), 120)));
    }

    private final void setupTexts() {
        getBinding().buttonDisconnect.setText(LocaleController.getString("Disconnect", C3473R.string.Disconnect));
    }

    private final void setupListeners() {
        BigActionButton bigActionButton = getBinding().buttonDisconnect;
        Intrinsics.checkNotNullExpressionValue(bigActionButton, "binding.buttonDisconnect");
        ViewExtKt.safeThrottledClick$default(bigActionButton, 0L, new Function1<View, Unit>() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$setupListeners$1
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
                WalletConnectSessionDetailsBottomSheetDialog.this.showDisconnectConfirmationDialog();
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDisconnectConfirmationDialog() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        AlertDialog createDialog$default = DialogUtils.createDialog$default(context, getPresenter().getDisconnectConfirmationDialogModel(), new Callbacks$Callback() { // from class: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletConnectSessionDetailsBottomSheetDialog.this.disconnect();
            }
        }, null, 8, null);
        showDialog(createDialog$default);
        DialogExtKt.makeRedPositiveButton(createDialog$default);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disconnect() {
        this.disconnectAction.invoke();
        dismiss();
    }

    /* compiled from: WalletConnectSessionDetailsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.session_details.WalletConnectSessionDetailsBottomSheetDialog$Companion */
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final WalletConnectSessionDetailsBottomSheetDialog newInstance(WalletConnectSessionItem sessionItem, BaseFragment fragment, Function0<Unit> disconnectAction) {
            Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(disconnectAction, "disconnectAction");
            return new WalletConnectSessionDetailsBottomSheetDialog(sessionItem, fragment, disconnectAction);
        }
    }
}
