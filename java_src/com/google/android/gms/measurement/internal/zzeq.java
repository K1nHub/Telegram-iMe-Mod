package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.net.URL;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzeq implements Runnable {
    final /* synthetic */ zzer zza;
    private final URL zzb;
    private final byte[] zzc;
    private final zzen zzd;
    private final String zze;
    private final Map<String, String> zzf;

    public zzeq(zzer zzerVar, String str, URL url, byte[] bArr, Map<String, String> map, zzen zzenVar) {
        this.zza = zzerVar;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(url);
        Preconditions.checkNotNull(zzenVar);
        this.zzb = url;
        this.zzc = bArr;
        this.zzd = zzenVar;
        this.zze = str;
        this.zzf = map;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzeq.run():void");
    }
}
