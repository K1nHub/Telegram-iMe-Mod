package com.iMe.model.wallet.settings;

import com.iMe.model.common.NoChildNode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.telegram.messenger.C3630R;
/* compiled from: InterfaceSettingItem.kt */
/* loaded from: classes3.dex */
public abstract class InterfaceSettingItem extends NoChildNode {
    private final int description;
    private final int icon;
    private final int title;

    public /* synthetic */ InterfaceSettingItem(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    public int getIcon() {
        return this.icon;
    }

    public int getTitle() {
        return this.title;
    }

    public int getDescription() {
        return this.description;
    }

    private InterfaceSettingItem(int i, int i2, int i3) {
        this.icon = i;
        this.title = i2;
        this.description = i3;
    }

    /* compiled from: InterfaceSettingItem.kt */
    /* loaded from: classes3.dex */
    public static final class Networks extends InterfaceSettingItem {
        public static final Networks INSTANCE = new Networks();

        private Networks() {
            super(C3630R.C3632drawable.fork_ic_network, C3630R.string.networks_settings_title, C3630R.string.networks_settings_subtitle, null);
        }
    }

    /* compiled from: InterfaceSettingItem.kt */
    /* loaded from: classes3.dex */
    public static abstract class SwitchableOption extends InterfaceSettingItem {
        private final int description;
        private final int icon;
        private final boolean isEnabled;
        private final int title;

        public /* synthetic */ SwitchableOption(boolean z, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, i, i2, i3);
        }

        public boolean isEnabled() {
            return this.isEnabled;
        }

        @Override // com.iMe.model.wallet.settings.InterfaceSettingItem
        public int getIcon() {
            return this.icon;
        }

        @Override // com.iMe.model.wallet.settings.InterfaceSettingItem
        public int getTitle() {
            return this.title;
        }

        @Override // com.iMe.model.wallet.settings.InterfaceSettingItem
        public int getDescription() {
            return this.description;
        }

        private SwitchableOption(boolean z, int i, int i2, int i3) {
            super(i, i2, i3, null);
            this.isEnabled = z;
            this.icon = i;
            this.title = i2;
            this.description = i3;
        }

        /* compiled from: InterfaceSettingItem.kt */
        /* loaded from: classes3.dex */
        public static final class Banners extends SwitchableOption {
            private final boolean isEnabled;

            @Override // com.iMe.model.wallet.settings.InterfaceSettingItem.SwitchableOption
            public boolean isEnabled() {
                return this.isEnabled;
            }

            public Banners(boolean z) {
                super(z, C3630R.C3632drawable.msg_sticker, C3630R.string.wallet_settings_interface_banners, C3630R.string.wallet_settings_interface_banners_description, null);
                this.isEnabled = z;
            }
        }

        /* compiled from: InterfaceSettingItem.kt */
        /* loaded from: classes3.dex */
        public static final class Quotations extends SwitchableOption {
            private final boolean isEnabled;

            @Override // com.iMe.model.wallet.settings.InterfaceSettingItem.SwitchableOption
            public boolean isEnabled() {
                return this.isEnabled;
            }

            public Quotations(boolean z) {
                super(z, C3630R.C3632drawable.fork_ic_quotation_26, C3630R.string.wallet_settings_interface_quotations, C3630R.string.wallet_settings_interface_quotations_description, null);
                this.isEnabled = z;
            }
        }
    }
}
