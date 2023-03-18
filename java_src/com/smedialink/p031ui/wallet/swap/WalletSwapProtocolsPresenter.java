package com.smedialink.p031ui.wallet.swap;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.common.AppRxEvents;
import com.smedialink.model.common.NoChildNode;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.model.wallet.swap.CexProtocolItem;
import com.smedialink.model.wallet.swap.DexProtocolItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.domain.manager.binancepay.BinancePayManager;
import com.smedialink.storage.domain.model.binancepay.BinanceUserInfo;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.swap.CentralizedExchangesInfo;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;
import moxy.InjectViewState;
import org.telegram.messenger.C3286R;
/* compiled from: WalletSwapProtocolsPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.swap.WalletSwapProtocolsPresenter */
/* loaded from: classes3.dex */
public final class WalletSwapProtocolsPresenter extends BasePresenter<WalletSwapProtocolsView> {
    private final BinancePayManager binancePayManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;

    public WalletSwapProtocolsPresenter(ResourceManager resourceManager, CryptoPreferenceHelper cryptoPreferenceHelper, BinancePayManager binancePayManager, RxEventBus rxEventBus) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(binancePayManager, "binancePayManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        this.resourceManager = resourceManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.binancePayManager = binancePayManager;
        this.rxEventBus = rxEventBus;
    }

    public final void startBinanceExchangeFlow() {
        if (!this.binancePayManager.isAuthorized()) {
            this.rxEventBus.publish(AppRxEvents.BinanceOpenAuthScreen.INSTANCE);
            return;
        }
        BinanceUserInfo info = this.cryptoPreferenceHelper.getBinanceUserInfo().getInfo();
        boolean z = false;
        if (info != null && !info.isVerified()) {
            z = true;
        }
        if (z) {
            ((WalletSwapProtocolsView) getViewState()).showRequiredVerifyDialog();
        } else {
            ((WalletSwapProtocolsView) getViewState()).openBinanceConvertScreen();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void startSwapScreenFlow(SwapProtocolInfo swapProtocolInfo, TokenCode tokenCode) {
        boolean z;
        Intrinsics.checkNotNullParameter(swapProtocolInfo, "swapProtocolInfo");
        List<NetworkType> supportedNetworks = swapProtocolInfo.getSupportedNetworks();
        NetworkType networkType = null;
        if (tokenCode != null) {
            Iterator<T> it = supportedNetworks.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (((NetworkType) next) == this.cryptoPreferenceHelper.getNetworkType()) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (z) {
                    networkType = next;
                    break;
                }
            }
            networkType = networkType;
            if (networkType == null) {
                networkType = (NetworkType) CollectionsKt.firstOrNull(supportedNetworks);
            }
        }
        ((WalletSwapProtocolsView) getViewState()).openSwapScreen(swapProtocolInfo, networkType);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        loadExchanges();
    }

    private final void loadExchanges() {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int collectionSizeOrDefault3;
        List<? extends BaseNode> listOf;
        List<SwapProtocolInfo> supportedExchanges = SwapProtocolInfo.Companion.getSupportedExchanges();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedExchanges, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SwapProtocolInfo swapProtocolInfo : supportedExchanges) {
            arrayList.add(new DexProtocolItem(swapProtocolInfo, true));
        }
        DexProtocolItem[] dexProtocolItemArr = (DexProtocolItem[]) arrayList.toArray(new DexProtocolItem[0]);
        List<SwapProtocolInfo.Symbiosis> supportedCrossChainExchanges = SwapProtocolInfo.Companion.getSupportedCrossChainExchanges();
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedCrossChainExchanges, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (SwapProtocolInfo.Symbiosis symbiosis : supportedCrossChainExchanges) {
            arrayList2.add(new DexProtocolItem(symbiosis, true));
        }
        DexProtocolItem[] dexProtocolItemArr2 = (DexProtocolItem[]) arrayList2.toArray(new DexProtocolItem[0]);
        List<CentralizedExchangesInfo> supportedExchanges2 = CentralizedExchangesInfo.Companion.getSupportedExchanges();
        collectionSizeOrDefault3 = CollectionsKt__IterablesKt.collectionSizeOrDefault(supportedExchanges2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault3);
        for (CentralizedExchangesInfo centralizedExchangesInfo : supportedExchanges2) {
            arrayList3.add(new CexProtocolItem(centralizedExchangesInfo, true));
        }
        SpreadBuilder spreadBuilder = new SpreadBuilder(6);
        spreadBuilder.add(new HeaderItem(this.resourceManager.getString(C3286R.string.wallet_swap_protocols_header_title)));
        spreadBuilder.addSpread(dexProtocolItemArr);
        spreadBuilder.add(new HeaderItem(this.resourceManager.getString(C3286R.string.wallet_swap_protocols_cross_chain_header_title)));
        spreadBuilder.addSpread(dexProtocolItemArr2);
        spreadBuilder.add(new HeaderItem(this.resourceManager.getString(C3286R.string.wallet_swap_centralized_exchanges_header_title)));
        spreadBuilder.addSpread((CexProtocolItem[]) arrayList3.toArray(new CexProtocolItem[0]));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) spreadBuilder.toArray(new NoChildNode[spreadBuilder.size()]));
        ((WalletSwapProtocolsView) getViewState()).showExchangesProviders(listOf);
    }
}
