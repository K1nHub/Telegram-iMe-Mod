package com.google.android.gms.internal.measurement;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzjk {
    private final Object zza;
    private final int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjk(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzjk) {
            zzjk zzjkVar = (zzjk) obj;
            return this.zza == zzjkVar.zza && this.zzb == zzjkVar.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * RtpPacket.MAX_SEQUENCE_NUMBER) + this.zzb;
    }
}
