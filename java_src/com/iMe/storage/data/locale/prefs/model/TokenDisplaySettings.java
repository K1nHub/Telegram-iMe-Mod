package com.iMe.storage.data.locale.prefs.model;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenDisplaySettings.kt */
/* loaded from: classes4.dex */
public abstract class TokenDisplaySettings {
    private transient boolean isVisible;

    public /* synthetic */ TokenDisplaySettings(int i, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, z);
    }

    public void setPosition(int i) {
    }

    private TokenDisplaySettings(int i, boolean z) {
        this.isVisible = z;
    }

    public boolean isVisible() {
        return this.isVisible;
    }

    public void setVisible(boolean z) {
        this.isVisible = z;
    }

    /* compiled from: TokenDisplaySettings.kt */
    /* loaded from: classes4.dex */
    public static final class Crypto extends TokenDisplaySettings {
        private boolean isVisible;
        private int position;
        private final String tokenAddress;

        public static /* synthetic */ Crypto copy$default(Crypto crypto, int i, boolean z, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = crypto.getPosition();
            }
            if ((i2 & 2) != 0) {
                z = crypto.isVisible();
            }
            if ((i2 & 4) != 0) {
                str = crypto.tokenAddress;
            }
            return crypto.copy(i, z, str);
        }

        public final Crypto copy(int i, boolean z, String tokenAddress) {
            Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
            return new Crypto(i, z, tokenAddress);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Crypto) {
                Crypto crypto = (Crypto) obj;
                return getPosition() == crypto.getPosition() && isVisible() == crypto.isVisible() && Intrinsics.areEqual(this.tokenAddress, crypto.tokenAddress);
            }
            return false;
        }

        public int hashCode() {
            int position = getPosition() * 31;
            boolean isVisible = isVisible();
            int i = isVisible;
            if (isVisible) {
                i = 1;
            }
            return ((position + i) * 31) + this.tokenAddress.hashCode();
        }

        public String toString() {
            return "Crypto(position=" + getPosition() + ", isVisible=" + isVisible() + ", tokenAddress=" + this.tokenAddress + ')';
        }

        public int getPosition() {
            return this.position;
        }

        @Override // com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings
        public void setPosition(int i) {
            this.position = i;
        }

        @Override // com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings
        public boolean isVisible() {
            return this.isVisible;
        }

        @Override // com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings
        public void setVisible(boolean z) {
            this.isVisible = z;
        }

        public final String getTokenAddress() {
            return this.tokenAddress;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Crypto(int i, boolean z, String tokenAddress) {
            super(i, z, null);
            Intrinsics.checkNotNullParameter(tokenAddress, "tokenAddress");
            this.position = i;
            this.isVisible = z;
            this.tokenAddress = tokenAddress;
        }
    }

    /* compiled from: TokenDisplaySettings.kt */
    /* loaded from: classes4.dex */
    public static final class Binance extends TokenDisplaySettings {
        private boolean isVisible;
        private int position;
        private final String tokenTicker;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Binance) {
                Binance binance = (Binance) obj;
                return getPosition() == binance.getPosition() && isVisible() == binance.isVisible() && Intrinsics.areEqual(this.tokenTicker, binance.tokenTicker);
            }
            return false;
        }

        public int hashCode() {
            int position = getPosition() * 31;
            boolean isVisible = isVisible();
            int i = isVisible;
            if (isVisible) {
                i = 1;
            }
            return ((position + i) * 31) + this.tokenTicker.hashCode();
        }

        public String toString() {
            return "Binance(position=" + getPosition() + ", isVisible=" + isVisible() + ", tokenTicker=" + this.tokenTicker + ')';
        }

        public int getPosition() {
            return this.position;
        }

        @Override // com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings
        public void setPosition(int i) {
            this.position = i;
        }

        @Override // com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings
        public boolean isVisible() {
            return this.isVisible;
        }

        @Override // com.iMe.storage.data.locale.prefs.model.TokenDisplaySettings
        public void setVisible(boolean z) {
            this.isVisible = z;
        }

        public final String getTokenTicker() {
            return this.tokenTicker;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Binance(int i, boolean z, String tokenTicker) {
            super(i, z, null);
            Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
            this.position = i;
            this.isVisible = z;
            this.tokenTicker = tokenTicker;
        }
    }
}
