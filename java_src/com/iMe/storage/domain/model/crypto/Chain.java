package com.iMe.storage.domain.model.crypto;

import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: Chain.kt */
/* loaded from: classes3.dex */
public abstract class Chain {
    public static final Companion Companion = new Companion(null);
    private static final long UNKNOWN_CHAIN_ID = -1;
    private static final Lazy<List<Chain>> supportedChains$delegate;

    /* renamed from: id */
    private final long f319id;

    public /* synthetic */ Chain(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    private Chain(long j) {
        this.f319id = j;
    }

    public long getId() {
        return this.f319id;
    }

    /* compiled from: Chain.kt */
    /* loaded from: classes3.dex */
    public static abstract class Ethereum extends Chain {

        /* renamed from: id */
        private final long f321id;

        public /* synthetic */ Ethereum(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Main extends Chain {
            public static final Main INSTANCE = new Main();

            private Main() {
                super(1L, null);
            }
        }

        private Ethereum(long j) {
            super(j, null);
            this.f321id = j;
        }

        @Override // com.iMe.storage.domain.model.crypto.Chain
        public long getId() {
            return this.f321id;
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Ropsten extends Chain {
            public static final Ropsten INSTANCE = new Ropsten();

            private Ropsten() {
                super(3L, null);
            }
        }
    }

    /* compiled from: Chain.kt */
    /* loaded from: classes3.dex */
    public static abstract class BSC extends Chain {

        /* renamed from: id */
        private final long f320id;

        public /* synthetic */ BSC(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Main extends Chain {
            public static final Main INSTANCE = new Main();

            private Main() {
                super(56L, null);
            }
        }

        private BSC(long j) {
            super(j, null);
            this.f320id = j;
        }

        @Override // com.iMe.storage.domain.model.crypto.Chain
        public long getId() {
            return this.f320id;
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Testnet extends Chain {
            public static final Testnet INSTANCE = new Testnet();

            private Testnet() {
                super(97L, null);
            }
        }
    }

    /* compiled from: Chain.kt */
    /* loaded from: classes3.dex */
    public static abstract class Polygon extends Chain {

        /* renamed from: id */
        private final long f323id;

        public /* synthetic */ Polygon(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Main extends Chain {
            public static final Main INSTANCE = new Main();

            private Main() {
                super(137L, null);
            }
        }

        private Polygon(long j) {
            super(j, null);
            this.f323id = j;
        }

        @Override // com.iMe.storage.domain.model.crypto.Chain
        public long getId() {
            return this.f323id;
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Testnet extends Chain {
            public static final Testnet INSTANCE = new Testnet();

            private Testnet() {
                super(80001L, null);
            }
        }
    }

    /* compiled from: Chain.kt */
    /* loaded from: classes3.dex */
    public static abstract class Fantom extends Chain {

        /* renamed from: id */
        private final long f322id;

        public /* synthetic */ Fantom(long j, DefaultConstructorMarker defaultConstructorMarker) {
            this(j);
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Main extends Chain {
            public static final Main INSTANCE = new Main();

            private Main() {
                super(250L, null);
            }
        }

        private Fantom(long j) {
            super(j, null);
            this.f322id = j;
        }

        @Override // com.iMe.storage.domain.model.crypto.Chain
        public long getId() {
            return this.f322id;
        }

        /* compiled from: Chain.kt */
        /* loaded from: classes3.dex */
        public static final class Testnet extends Chain {
            public static final Testnet INSTANCE = new Testnet();

            private Testnet() {
                super(4002L, null);
            }
        }
    }

    /* compiled from: Chain.kt */
    /* loaded from: classes3.dex */
    public static final class Unknown extends Chain {

        /* renamed from: id */
        private final long f324id;

        public Unknown() {
            this(0L, 1, null);
        }

        public Unknown(long j) {
            super(j, null);
            this.f324id = j;
        }

        public /* synthetic */ Unknown(long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? -1L : j);
        }

        @Override // com.iMe.storage.domain.model.crypto.Chain
        public long getId() {
            return this.f324id;
        }
    }

    /* compiled from: Chain.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final List<Chain> getSupportedChains() {
            return (List) Chain.supportedChains$delegate.getValue();
        }

        public final Chain getChainById(long j) {
            Object obj;
            boolean z;
            Iterator<T> it = getSupportedChains().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (((Chain) obj).getId() == j) {
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
            Chain chain = (Chain) obj;
            return chain == null ? new Unknown(j) : chain;
        }
    }

    static {
        Lazy<List<Chain>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(Chain$Companion$supportedChains$2.INSTANCE);
        supportedChains$delegate = lazy;
    }
}
