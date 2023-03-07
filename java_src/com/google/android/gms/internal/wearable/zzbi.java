package com.google.android.gms.internal.wearable;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzbi {
    private final Object zza;
    private final int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbi(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbi) {
            zzbi zzbiVar = (zzbi) obj;
            return this.zza == zzbiVar.zza && this.zzb == zzbiVar.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * RtpPacket.MAX_SEQUENCE_NUMBER) + this.zzb;
    }
}
