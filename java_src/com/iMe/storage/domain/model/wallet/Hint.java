package com.iMe.storage.domain.model.wallet;

import com.iMe.storage.data.manager.common.EnvironmentManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: Hint.kt */
/* loaded from: classes4.dex */
public abstract class Hint {
    private static final String CHANGE_NETWORK_PREFIX = "change_network_";
    public static final Companion Companion = new Companion(null);
    public static final String KEY_CHANGE_NETWORK_CRYPTO_HOME = "change_network_crypto_home";
    public static final String KEY_CHANGE_NETWORK_SWAP = "change_network_swap";
    public static final String KEY_CHANGE_NETWORK_TRANSACTIONS = "change_network_transactions";
    public static final String KEY_CHANGE_NETWORK_WALLET_CONNECT = "change_network_wallet_connect";
    public static final String KEY_STAKING_INFO = "staking_info";
    private final String prefsKey;
    private final int timesToShow;

    public /* synthetic */ Hint(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i);
    }

    private Hint(String str, int i) {
        this.prefsKey = str;
        this.timesToShow = i;
    }

    public final String getPrefsKey() {
        return this.prefsKey;
    }

    public final int getTimesToShow() {
        return this.timesToShow;
    }

    /* compiled from: Hint.kt */
    /* loaded from: classes4.dex */
    public static abstract class ChangeNetwork extends Hint {
        public /* synthetic */ ChangeNetwork(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        private ChangeNetwork(String str) {
            super(str, EnvironmentManager.INSTANCE.getEnvironmentInformation().getHintDefaultShowsCount(), null);
        }

        /* compiled from: Hint.kt */
        /* loaded from: classes4.dex */
        public static final class CryptoHomeScreen extends ChangeNetwork {
            public static final CryptoHomeScreen INSTANCE = new CryptoHomeScreen();

            private CryptoHomeScreen() {
                super(Hint.KEY_CHANGE_NETWORK_CRYPTO_HOME, null);
            }
        }

        /* compiled from: Hint.kt */
        /* loaded from: classes4.dex */
        public static final class WalletConnectScreen extends ChangeNetwork {
            public static final WalletConnectScreen INSTANCE = new WalletConnectScreen();

            private WalletConnectScreen() {
                super(Hint.KEY_CHANGE_NETWORK_WALLET_CONNECT, null);
            }
        }

        /* compiled from: Hint.kt */
        /* loaded from: classes4.dex */
        public static final class TransactionsScreen extends ChangeNetwork {
            public static final TransactionsScreen INSTANCE = new TransactionsScreen();

            private TransactionsScreen() {
                super(Hint.KEY_CHANGE_NETWORK_TRANSACTIONS, null);
            }
        }

        /* compiled from: Hint.kt */
        /* loaded from: classes4.dex */
        public static final class SwapScreen extends ChangeNetwork {
            public static final SwapScreen INSTANCE = new SwapScreen();

            private SwapScreen() {
                super(Hint.KEY_CHANGE_NETWORK_SWAP, null);
            }
        }
    }

    /* compiled from: Hint.kt */
    /* loaded from: classes4.dex */
    public static final class StakingInfo extends Hint {
        public static final StakingInfo INSTANCE = new StakingInfo();

        private StakingInfo() {
            super(Hint.KEY_STAKING_INFO, EnvironmentManager.INSTANCE.getEnvironmentInformation().getHintDefaultShowsCount(), null);
        }
    }

    /* compiled from: Hint.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
