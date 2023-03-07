package com.smedialink.storage.data.locale.prefs.model.auth;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import com.smedialink.storage.domain.model.wallet.SessionTokens;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AuthTokensMetadata.kt */
/* loaded from: classes3.dex */
public final class AuthTokensMetadata {
    private final SessionTokens authTokens;
    private final long updateTimestamp;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AuthTokensMetadata) {
            AuthTokensMetadata authTokensMetadata = (AuthTokensMetadata) obj;
            return Intrinsics.areEqual(this.authTokens, authTokensMetadata.authTokens) && this.updateTimestamp == authTokensMetadata.updateTimestamp;
        }
        return false;
    }

    public int hashCode() {
        SessionTokens sessionTokens = this.authTokens;
        return ((sessionTokens == null ? 0 : sessionTokens.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.updateTimestamp);
    }

    public String toString() {
        return "AuthTokensMetadata(authTokens=" + this.authTokens + ", updateTimestamp=" + this.updateTimestamp + ')';
    }

    public AuthTokensMetadata(SessionTokens sessionTokens, long j) {
        this.authTokens = sessionTokens;
        this.updateTimestamp = j;
    }

    public final SessionTokens getAuthTokens() {
        return this.authTokens;
    }
}
