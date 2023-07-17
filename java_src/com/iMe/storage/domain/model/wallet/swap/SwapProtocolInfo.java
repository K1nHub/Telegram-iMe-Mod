package com.iMe.storage.domain.model.wallet.swap;

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
    private static final Lazy<List<SwapProtocolInfo>> invisibleExchanges$delegate;
    private static final Lazy<List<Symbiosis>> supportedCrossChainExchanges$delegate;
    private static final Lazy<List<Oneinch>> supportedExchanges$delegate;
    private final SwapProtocol code;
    private final int description;
    private final int logo;
    private final int longDescription;
    private final int name;
    private final List<String> supportedNetworksIds;

    public /* synthetic */ SwapProtocolInfo(SwapProtocol swapProtocol, int i, int i2, int i3, int i4, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(swapProtocol, i, i2, i3, i4, list);
    }

    private SwapProtocolInfo(SwapProtocol swapProtocol, int i, int i2, int i3, int i4, List<String> list) {
        this.code = swapProtocol;
        this.logo = i;
        this.name = i2;
        this.description = i3;
        this.longDescription = i4;
        this.supportedNetworksIds = list;
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

    public final List<String> getSupportedNetworksIds() {
        return this.supportedNetworksIds;
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
                java.lang.String r0 = "ETHEREUM"
                java.lang.String r6 = "POLYGON"
                java.lang.String[] r0 = new java.lang.String[]{r0, r6}
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
                java.lang.String r0 = "ETHEREUM"
                java.lang.String r6 = "POLYGON"
                java.lang.String[] r0 = new java.lang.String[]{r0, r6}
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
                java.lang.String r0 = "BINANCE_SMART_CHAIN"
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
                java.lang.String r0 = "BINANCE_SMART_CHAIN"
                java.lang.String r6 = "ETHEREUM"
                java.lang.String r7 = "POLYGON"
                java.lang.String[] r0 = new java.lang.String[]{r0, r6, r7}
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
                java.lang.String r0 = "BINANCE_SMART_CHAIN"
                java.lang.String r6 = "POLYGON"
                java.lang.String[] r0 = new java.lang.String[]{r0, r6}
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

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Unknown() {
            /*
                r8 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.UNKNOWN
                com.iMe.storage.data.utils.crypto.NetworksHelper r0 = com.iMe.storage.data.utils.crypto.NetworksHelper.INSTANCE
                java.util.List r0 = r0.getEVMNetworks()
                java.util.ArrayList r6 = new java.util.ArrayList
                r2 = 10
                int r2 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r0, r2)
                r6.<init>(r2)
                java.util.Iterator r0 = r0.iterator()
            L17:
                boolean r2 = r0.hasNext()
                if (r2 == 0) goto L2b
                java.lang.Object r2 = r0.next()
                com.iMe.storage.domain.model.crypto.Network r2 = (com.iMe.storage.domain.model.crypto.Network) r2
                java.lang.String r2 = r2.getId()
                r6.add(r2)
                goto L17
            L2b:
                r7 = 0
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r0 = r8
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.Unknown.<init>():void");
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

        private final List<SwapProtocolInfo> getAllExchanges() {
            return (List) SwapProtocolInfo.allExchanges$delegate.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List<SwapProtocolInfo> getInvisibleExchanges() {
            return (List) SwapProtocolInfo.invisibleExchanges$delegate.getValue();
        }

        public final List<Oneinch> getSupportedExchanges() {
            return (List) SwapProtocolInfo.supportedExchanges$delegate.getValue();
        }

        public final List<Symbiosis> getSupportedCrossChainExchanges() {
            return (List) SwapProtocolInfo.supportedCrossChainExchanges$delegate.getValue();
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
        Lazy<List<Oneinch>> lazy3;
        Lazy<List<Symbiosis>> lazy4;
        lazy = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$allExchanges$2.INSTANCE);
        allExchanges$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$invisibleExchanges$2.INSTANCE);
        invisibleExchanges$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$supportedExchanges$2.INSTANCE);
        supportedExchanges$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(SwapProtocolInfo$Companion$supportedCrossChainExchanges$2.INSTANCE);
        supportedCrossChainExchanges$delegate = lazy4;
    }
}
