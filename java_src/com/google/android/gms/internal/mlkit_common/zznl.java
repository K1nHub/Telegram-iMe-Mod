package com.google.android.gms.internal.mlkit_common;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes.dex */
public enum zznl implements zzbl {
    UNKNOWN_STATUS(0),
    EXPLICITLY_REQUESTED(1),
    IMPLICITLY_REQUESTED(2),
    MODEL_INFO_RETRIEVAL_SUCCEEDED(3),
    MODEL_INFO_RETRIEVAL_FAILED(4),
    SCHEDULED(5),
    DOWNLOADING(6),
    SUCCEEDED(7),
    FAILED(8),
    LIVE(9),
    UPDATE_AVAILABLE(10),
    DOWNLOADED(11),
    STARTED(12);
    
    private final int zzo;

    zznl(int i) {
        this.zzo = i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzbl
    public final int zza() {
        return this.zzo;
    }
}
