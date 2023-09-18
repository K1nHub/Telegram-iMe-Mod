package com.google.android.play.core.listener;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.play.core.internal.zzag;
import com.google.android.play.core.internal.zzce;
import com.google.android.play.core.internal.zzci;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public abstract class zzc<StateT> {
    protected final zzag zza;
    private final IntentFilter zzc;
    private final Context zzd;
    protected final Set<StateUpdatedListener<StateT>> zzb = new HashSet();
    private zzb zze = null;
    private volatile boolean zzf = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzc(zzag zzagVar, IntentFilter intentFilter, Context context) {
        this.zza = zzagVar;
        this.zzc = intentFilter;
        this.zzd = zzce.zza(context);
    }

    private final void zzb() {
        zzb zzbVar;
        if ((this.zzf || !this.zzb.isEmpty()) && this.zze == null) {
            zzb zzbVar2 = new zzb(this, null);
            this.zze = zzbVar2;
            this.zzd.registerReceiver(zzbVar2, this.zzc);
        }
        if (this.zzf || !this.zzb.isEmpty() || (zzbVar = this.zze) == null) {
            return;
        }
        this.zzd.unregisterReceiver(zzbVar);
        this.zze = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zza(Context context, Intent intent);

    public final synchronized void zzf(StateUpdatedListener<StateT> stateUpdatedListener) {
        this.zza.zzd("registerListener", new Object[0]);
        zzci.zza(stateUpdatedListener, "Registered Play Core listener should not be null.");
        this.zzb.add(stateUpdatedListener);
        zzb();
    }

    public final synchronized void zzg(boolean z) {
        this.zzf = z;
        zzb();
    }

    public final synchronized void zzh(StateUpdatedListener<StateT> stateUpdatedListener) {
        this.zza.zzd("unregisterListener", new Object[0]);
        zzci.zza(stateUpdatedListener, "Unregistered Play Core listener should not be null.");
        this.zzb.remove(stateUpdatedListener);
        zzb();
    }

    public final synchronized void zzi(StateT statet) {
        Iterator it = new HashSet(this.zzb).iterator();
        while (it.hasNext()) {
            ((StateUpdatedListener) it.next()).onStateUpdate(statet);
        }
    }

    public final synchronized boolean zzj() {
        return this.zze != null;
    }
}
