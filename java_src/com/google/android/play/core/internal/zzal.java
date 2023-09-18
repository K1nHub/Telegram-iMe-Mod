package com.google.android.play.core.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zzal extends zzah {
    final /* synthetic */ zzas zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzal(zzas zzasVar) {
        this.zza = zzasVar;
    }

    @Override // com.google.android.play.core.internal.zzah
    public final void zza() {
        IInterface iInterface;
        zzag zzagVar;
        Context context;
        ServiceConnection serviceConnection;
        iInterface = this.zza.zzo;
        if (iInterface != null) {
            zzagVar = this.zza.zzc;
            zzagVar.zzd("Unbind from service.", new Object[0]);
            context = this.zza.zzb;
            serviceConnection = this.zza.zzn;
            context.unbindService(serviceConnection);
            this.zza.zzh = false;
            this.zza.zzo = null;
            this.zza.zzn = null;
        }
        this.zza.zzu();
    }
}
