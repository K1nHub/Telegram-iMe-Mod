package com.iMe.storage.data.network.model.response.crypto.cryptobox;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
/* compiled from: CryptoBoxParticipationResultResponse.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxParticipationResultResponse {
    private final long expectedDurationSec;
    private final boolean queued;

    public static /* synthetic */ CryptoBoxParticipationResultResponse copy$default(CryptoBoxParticipationResultResponse cryptoBoxParticipationResultResponse, boolean z, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = cryptoBoxParticipationResultResponse.queued;
        }
        if ((i & 2) != 0) {
            j = cryptoBoxParticipationResultResponse.expectedDurationSec;
        }
        return cryptoBoxParticipationResultResponse.copy(z, j);
    }

    public final boolean component1() {
        return this.queued;
    }

    public final long component2() {
        return this.expectedDurationSec;
    }

    public final CryptoBoxParticipationResultResponse copy(boolean z, long j) {
        return new CryptoBoxParticipationResultResponse(z, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxParticipationResultResponse) {
            CryptoBoxParticipationResultResponse cryptoBoxParticipationResultResponse = (CryptoBoxParticipationResultResponse) obj;
            return this.queued == cryptoBoxParticipationResultResponse.queued && this.expectedDurationSec == cryptoBoxParticipationResultResponse.expectedDurationSec;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.queued;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.expectedDurationSec);
    }

    public String toString() {
        return "CryptoBoxParticipationResultResponse(queued=" + this.queued + ", expectedDurationSec=" + this.expectedDurationSec + ')';
    }

    public CryptoBoxParticipationResultResponse(boolean z, long j) {
        this.queued = z;
        this.expectedDurationSec = j;
    }

    public final boolean getQueued() {
        return this.queued;
    }

    public final long getExpectedDurationSec() {
        return this.expectedDurationSec;
    }
}
