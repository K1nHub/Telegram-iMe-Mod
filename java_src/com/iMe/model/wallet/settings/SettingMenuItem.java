package com.iMe.model.wallet.settings;

import org.telegram.messenger.C3316R;
/* compiled from: SettingMenuItem.kt */
/* loaded from: classes3.dex */
public enum SettingMenuItem {
    CRYPTO_ACCOUNT(C3316R.string.wallet_settings_eth_account_title, null, C3316R.C3318drawable.msg_openprofile),
    INTERFACE(C3316R.string.wallet_settings_interface_title, null, C3316R.C3318drawable.fork_interface_settings),
    HELP(C3316R.string.wallet_settings_help_title, null, C3316R.C3318drawable.msg_help);
    
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
