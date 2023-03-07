package com.smedialink.p031ui.wallet.crypto.settings;

import com.smedialink.model.wallet.crypto.settings.WalletSettingsItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletAccountSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsPresenter */
/* loaded from: classes3.dex */
public final class WalletAccountSettingsPresenter extends BasePresenter<WalletAccountSettingsView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;

    public WalletAccountSettingsPresenter(CryptoPreferenceHelper cryptoPreferenceHelper) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
    }

    public final void drawSettingsItems() {
        List listOfNotNull;
        List<WalletSettingsItem> mutableList;
        WalletAccountSettingsView walletAccountSettingsView = (WalletAccountSettingsView) getViewState();
        WalletSettingsItem[] walletSettingsItemArr = new WalletSettingsItem[4];
        walletSettingsItemArr[0] = WalletSettingsItem.Blockchains.INSTANCE;
        walletSettingsItemArr[1] = WalletSettingsItem.Privacy.INSTANCE;
        walletSettingsItemArr[2] = this.cryptoPreferenceHelper.getCurrentBlockchainType() == BlockchainType.EVM ? WalletSettingsItem.WalletConnect.INSTANCE : null;
        walletSettingsItemArr[3] = WalletSettingsItem.PinCode.INSTANCE;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(walletSettingsItemArr);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
        walletAccountSettingsView.setupSettingsItems(mutableList);
    }

    public final void resolveItemClick(WalletSettingsItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (item instanceof WalletSettingsItem.Blockchains) {
            ((WalletAccountSettingsView) getViewState()).openBlockchainsScreen();
        } else if (item instanceof WalletSettingsItem.Privacy) {
            ((WalletAccountSettingsView) getViewState()).openPrivacySettingsScreen();
        } else if (item instanceof WalletSettingsItem.WalletConnect) {
            ((WalletAccountSettingsView) getViewState()).openWalletConnectScreen();
        } else if (item instanceof WalletSettingsItem.PinCode) {
            ((WalletAccountSettingsView) getViewState()).openPinCodeSettingsScreen();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        drawSettingsItems();
    }
}
