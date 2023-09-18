package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SetTokenVisibilityRequest.kt */
/* loaded from: classes4.dex */
public final class SetTokenVisibilityRequest {
    private final boolean isVisible;
    private final TokenRequest token;

    public static /* synthetic */ SetTokenVisibilityRequest copy$default(SetTokenVisibilityRequest setTokenVisibilityRequest, TokenRequest tokenRequest, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenRequest = setTokenVisibilityRequest.token;
        }
        if ((i & 2) != 0) {
            z = setTokenVisibilityRequest.isVisible;
        }
        return setTokenVisibilityRequest.copy(tokenRequest, z);
    }

    public final TokenRequest component1() {
        return this.token;
    }

    public final boolean component2() {
        return this.isVisible;
    }

    public final SetTokenVisibilityRequest copy(TokenRequest token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new SetTokenVisibilityRequest(token, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SetTokenVisibilityRequest) {
            SetTokenVisibilityRequest setTokenVisibilityRequest = (SetTokenVisibilityRequest) obj;
            return Intrinsics.areEqual(this.token, setTokenVisibilityRequest.token) && this.isVisible == setTokenVisibilityRequest.isVisible;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.token.hashCode() * 31;
        boolean z = this.isVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "SetTokenVisibilityRequest(token=" + this.token + ", isVisible=" + this.isVisible + ')';
    }

    public SetTokenVisibilityRequest(TokenRequest token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.isVisible = z;
    }

    public final TokenRequest getToken() {
        return this.token;
    }

    public final boolean isVisible() {
        return this.isVisible;
    }
}
