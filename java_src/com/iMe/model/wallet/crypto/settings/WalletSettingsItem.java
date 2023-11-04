package com.iMe.model.wallet.crypto.settings;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3634R;
/* compiled from: WalletSettingsItem.kt */
/* loaded from: classes3.dex */
public abstract class WalletSettingsItem {
    private final Integer description;
    private final int icon;
    private final int title;

    public /* synthetic */ WalletSettingsItem(int i, int i2, Integer num, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, num);
    }

    private WalletSettingsItem(int i, int i2, Integer num) {
        this.icon = i;
        this.title = i2;
        this.description = num;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitle() {
        return this.title;
    }

    public final Integer getDescription() {
        return this.description;
    }

    /* compiled from: WalletSettingsItem.kt */
    /* loaded from: classes3.dex */
    public static final class Main {
        public static final Main INSTANCE = new Main();

        private Main() {
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class CryptoAccount extends WalletSettingsItem {
            public static final CryptoAccount INSTANCE = new CryptoAccount();

            private CryptoAccount() {
                super(C3634R.C3636drawable.msg_openprofile, C3634R.string.wallet_settings_eth_account_title, null, null);
            }
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class Interface extends WalletSettingsItem {
            public static final Interface INSTANCE = new Interface();

            private Interface() {
                super(C3634R.C3636drawable.fork_interface_settings, C3634R.string.wallet_settings_interface_title, null, null);
            }
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class Help extends WalletSettingsItem {
            public static final Help INSTANCE = new Help();

            private Help() {
                super(C3634R.C3636drawable.msg_help, C3634R.string.wallet_settings_help_title, null, null);
            }
        }

        public final List<WalletSettingsItem> getItems(boolean z) {
            List listOfNotNull;
            List<WalletSettingsItem> mutableList;
            WalletSettingsItem[] walletSettingsItemArr = new WalletSettingsItem[3];
            walletSettingsItemArr[0] = z ? CryptoAccount.INSTANCE : null;
            walletSettingsItemArr[1] = Interface.INSTANCE;
            walletSettingsItemArr[2] = Help.INSTANCE;
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) walletSettingsItemArr);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
            return mutableList;
        }
    }

    /* compiled from: WalletSettingsItem.kt */
    /* loaded from: classes3.dex */
    public static final class CryptoAccount {
        public static final CryptoAccount INSTANCE = new CryptoAccount();

        private CryptoAccount() {
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class Blockchains extends WalletSettingsItem {
            public static final Blockchains INSTANCE = new Blockchains();

            private Blockchains() {
                super(C3634R.C3636drawable.fork_ic_blockchain, C3634R.string.wallet_crypto_blockchains_title, Integer.valueOf(C3634R.string.wallet_crypto_blockchains_item_description), null);
            }
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class Privacy extends WalletSettingsItem {
            public static final Privacy INSTANCE = new Privacy();

            private Privacy() {
                super(C3634R.C3636drawable.fork_ic_crypto_privacy, C3634R.string.wallet_crypto_privacy_toolbar_title, Integer.valueOf(C3634R.string.wallet_crypto_privacy_item_description), null);
            }
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class WalletConnect extends WalletSettingsItem {
            public static final WalletConnect INSTANCE = new WalletConnect();

            private WalletConnect() {
                super(C3634R.C3636drawable.fork_ic_wallet_connect, C3634R.string.wallet_connect_title, Integer.valueOf(C3634R.string.wallet_connect_subtitle), null);
            }
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class CustomTokens extends WalletSettingsItem {
            public static final CustomTokens INSTANCE = new CustomTokens();

            private CustomTokens() {
                super(C3634R.C3636drawable.fork_ic_custom_tokens, C3634R.string.wallet_custom_tokens_title, Integer.valueOf(C3634R.string.wallet_custom_tokens_subtitle), null);
            }
        }

        /* compiled from: WalletSettingsItem.kt */
        /* loaded from: classes3.dex */
        public static final class PinCode extends WalletSettingsItem {
            public static final PinCode INSTANCE = new PinCode();

            private PinCode() {
                super(C3634R.C3636drawable.fork_filter_icon_lock, C3634R.string.wallet_settings_pin_code_title, Integer.valueOf(C3634R.string.wallet_settings_pin_code_subtitle), null);
            }
        }

        public final List<WalletSettingsItem> getItems(boolean z) {
            List listOfNotNull;
            List<WalletSettingsItem> mutableList;
            WalletSettingsItem[] walletSettingsItemArr = new WalletSettingsItem[5];
            walletSettingsItemArr[0] = Blockchains.INSTANCE;
            walletSettingsItemArr[1] = Privacy.INSTANCE;
            walletSettingsItemArr[2] = z ? WalletConnect.INSTANCE : null;
            walletSettingsItemArr[3] = CustomTokens.INSTANCE;
            walletSettingsItemArr[4] = PinCode.INSTANCE;
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) walletSettingsItemArr);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listOfNotNull);
            return mutableList;
        }
    }
}
