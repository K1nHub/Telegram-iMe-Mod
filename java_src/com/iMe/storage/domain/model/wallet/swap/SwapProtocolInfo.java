package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SwapProtocolInfo.kt */
/* loaded from: classes4.dex */
public abstract class SwapProtocolInfo implements Exchange {
    public static final Companion Companion = new Companion(null);
    private static final Lazy<List<SwapProtocolInfo>> allExchanges$delegate;
    private static final Lazy<List<SwapProtocolInfo>> invisibleExchanges$delegate;
    private static final Lazy<List<Symbiosis>> supportedCrossChainExchanges$delegate;
    private static final Lazy<List<Oneinch>> supportedExchanges$delegate;
    private final SwapProtocol defaultProtocol;
    private final int description;
    private final int logo;
    private final int longDescription;
    private final int name;
    private final List<SwapProtocol> protocols;
    private final List<String> supportedNetworksIds;

    public /* synthetic */ SwapProtocolInfo(List list, int i, int i2, int i3, int i4, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, i, i2, i3, i4, list2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private SwapProtocolInfo(List<? extends SwapProtocol> list, int i, int i2, int i3, int i4, List<String> list2) {
        this.protocols = list;
        this.logo = i;
        this.name = i2;
        this.description = i3;
        this.longDescription = i4;
        this.supportedNetworksIds = list2;
        this.defaultProtocol = (SwapProtocol) CollectionsKt.first((List<? extends Object>) list);
    }

    public final List<SwapProtocol> getProtocols() {
        return this.protocols;
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

    public final SwapProtocol getDefaultProtocol() {
        return this.defaultProtocol;
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Oneinch extends SwapProtocolInfo {
        public static final Oneinch INSTANCE = new Oneinch();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Oneinch() {
            /*
                r11 = this;
                r0 = 2
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol[] r0 = new com.iMe.storage.domain.model.wallet.swap.SwapProtocol[r0]
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.ONEINCH
                r2 = 0
                r0[r2] = r1
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r1 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.ONEINCH_FUSION
                r2 = 1
                r0[r2] = r1
                java.util.List r4 = kotlin.collections.CollectionsKt.listOf(r0)
                int r5 = com.iMe.storage.R$drawable.fork_ic_1_inch_92
                int r6 = com.iMe.storage.R$string.wallet_swap_protocols_1inch_name
                int r7 = com.iMe.storage.R$string.wallet_swap_protocols_1inch_description
                int r8 = com.iMe.storage.R$string.wallet_swap_protocols_1inch_long_description
                java.lang.String r0 = "BINANCE_SMART_CHAIN"
                java.lang.String r1 = "ETHEREUM"
                java.lang.String r2 = "POLYGON"
                java.lang.String r3 = "FANTOM"
                java.lang.String[] r0 = new java.lang.String[]{r0, r1, r2, r3}
                java.util.List r9 = kotlin.collections.CollectionsKt.listOf(r0)
                r10 = 0
                r3 = r11
                r3.<init>(r4, r5, r6, r7, r8, r9, r10)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.Oneinch.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Symbiosis extends SwapProtocolInfo {
        public static final Symbiosis INSTANCE = new Symbiosis();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Symbiosis() {
            /*
                r9 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r0 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.SYMBIOSIS
                java.util.List r2 = kotlin.collections.CollectionsKt.listOf(r0)
                int r3 = com.iMe.storage.R$drawable.fork_ic_symdiosis_92
                int r4 = com.iMe.storage.R$string.wallet_swap_protocols_symbiosis_name
                int r5 = com.iMe.storage.R$string.wallet_swap_protocols_symbiosis_description
                int r6 = com.iMe.storage.R$string.wallet_swap_protocols_symbiosis_long_description
                java.lang.String r0 = "BINANCE_SMART_CHAIN"
                java.lang.String r1 = "POLYGON"
                java.lang.String[] r0 = new java.lang.String[]{r0, r1}
                java.util.List r7 = kotlin.collections.CollectionsKt.listOf(r0)
                r8 = 0
                r1 = r9
                r1.<init>(r2, r3, r4, r5, r6, r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.Symbiosis.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Unknown extends SwapProtocolInfo {
        public static final Unknown INSTANCE = new Unknown();

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private Unknown() {
            /*
                r9 = this;
                com.iMe.storage.domain.model.wallet.swap.SwapProtocol r0 = com.iMe.storage.domain.model.wallet.swap.SwapProtocol.UNKNOWN
                java.util.List r2 = kotlin.collections.CollectionsKt.listOf(r0)
                com.iMe.storage.data.utils.crypto.NetworksHelper r0 = com.iMe.storage.data.utils.crypto.NetworksHelper.INSTANCE
                java.util.List r0 = r0.getEVMNetworks()
                java.util.ArrayList r7 = new java.util.ArrayList
                r1 = 10
                int r1 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r0, r1)
                r7.<init>(r1)
                java.util.Iterator r0 = r0.iterator()
            L1b:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L2f
                java.lang.Object r1 = r0.next()
                com.iMe.storage.domain.model.crypto.Network r1 = (com.iMe.storage.domain.model.crypto.Network) r1
                java.lang.String r1 = r1.getId()
                r7.add(r1)
                goto L1b
            L2f:
                r8 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                r6 = 0
                r1 = r9
                r1.<init>(r2, r3, r4, r5, r6, r7, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo.Unknown.<init>():void");
        }
    }

    /* compiled from: SwapProtocolInfo.kt */
    /* loaded from: classes4.dex */
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

        public final SwapProtocolInfo map(SwapProtocol protocol) {
            Object obj;
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Iterator<T> it = getAllExchanges().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((SwapProtocolInfo) obj).getProtocols().contains(protocol)) {
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends SwapProtocolInfo>>() { // from class: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo$Companion$allExchanges$2
            @Override // kotlin.jvm.functions.Function0
            public final List<? extends SwapProtocolInfo> invoke() {
                List plus;
                List invisibleExchanges;
                List<? extends SwapProtocolInfo> plus2;
                SwapProtocolInfo.Companion companion = SwapProtocolInfo.Companion;
                plus = CollectionsKt___CollectionsKt.plus((Collection) companion.getSupportedExchanges(), (Iterable) companion.getSupportedCrossChainExchanges());
                invisibleExchanges = companion.getInvisibleExchanges();
                plus2 = CollectionsKt___CollectionsKt.plus((Collection) plus, (Iterable) invisibleExchanges);
                return plus2;
            }
        });
        allExchanges$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends SwapProtocolInfo>>() { // from class: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo$Companion$invisibleExchanges$2
            @Override // kotlin.jvm.functions.Function0
            public final List<? extends SwapProtocolInfo> invoke() {
                List<? extends SwapProtocolInfo> emptyList;
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
        });
        invisibleExchanges$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends Oneinch>>() { // from class: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo$Companion$supportedExchanges$2
            @Override // kotlin.jvm.functions.Function0
            public final List<? extends SwapProtocolInfo.Oneinch> invoke() {
                List<? extends SwapProtocolInfo.Oneinch> listOf;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(SwapProtocolInfo.Oneinch.INSTANCE);
                return listOf;
            }
        });
        supportedExchanges$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends Symbiosis>>() { // from class: com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo$Companion$supportedCrossChainExchanges$2
            @Override // kotlin.jvm.functions.Function0
            public final List<? extends SwapProtocolInfo.Symbiosis> invoke() {
                List<? extends SwapProtocolInfo.Symbiosis> listOf;
                listOf = CollectionsKt__CollectionsJVMKt.listOf(SwapProtocolInfo.Symbiosis.INSTANCE);
                return listOf;
            }
        });
        supportedCrossChainExchanges$delegate = lazy4;
    }
}
