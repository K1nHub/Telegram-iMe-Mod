package com.iMe.storage.data.utils.crypto;

import com.iMe.storage.R$color;
import com.iMe.storage.R$string;
import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: NetworksHelper.kt */
/* loaded from: classes3.dex */
public final class NetworksHelper implements KoinComponent {
    public static final NetworksHelper INSTANCE;
    private static final Lazy cryptoAccessManager$delegate;
    private static final Lazy cryptoPreferenceHelper$delegate;
    private static final Lazy default$delegate;
    private static final Lazy resourceManager$delegate;

    private NetworksHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final CryptoAccessManager getCryptoAccessManager() {
        return (CryptoAccessManager) cryptoAccessManager$delegate.getValue();
    }

    private final CryptoPreferenceHelper getCryptoPreferenceHelper() {
        return (CryptoPreferenceHelper) cryptoPreferenceHelper$delegate.getValue();
    }

    private final ResourceManager getResourceManager() {
        return (ResourceManager) resourceManager$delegate.getValue();
    }

    public final Network getDefault() {
        return (Network) default$delegate.getValue();
    }

    public final List<Network> getSupportedNetworks() {
        return getCryptoPreferenceHelper().getSupportedNetworks();
    }

    public final List<Network> getEnabledNetworks() {
        List<String> enabledNetworksIds = getCryptoPreferenceHelper().getEnabledNetworksIds();
        List<Network> supportedNetworks = getSupportedNetworks();
        ArrayList arrayList = new ArrayList();
        for (Object obj : supportedNetworks) {
            if (enabledNetworksIds.contains(((Network) obj).getId())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<Network> getEnabledCreatedNetworks() {
        List<BlockchainType> createdWalletsBlockchains = getCryptoAccessManager().getCreatedWalletsBlockchains();
        List<String> enabledNetworksIds = getCryptoPreferenceHelper().getEnabledNetworksIds();
        List<Network> supportedNetworks = getSupportedNetworks();
        ArrayList arrayList = new ArrayList();
        for (Object obj : supportedNetworks) {
            if (enabledNetworksIds.contains(((Network) obj).getId())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (createdWalletsBlockchains.contains(((Network) obj2).getBlockchainType())) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }

    public static final Network getNetworkById(String str) {
        Object obj;
        Iterator<T> it = INSTANCE.getSupportedNetworks().iterator();
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

    public final List<Network> getLoggedInNetworks() {
        return getNetworksByBlockchains(getCryptoAccessManager().getLoggedInWalletsBlockchains());
    }

    public final boolean isEVM(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        return getNetworkById(networkId).getBlockchainType() == BlockchainType.EVM;
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

    static {
        final NetworksHelper networksHelper = new NetworksHelper();
        INSTANCE = networksHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        cryptoAccessManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CryptoAccessManager>() { // from class: com.iMe.storage.data.utils.crypto.NetworksHelper$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.manager.crypto.CryptoAccessManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoAccessManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), qualifier, function0);
            }
        });
        cryptoPreferenceHelper$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CryptoPreferenceHelper>() { // from class: com.iMe.storage.data.utils.crypto.NetworksHelper$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.storage.domain.storage.CryptoPreferenceHelper] */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoPreferenceHelper invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoPreferenceHelper.class), qualifier, function0);
            }
        });
        resourceManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ResourceManager>() { // from class: com.iMe.storage.data.utils.crypto.NetworksHelper$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.system.ResourceManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final ResourceManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ResourceManager.class), qualifier, function0);
            }
        });
        default$delegate = LazyKt.lazy(new Function0<Network>() { // from class: com.iMe.storage.data.utils.crypto.NetworksHelper$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Network invoke() {
                Network createDefaultNetwork;
                createDefaultNetwork = NetworksHelper.INSTANCE.createDefaultNetwork();
                return createDefaultNetwork;
            }
        });
    }

    public final List<Network> getBinanceSupportedNetworks() {
        List<? extends BlockchainType> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new BlockchainType[]{BlockchainType.EVM, BlockchainType.TRON});
        return getNetworksByBlockchains(listOf);
    }

    public static final Network getBSCNetwork() {
        return getNetworkById(NetworkType.BSC);
    }

    public final boolean isNetworkEnabled(String networkId) {
        Intrinsics.checkNotNullParameter(networkId, "networkId");
        List<String> enabledNetworksIds = getCryptoPreferenceHelper().getEnabledNetworksIds();
        if ((enabledNetworksIds instanceof Collection) && enabledNetworksIds.isEmpty()) {
            return false;
        }
        for (String str : enabledNetworksIds) {
            if (Intrinsics.areEqual(str, networkId)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Network createDefaultNetwork() {
        BlockchainType blockchainType = BlockchainType.EVM;
        String string = getResourceManager().getString(R$string.wallet_network_type_bep20);
        String string2 = getResourceManager().getString(R$string.wallet_network_type_bsc_short_name);
        String string3 = getResourceManager().getString(R$color.wallet_network_bsc);
        String string4 = getResourceManager().getString(R$string.wallet_network_scanner_bsc);
        EnvironmentManager environmentManager = EnvironmentManager.INSTANCE;
        return new Network(NetworkType.BSC, blockchainType, string, string2, string3, new Network.Explorer(string4, environmentManager.getEnvironmentInformation().getBscScanUrl(), "https://storage.googleapis.com/blockchain-networks/static/LogoGrayScans/Etherscan.png", new Network.Explorer.PathTemplate("/address/{address}", "/token/{address}", "/tx/{hash}")), Long.valueOf(environmentManager.getEnvironment().isStageEnvironment() ? 97L : 56L), "https://storage.googleapis.com/blockchain-networks/static/bsc-network-big.png", "https://storage.googleapis.com/blockchain-networks/static/bsc-network-small.png");
    }
}
