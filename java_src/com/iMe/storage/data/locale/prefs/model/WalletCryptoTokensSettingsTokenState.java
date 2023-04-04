package com.iMe.storage.data.locale.prefs.model;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletCryptoTokensSettingsTokenState.kt */
/* loaded from: classes3.dex */
public final class WalletCryptoTokensSettingsTokenState {
    private boolean isEnabled;
    private int position;
    private final String token;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletCryptoTokensSettingsTokenState) {
            WalletCryptoTokensSettingsTokenState walletCryptoTokensSettingsTokenState = (WalletCryptoTokensSettingsTokenState) obj;
            return Intrinsics.areEqual(this.token, walletCryptoTokensSettingsTokenState.token) && this.position == walletCryptoTokensSettingsTokenState.position && this.isEnabled == walletCryptoTokensSettingsTokenState.isEnabled;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.token.hashCode() * 31) + this.position) * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "WalletCryptoTokensSettingsTokenState(token=" + this.token + ", position=" + this.position + ", isEnabled=" + this.isEnabled + ')';
    }

    public WalletCryptoTokensSettingsTokenState(String token, int i, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.position = i;
        this.isEnabled = z;
    }

    public final String getToken() {
        return this.token;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
    }
}
