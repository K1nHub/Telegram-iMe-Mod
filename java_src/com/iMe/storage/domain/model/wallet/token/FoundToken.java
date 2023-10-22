package com.iMe.storage.domain.model.wallet.token;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: FoundToken.kt */
/* loaded from: classes3.dex */
public final class FoundToken {
    private final boolean isCustom;
    private final boolean isEnabled;
    private final TokenDetailed token;

    public static /* synthetic */ FoundToken copy$default(FoundToken foundToken, TokenDetailed tokenDetailed, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenDetailed = foundToken.token;
        }
        if ((i & 2) != 0) {
            z = foundToken.isEnabled;
        }
        if ((i & 4) != 0) {
            z2 = foundToken.isCustom;
        }
        return foundToken.copy(tokenDetailed, z, z2);
    }

    public final TokenDetailed component1() {
        return this.token;
    }

    public final boolean component2() {
        return this.isEnabled;
    }

    public final boolean component3() {
        return this.isCustom;
    }

    public final FoundToken copy(TokenDetailed token, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new FoundToken(token, z, z2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FoundToken) {
            FoundToken foundToken = (FoundToken) obj;
            return Intrinsics.areEqual(this.token, foundToken.token) && this.isEnabled == foundToken.isEnabled && this.isCustom == foundToken.isCustom;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.token.hashCode() * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        int i2 = (hashCode + i) * 31;
        boolean z2 = this.isCustom;
        return i2 + (z2 ? 1 : z2 ? 1 : 0);
    }

    public String toString() {
        return "FoundToken(token=" + this.token + ", isEnabled=" + this.isEnabled + ", isCustom=" + this.isCustom + ')';
    }

    public FoundToken(TokenDetailed token, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.isEnabled = z;
        this.isCustom = z2;
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final boolean isCustom() {
        return this.isCustom;
    }
}
