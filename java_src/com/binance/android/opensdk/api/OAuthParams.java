package com.binance.android.opensdk.api;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class OAuthParams {
    private final String redirectUri;
    private final String scope;
    private final String state;

    public OAuthParams(String redirectUri, String scope, String state) {
        Intrinsics.checkParameterIsNotNull(redirectUri, "redirectUri");
        Intrinsics.checkParameterIsNotNull(scope, "scope");
        Intrinsics.checkParameterIsNotNull(state, "state");
        this.redirectUri = redirectUri;
        this.scope = scope;
        this.state = state;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof OAuthParams) {
                OAuthParams oAuthParams = (OAuthParams) obj;
                return Intrinsics.areEqual(this.redirectUri, oAuthParams.redirectUri) && Intrinsics.areEqual(this.scope, oAuthParams.scope) && Intrinsics.areEqual(this.state, oAuthParams.state);
            }
            return false;
        }
        return true;
    }

    public final String getRedirectUri() {
        return this.redirectUri;
    }

    public final String getScope() {
        return this.scope;
    }

    public final String getState() {
        return this.state;
    }

    public int hashCode() {
        String str = this.redirectUri;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.scope;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.state;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "OAuthParams(redirectUri=" + this.redirectUri + ", scope=" + this.scope + ", state=" + this.state + ")";
    }
}
