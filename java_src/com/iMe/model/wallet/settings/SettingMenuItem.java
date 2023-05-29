package com.iMe.model.wallet.settings;

import org.telegram.messenger.C3295R;
/* compiled from: SettingMenuItem.kt */
/* loaded from: classes3.dex */
public enum SettingMenuItem {
    CRYPTO_ACCOUNT(C3295R.string.wallet_settings_eth_account_title, null, C3295R.C3297drawable.msg_openprofile),
    INTERFACE(C3295R.string.wallet_settings_interface_title, null, C3295R.C3297drawable.fork_interface_settings),
    HELP(C3295R.string.wallet_settings_help_title, null, C3295R.C3297drawable.msg_help);
    
    private final Integer description;
    private final int icon;
    private final int title;

    SettingMenuItem(int i, Integer num, int i2) {
        this.title = i;
        this.description = num;
        this.icon = i2;
    }

    public final int getTitle() {
        return this.title;
    }

    public final Integer getDescription() {
        return this.description;
    }

    public final int getIcon() {
        return this.icon;
    }
}
