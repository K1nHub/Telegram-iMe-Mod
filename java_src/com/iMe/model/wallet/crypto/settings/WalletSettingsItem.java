package com.iMe.model.wallet.crypto.settings;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3242R;
/* compiled from: WalletSettingsItem.kt */
/* loaded from: classes3.dex */
public abstract class WalletSettingsItem {
    private final int description;
    private final int icon;
    private final int title;

    public /* synthetic */ WalletSettingsItem(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    private WalletSettingsItem(int i, int i2, int i3) {
        this.icon = i;
        this.title = i2;
        this.description = i3;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitle() {
        return this.title;
    }

    public final int getDescription() {
        return this.description;
    }

    /* compiled from: WalletSettingsItem.kt */
    /* loaded from: classes3.dex */
    public static final class Blockchains extends WalletSettingsItem {
        public static final Blockchains INSTANCE = new Blockchains();

        private Blockchains() {
            super(C3242R.C3244drawable.fork_ic_blockchain, C3242R.string.wallet_crypto_blockchains_title, C3242R.string.wallet_crypto_blockchains_item_description, null);
        }
    }

    /* compiled from: WalletSettingsItem.kt */
    /* loaded from: classes3.dex */
    public static final class Privacy extends WalletSettingsItem {
        public static final Privacy INSTANCE = new Privacy();

        private Privacy() {
            super(C3242R.C3244drawable.fork_ic_crypto_privacy, C3242R.string.wallet_crypto_privacy_toolbar_title, C3242R.string.wallet_crypto_privacy_item_description, null);
        }
    }

    /* compiled from: WalletSettingsItem.kt */
    /* loaded from: classes3.dex */
    public static final class WalletConnect extends WalletSettingsItem {
        public static final WalletConnect INSTANCE = new WalletConnect();

        private WalletConnect() {
            super(C3242R.C3244drawable.fork_ic_wallet_connect, C3242R.string.wallet_connect_title, C3242R.string.wallet_connect_subtitle, null);
        }
    }

    /* compiled from: WalletSettingsItem.kt */
    /* loaded from: classes3.dex */
    public static final class PinCode extends WalletSettingsItem {
        public static final PinCode INSTANCE = new PinCode();

        private PinCode() {
            super(C3242R.C3244drawable.fork_filter_icon_lock, C3242R.string.wallet_settings_pin_code_title, C3242R.string.wallet_settings_pin_code_subtitle, null);
        }
    }
}
