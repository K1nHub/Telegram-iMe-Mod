package com.iMe.p032ui.wallet.settings;

import com.iMe.model.wallet.settings.SettingMenuItem;
import com.iMe.model.wallet.settings.SettingUiItem;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.settings.WalletSettingsPresenter */
/* loaded from: classes4.dex */
public final class WalletSettingsPresenter extends BasePresenter<WalletSettingsView> {
    private final CryptoAccessManager cryptoAccessManager;

    public WalletSettingsPresenter(CryptoAccessManager cryptoAccessManager) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        this.cryptoAccessManager = cryptoAccessManager;
    }

    public final void loadSettingsMenu() {
        List<SettingMenuItem> listOfNotNull;
        int collectionSizeOrDefault;
        List<SettingUiItem> mutableList;
        SettingMenuItem[] settingMenuItemArr = new SettingMenuItem[3];
        settingMenuItemArr[0] = this.cryptoAccessManager.isAnyWalletCreated() ? SettingMenuItem.CRYPTO_ACCOUNT : null;
        settingMenuItemArr[1] = SettingMenuItem.INTERFACE;
        settingMenuItemArr[2] = SettingMenuItem.HELP;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(settingMenuItemArr);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOfNotNull, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SettingMenuItem settingMenuItem : listOfNotNull) {
            arrayList.add(new SettingUiItem(settingMenuItem));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        ((WalletSettingsView) getViewState()).setupSettingsItems(mutableList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadSettingsMenu();
    }
}
