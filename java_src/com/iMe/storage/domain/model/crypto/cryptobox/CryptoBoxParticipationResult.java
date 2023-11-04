package com.iMe.storage.domain.model.crypto.cryptobox;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
/* compiled from: CryptoBoxParticipationResult.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxParticipationResult {
    private final long expectedDurationSeconds;
    private final boolean isQueued;

    public static /* synthetic */ CryptoBoxParticipationResult copy$default(CryptoBoxParticipationResult cryptoBoxParticipationResult, boolean z, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            z = cryptoBoxParticipationResult.isQueued;
        }
        if ((i & 2) != 0) {
            j = cryptoBoxParticipationResult.expectedDurationSeconds;
        }
        return cryptoBoxParticipationResult.copy(z, j);
    }

    public final boolean component1() {
        return this.isQueued;
    }

    public final long component2() {
        return this.expectedDurationSeconds;
    }

    public final CryptoBoxParticipationResult copy(boolean z, long j) {
        return new CryptoBoxParticipationResult(z, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxParticipationResult) {
            CryptoBoxParticipationResult cryptoBoxParticipationResult = (CryptoBoxParticipationResult) obj;
            return this.isQueued == cryptoBoxParticipationResult.isQueued && this.expectedDurationSeconds == cryptoBoxParticipationResult.expectedDurationSeconds;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.isQueued;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + ProfileData$$ExternalSyntheticBackport0.m1018m(this.expectedDurationSeconds);
    }

    public String toString() {
        return "CryptoBoxParticipationResult(isQueued=" + this.isQueued + ", expectedDurationSeconds=" + this.expectedDurationSeconds + ')';
    }

    public CryptoBoxParticipationResult(boolean z, long j) {
        this.isQueued = z;
        this.expectedDurationSeconds = j;
    }

    public final boolean isQueued() {
        return this.isQueued;
    }

    public final long getExpectedDurationSeconds() {
        return this.expectedDurationSeconds;
    }
}
