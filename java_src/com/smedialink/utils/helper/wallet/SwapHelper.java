package com.smedialink.utils.helper.wallet;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: SwapHelper.kt */
/* loaded from: classes3.dex */
public final class SwapHelper implements KoinComponent {
    public static final SwapHelper INSTANCE;
    private static final Lazy cryptoPreferenceHelper$delegate;

    /* compiled from: SwapHelper.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NetworkType.values().length];
            iArr[NetworkType.ETHEREUM.ordinal()] = 1;
            iArr[NetworkType.BINANCE_SMART_CHAIN.ordinal()] = 2;
            iArr[NetworkType.POLYGON.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SwapHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final CryptoPreferenceHelper getCryptoPreferenceHelper() {
        return (CryptoPreferenceHelper) cryptoPreferenceHelper$delegate.getValue();
    }

    public static /* synthetic */ SwapProtocol resolveSwapProtocolByNetwork$default(SwapHelper swapHelper, NetworkType networkType, int i, Object obj) {
        if ((i & 1) != 0) {
            networkType = swapHelper.getCryptoPreferenceHelper().getNetworkType();
        }
        return swapHelper.resolveSwapProtocolByNetwork(networkType);
    }

    public final SwapProtocol resolveSwapProtocolByNetwork(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        int i = WhenMappings.$EnumSwitchMapping$0[networkType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return SwapProtocol.UNISWAP_V3;
                }
                return SwapProtocol.ONEINCH;
            }
            return SwapProtocol.PANCAKESWAP;
        }
        return SwapProtocol.UNISWAP;
    }

    static {
        Lazy lazy;
        SwapHelper swapHelper = new SwapHelper();
        INSTANCE = swapHelper;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new SwapHelper$special$$inlined$inject$default$1(swapHelper, null, null));
        cryptoPreferenceHelper$delegate = lazy;
    }
}
