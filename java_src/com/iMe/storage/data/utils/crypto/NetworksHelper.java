package com.iMe.storage.data.utils.crypto;

import com.iMe.storage.R$color;
import com.iMe.storage.R$string;
import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: NetworksHelper.kt */
/* loaded from: classes3.dex */
public final class NetworksHelper implements KoinComponent {
    public static final NetworksHelper INSTANCE;
    private static final Lazy cryptoPreferenceHelper$delegate;
    private static final Lazy default$delegate;
    private static final Lazy resourceManager$delegate;

    private NetworksHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final CryptoPreferenceHelper getCryptoPreferenceHelper() {
        return (CryptoPreferenceHelper) cryptoPreferenceHelper$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    public static final List<Network> getSupportedNetworks() {
        return INSTANCE.getCryptoPreferenceHelper().getSupportedNetworks();
    }

    public final Network getDefault() {
        return (Network) default$delegate.getValue();
    }

    public static final Network getNetworkById(String str) {
        Object obj;
        Iterator<T> it = getSupportedNetworks().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((Network) obj).getId(), str)) {
                break;
            }
        }
        Network network = (Network) obj;
        return network == null ? INSTANCE.getDefault() : network;
    }

    public final Network getNetworkByChainId(long j) {
        Object obj;
        boolean z;
        Iterator<T> it = getSupportedNetworks().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Long chainId = ((Network) obj).getChainId();
            if (chainId != null && chainId.longValue() == j) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                break;
            }
        }
        Network network = (Network) obj;
        return network == null ? getDefault() : network;
    }

    public final List<Network> getNetworksByBlockchain(BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        List<Network> supportedNetworks = getSupportedNetworks();
        ArrayList arrayList = new ArrayList();
        for (Object obj : supportedNetworks) {
            if (((Network) obj).getBlockchainType() == blockchainType) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<Network> getNetworksByBlockchains(List<? extends BlockchainType> blockchainTypes) {
        Intrinsics.checkNotNullParameter(blockchainTypes, "blockchainTypes");
        List<Network> supportedNetworks = getSupportedNetworks();
        ArrayList arrayList = new ArrayList();
        for (Object obj : supportedNetworks) {
            if (blockchainTypes.contains(((Network) obj).getBlockchainType())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final boolean isEVM(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        List<Network> eVMNetworks = getEVMNetworks();
        if ((eVMNetworks instanceof Collection) && eVMNetworks.isEmpty()) {
            return false;
        }
        for (Network network : eVMNetworks) {
            if (Intrinsics.areEqual(network.getId(), networkId)) {
                return true;
            }
        }
        return false;
    }

    public final List<Network> getEVMNetworks() {
        List<Network> supportedNetworks = getSupportedNetworks();
        ArrayList arrayList = new ArrayList();
        for (Object obj : supportedNetworks) {
            if (((Network) obj).getBlockchainType() == BlockchainType.EVM) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<Network> getBinanceSupportedNetworks() {
        List<? extends BlockchainType> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new BlockchainType[]{BlockchainType.EVM, BlockchainType.TRON});
        return getNetworksByBlockchains(listOf);
    }

    public static final Network getBSCNetwork() {
        return getNetworkById(NetworkType.BSC);
    }

    static {
        NetworksHelper networksHelper = new NetworksHelper();
        INSTANCE = networksHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        cryptoPreferenceHelper$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new NetworksHelper$special$$inlined$inject$default$1(networksHelper, null, null));
        resourceManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new NetworksHelper$special$$inlined$inject$default$2(networksHelper, null, null));
        default$delegate = LazyKt.lazy(NetworksHelper$default$2.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Network createDefaultNetwork() {
        BlockchainType blockchainType = BlockchainType.EVM;
        String string = getResourceManager().getString(R$string.wallet_network_type_bep20);
        String string2 = getResourceManager().getString(R$string.wallet_network_type_bsc_short_name);
        String string3 = getResourceManager().getString(R$color.wallet_network_type_bep20);
        String string4 = getResourceManager().getString(R$string.wallet_network_scanner_bsc);
        EnvironmentManager environmentManager = EnvironmentManager.INSTANCE;
        return new Network(NetworkType.BSC, blockchainType, string, string2, string3, new Network.Explorer(string4, environmentManager.getEnvironmentInformation().getBscScanUrl(), "https://bscscan.com/images/favicon.ico", new Network.Explorer.PathTemplate("/address/{address}", "/token/{address}", "/tx/{hash}")), Long.valueOf(environmentManager.getEnvironment().isStageEnvironment() ? 97L : 56L), "https://altcoinsbox.com/wp-content/uploads/2023/01/bnb-chain-binance-smart-chain-logo.png", "https://altcoinsbox.com/wp-content/uploads/2023/01/bnb-chain-binance-smart-chain-logo.png");
    }
}
