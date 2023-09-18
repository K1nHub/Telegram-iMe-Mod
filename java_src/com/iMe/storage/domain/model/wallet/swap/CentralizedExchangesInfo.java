package com.iMe.storage.domain.model.wallet.swap;

import com.iMe.storage.R$drawable;
import com.iMe.storage.R$string;
import com.iMe.storage.domain.model.wallet.swap.CentralizedExchangesInfo;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CentralizedExchangesInfo.kt */
/* loaded from: classes4.dex */
public abstract class CentralizedExchangesInfo implements Exchange {
    public static final Companion Companion = new Companion(null);
    private static final Lazy<List<CentralizedExchangesInfo>> supportedExchanges$delegate;
    private final int description;
    private final CentralizedExchange exchange;
    private final int logo;
    private final int name;

    public /* synthetic */ CentralizedExchangesInfo(CentralizedExchange centralizedExchange, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(centralizedExchange, i, i2, i3);
    }

    private CentralizedExchangesInfo(CentralizedExchange centralizedExchange, int i, int i2, int i3) {
        this.exchange = centralizedExchange;
        this.logo = i;
        this.name = i2;
        this.description = i3;
    }

    public CentralizedExchange getExchange() {
        return this.exchange;
    }

    public int getLogo() {
        return this.logo;
    }

    public int getName() {
        return this.name;
    }

    public int getDescription() {
        return this.description;
    }

    /* compiled from: CentralizedExchangesInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Binance extends CentralizedExchangesInfo {
        public static final Binance INSTANCE = new Binance();

        private Binance() {
            super(CentralizedExchange.BINANCE, R$drawable.fork_ic_binance_cex_92, R$string.wallet_centralized_exchange_binance_name, R$string.wallet_centralized_exchange_binance_description, null);
        }
    }

    /* compiled from: CentralizedExchangesInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Gate extends CentralizedExchangesInfo {
        public static final Gate INSTANCE = new Gate();

        private Gate() {
            super(CentralizedExchange.GATE, R$drawable.fork_ic_gate_io_92, R$string.wallet_centralized_exchange_gate_name, R$string.wallet_centralized_exchange_gate_description, null);
        }
    }

    /* compiled from: CentralizedExchangesInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Ascendeex extends CentralizedExchangesInfo {
        public static final Ascendeex INSTANCE = new Ascendeex();

        private Ascendeex() {
            super(CentralizedExchange.ASCENDEEX, R$drawable.fork_ic_ascendex_92, R$string.wallet_centralized_exchange_ascendeex_name, R$string.wallet_centralized_exchange_ascendeex_description, null);
        }
    }

    /* compiled from: CentralizedExchangesInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Unknown extends CentralizedExchangesInfo {
        public static final Unknown INSTANCE = new Unknown();

        private Unknown() {
            super(CentralizedExchange.UNKNOWN, 0, 0, 0, null);
        }
    }

    /* compiled from: CentralizedExchangesInfo.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<CentralizedExchangesInfo> getSupportedExchanges() {
            return (List) CentralizedExchangesInfo.supportedExchanges$delegate.getValue();
        }

        public final CentralizedExchangesInfo map(String code) {
            Object obj;
            Intrinsics.checkNotNullParameter(code, "code");
            Iterator<T> it = getSupportedExchanges().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (Intrinsics.areEqual(((CentralizedExchangesInfo) obj).getExchange().name(), code)) {
                    break;
                }
            }
            CentralizedExchangesInfo centralizedExchangesInfo = (CentralizedExchangesInfo) obj;
            return centralizedExchangesInfo == null ? Unknown.INSTANCE : centralizedExchangesInfo;
        }

        public final CentralizedExchangesInfo map(CentralizedExchange exchange) {
            Object obj;
            boolean z;
            Intrinsics.checkNotNullParameter(exchange, "exchange");
            Iterator<T> it = getSupportedExchanges().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((CentralizedExchangesInfo) obj).getExchange() == exchange) {
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
            CentralizedExchangesInfo centralizedExchangesInfo = (CentralizedExchangesInfo) obj;
            return centralizedExchangesInfo == null ? Unknown.INSTANCE : centralizedExchangesInfo;
        }
    }

    static {
        Lazy<List<CentralizedExchangesInfo>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends CentralizedExchangesInfo>>() { // from class: com.iMe.storage.domain.model.wallet.swap.CentralizedExchangesInfo$Companion$supportedExchanges$2
            @Override // kotlin.jvm.functions.Function0
            public final List<? extends CentralizedExchangesInfo> invoke() {
                List<? extends CentralizedExchangesInfo> listOf;
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new CentralizedExchangesInfo[]{CentralizedExchangesInfo.Binance.INSTANCE, CentralizedExchangesInfo.Gate.INSTANCE, CentralizedExchangesInfo.Ascendeex.INSTANCE});
                return listOf;
            }
        });
        supportedExchanges$delegate = lazy;
    }
}
