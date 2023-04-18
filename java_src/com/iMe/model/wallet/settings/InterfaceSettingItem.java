package com.iMe.model.wallet.settings;

import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3242R;
/* compiled from: InterfaceSettingItem.kt */
/* loaded from: classes3.dex */
public abstract class InterfaceSettingItem {
    private final int description;
    private final int icon;
    private final boolean isEnabled;
    private final int title;

    public /* synthetic */ InterfaceSettingItem(boolean z, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, i, i2, i3);
    }

    private InterfaceSettingItem(boolean z, int i, int i2, int i3) {
        this.isEnabled = z;
        this.icon = i;
        this.title = i2;
        this.description = i3;
    }

    public boolean isEnabled() {
        return this.isEnabled;
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

    /* compiled from: InterfaceSettingItem.kt */
    /* loaded from: classes3.dex */
    public static final class Banners extends InterfaceSettingItem {
        private final boolean isEnabled;

        @Override // com.iMe.model.wallet.settings.InterfaceSettingItem
        public boolean isEnabled() {
            return this.isEnabled;
        }

        public Banners(boolean z) {
            super(z, C3242R.C3244drawable.msg_sticker, C3242R.string.wallet_settings_interface_banners, C3242R.string.wallet_settings_interface_banners_description, null);
            this.isEnabled = z;
        }
    }

    /* compiled from: InterfaceSettingItem.kt */
    /* loaded from: classes3.dex */
    public static final class Quotations extends InterfaceSettingItem {
        private final boolean isEnabled;

        @Override // com.iMe.model.wallet.settings.InterfaceSettingItem
        public boolean isEnabled() {
            return this.isEnabled;
        }

        public Quotations(boolean z) {
            super(z, C3242R.C3244drawable.fork_ic_quotation_26, C3242R.string.wallet_settings_interface_quotations, C3242R.string.wallet_settings_interface_quotations_description, null);
            this.isEnabled = z;
        }
    }
}
