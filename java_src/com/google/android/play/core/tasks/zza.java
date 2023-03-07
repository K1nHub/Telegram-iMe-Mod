package com.google.android.play.core.tasks;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
final class zza implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzb zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(zzb zzbVar, Task task) {
        this.zzb = zzbVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCompleteListener onCompleteListener;
        OnCompleteListener onCompleteListener2;
        obj = this.zzb.zzb;
        synchronized (obj) {
            onCompleteListener = this.zzb.zzc;
            if (onCompleteListener != null) {
                onCompleteListener2 = this.zzb.zzc;
                onCompleteListener2.onComplete(this.zza);
            }
        }
    }
}
