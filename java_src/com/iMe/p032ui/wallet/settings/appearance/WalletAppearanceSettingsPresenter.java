package com.iMe.p032ui.wallet.settings.appearance;

import com.iMe.model.wallet.settings.InterfaceSettingItem;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.RxEventBus;
import com.iMe.storage.domain.utils.p031rx.event.DomainRxEvents;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletAppearanceSettingsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsPresenter */
/* loaded from: classes4.dex */
public final class WalletAppearanceSettingsPresenter extends BasePresenter<WalletAppearanceSettingsView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private boolean needToUpdateHomeScreen;
    private final RxEventBus rxEventBus;

    public WalletAppearanceSettingsPresenter(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.rxEventBus = rxEventBus;
    }

    public final void resolveItemClick(InterfaceSettingItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.needToUpdateHomeScreen = true;
        if (item instanceof InterfaceSettingItem.Banners) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.cryptoPreferenceHelper;
            cryptoPreferenceHelper.setBannersVisible(true ^ cryptoPreferenceHelper.isBannersVisible());
        } else if (item instanceof InterfaceSettingItem.Quotations) {
            CryptoPreferenceHelper cryptoPreferenceHelper2 = this.cryptoPreferenceHelper;
            cryptoPreferenceHelper2.setQuotationsVisible(true ^ cryptoPreferenceHelper2.isQuotationsVisible());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        drawSettingsItems();
    }

    @Override // com.iMe.p032ui.base.mvp.base.BasePresenter, moxy.MvpPresenter
    public void onDestroy() {
        super.onDestroy();
        if (this.needToUpdateHomeScreen) {
            this.rxEventBus.publish(DomainRxEvents.InterfaceSettingsChanged.INSTANCE);
        }
    }

    private final void drawSettingsItems() {
        List listOfNotNull;
        List<InterfaceSettingItem> mutableList;
        InterfaceSettingItem[] interfaceSettingItemArr = new InterfaceSettingItem[2];
        interfaceSettingItemArr[0] = new InterfaceSettingItem.Banners(this.cryptoPreferenceHelper.isBannersVisible());
        interfaceSettingItemArr[1] = this.cryptoAccessManager.isCurrentBlockchainWalletCreated() ? new InterfaceSettingItem.Quotations(this.cryptoPreferenceHelper.isQuotationsVisible()) : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(interfaceSettingItemArr);
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
        ((WalletAppearanceSettingsView) getViewState()).setupSettingsItems(mutableList);
    }
}
