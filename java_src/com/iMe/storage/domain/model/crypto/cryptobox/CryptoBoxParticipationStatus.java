package com.iMe.storage.domain.model.crypto.cryptobox;
/* compiled from: CryptoBoxParticipationStatus.kt */
/* loaded from: classes3.dex */
public enum CryptoBoxParticipationStatus {
    NONE,
    QUEUED,
    PENDING,
    FAILED,
    COMPLETED;

    public final boolean canParticipate() {
        return this == NONE || this == FAILED;
    }
}
