package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.domain.model.crypto.NetworkType;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapProtocolInfo.kt */
/* loaded from: classes3.dex */
public abstract class SwapProtocolInfo implements Exchange {
    public static final Companion Companion = new Companion(null);
    private static final Lazy<List<SwapProtocolInfo>> allExchanges$delegate;
    private static final Lazy<List<UniswapV3>> invisibleExchanges$delegate;
    private static final Lazy<List<Symbiosis>> supportedCrossChainExchanges$delegate;
    private static final Lazy<List<SwapProtocolInfo>> supportedExchanges$delegate;
    private final SwapProtocol code;
    private final int description;
    private final int logo;
    private final int longDescription;
    private final int name;
    private final List<NetworkType> supportedNetworks;

    public /* synthetic */ SwapProtocolInfo(SwapProtocol swapProtocol, int i, int i2, int i3, int i4, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(swapProtocol, i, i2, i3, i4, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SwapProtocolInfo(SwapProtocol swapProtocol, int i, int i2, int i3, int i4, List<? extends NetworkType> list) {
        this.code = swapProtocol;
        this.logo = i;
        this.name = i2;
        this.description = i3;
        this.longDescription = i4;
        this.supportedNetworks = list;
    }

    public final SwapProtocol getCode() {
        return this.code;
    }

    public final int getLogo() {
        return this.logo;
    }

    public final int getName() {
        return this.name;
    }

    public final int getDescription() {
        return this.description;
    }

    public final int getLongDescription() {
        return this.longDescription;
    }

    public final List<NetworkType> getSupportedNetworks() {
        return this.supportedNetworks;
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Uniswap extends SwapProtocolInfo {
        public static final Uniswap INSTANCE = new Uniswap();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Uniswap() {
            /*
                r8 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.UNISWAP
                int r2 = com.iMe.storage.R$drawable.fork_ic_uniswap_92
                int r3 = com.iMe.storage.R$string.wallet_swap_protocols_uniswap_name
                int r4 = com.iMe.storage.R$string.wallet_swap_protocols_uniswap_description
                int r5 = com.iMe.storage.R$string.wallet_swap_process_description
                r0 = 2
                com.iMe.storage.domain.model.crypto.NetworkType[] r0 = new com.iMe.storage.domain.model.crypto.NetworkType[r0]
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.ETHEREUM
                r7 = 0
                r0[r7] = r6
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.POLYGON
                r7 = 1
                r0[r7] = r6
                java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r0)
                r7 = 0
                r0 = r8
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.Uniswap.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes3.dex */
    public static final class UniswapV3 extends SwapProtocolInfo {
        public static final UniswapV3 INSTANCE = new UniswapV3();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private UniswapV3() {
            /*
                r8 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.UNISWAP_V3
                int r2 = com.iMe.storage.R$drawable.fork_ic_uniswap_92
                int r3 = com.iMe.storage.R$string.wallet_swap_protocols_uniswap_name
                int r4 = com.iMe.storage.R$string.wallet_swap_protocols_uniswap_description
                int r5 = com.iMe.storage.R$string.wallet_swap_process_description
                r0 = 2
                com.iMe.storage.domain.model.crypto.NetworkType[] r0 = new com.iMe.storage.domain.model.crypto.NetworkType[r0]
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.ETHEREUM
                r7 = 0
                r0[r7] = r6
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.POLYGON
                r7 = 1
                r0[r7] = r6
                java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r0)
                r7 = 0
                r0 = r8
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.UniswapV3.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes3.dex */
    public static final class PancakeSwap extends SwapProtocolInfo {
        public static final PancakeSwap INSTANCE = new PancakeSwap();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private PancakeSwap() {
            /*
                r8 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.PANCAKESWAP
                int r2 = com.iMe.storage.R$drawable.fork_ic_pancake_swap_92
                int r3 = com.iMe.storage.R$string.wallet_swap_protocols_pancake_swap_name
                int r4 = com.iMe.storage.R$string.wallet_swap_protocols_pancake_swap_description
                int r5 = com.iMe.storage.R$string.wallet_swap_protocols_pancake_swap_long_description
                com.iMe.storage.domain.model.crypto.NetworkType r0 = com.iMe.storage.domain.model.crypto.NetworkType.BINANCE_SMART_CHAIN
                java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r0)
                r7 = 0
                r0 = r8
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.PancakeSwap.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Oneinch extends SwapProtocolInfo {
        public static final Oneinch INSTANCE = new Oneinch();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Oneinch() {
            /*
                r8 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.ONEINCH
                int r2 = com.iMe.storage.R$drawable.fork_ic_1_inch_92
                int r3 = com.iMe.storage.R$string.wallet_swap_protocols_1inch_name
                int r4 = com.iMe.storage.R$string.wallet_swap_protocols_1inch_description
                int r5 = com.iMe.storage.R$string.wallet_swap_protocols_1inch_long_description
                r0 = 3
                com.iMe.storage.domain.model.crypto.NetworkType[] r0 = new com.iMe.storage.domain.model.crypto.NetworkType[r0]
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.BINANCE_SMART_CHAIN
                r7 = 0
                r0[r7] = r6
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.ETHEREUM
                r7 = 1
                r0[r7] = r6
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.POLYGON
                r7 = 2
                r0[r7] = r6
                java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r0)
                r7 = 0
                r0 = r8
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.Oneinch.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Symbiosis extends SwapProtocolInfo {
        public static final Symbiosis INSTANCE = new Symbiosis();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Symbiosis() {
            /*
                r8 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.SYMBIOSIS
                int r2 = com.iMe.storage.R$drawable.fork_ic_symdiosis_92
                int r3 = com.iMe.storage.R$string.wallet_swap_protocols_symbiosis_name
                int r4 = com.iMe.storage.R$string.wallet_swap_protocols_symbiosis_description
                int r5 = com.iMe.storage.R$string.wallet_swap_protocols_symbiosis_long_description
                r0 = 2
                com.iMe.storage.domain.model.crypto.NetworkType[] r0 = new com.iMe.storage.domain.model.crypto.NetworkType[r0]
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.BINANCE_SMART_CHAIN
                r7 = 0
                r0[r7] = r6
                com.iMe.storage.domain.model.crypto.NetworkType r6 = com.iMe.storage.domain.model.crypto.NetworkType.POLYGON
                r7 = 1
                r0[r7] = r6
                java.util.List r6 = kotlin.collections.CollectionsKt.listOf(r0)
                r7 = 0
                r0 = r8
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.Symbiosis.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Unknown extends SwapProtocolInfo {
        public static final Unknown INSTANCE = new Unknown();

        private Unknown() {
            super(SwapProtocol.UNKNOWN, 0, 0, 0, 0, NetworkType.Companion.getEVMNetworks(), null);
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<SwapProtocolInfo> getAllExchanges() {
            return (List) SwapProtocolInfo.allExchanges$delegate.getValue();
        }

        public final List<SwapProtocolInfo> getSupportedExchanges() {
            return (List) SwapProtocolInfo.supportedExchanges$delegate.getValue();
        }

        public final List<Symbiosis> getSupportedCrossChainExchanges() {
            return (List) SwapProtocolInfo.supportedCrossChainExchanges$delegate.getValue();
        }

        public final List<UniswapV3> getInvisibleExchanges() {
            return (List) SwapProtocolInfo.invisibleExchanges$delegate.getValue();
        }

        public final SwapProtocolInfo map(String code) {
            Object obj;
            Intrinsics.checkNotNullParameter(code, "code");
            Iterator<T> it = getAllExchanges().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((SwapProtocolInfo) obj).getCode().name(), code)) {
                    break;
                }
            }
            SwapProtocolInfo swapProtocolInfo = (SwapProtocolInfo) obj;
            return swapProtocolInfo == null ? Unknown.INSTANCE : swapProtocolInfo;
        }

        public final SwapProtocolInfo map(SwapProtocol code) {
            Object obj;
            boolean z;
            Intrinsics.checkNotNullParameter(code, "code");
            Iterator<T> it = getAllExchanges().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((SwapProtocolInfo) obj).getCode() == code) {
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
            SwapProtocolInfo swapProtocolInfo = (SwapProtocolInfo) obj;
            return swapProtocolInfo == null ? Unknown.INSTANCE : swapProtocolInfo;
        }
    }

    static {
        Lazy<List<SwapProtocolInfo>> lazy;
        Lazy<List<SwapProtocolInfo>> lazy2;
        Lazy<List<Symbiosis>> lazy3;
        Lazy<List<UniswapV3>> lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$allExchanges$2.INSTANCE);
        allExchanges$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$supportedExchanges$2.INSTANCE);
        supportedExchanges$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$supportedCrossChainExchanges$2.INSTANCE);
        supportedCrossChainExchanges$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$invisibleExchanges$2.INSTANCE);
        invisibleExchanges$delegate = lazy4;
    }
}
