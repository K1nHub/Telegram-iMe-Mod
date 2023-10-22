package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.play.core.tasks.OnCompleteListener;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.zzi;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzas<T extends IInterface> {
    private static final Map<String, Handler> zza = new HashMap();
    private final Context zzb;
    private final zzag zzc;
    private final String zzd;
    private boolean zzh;
    private final Intent zzi;
    private final zzan<T> zzj;
    private ServiceConnection zzn;
    private T zzo;
    private final List<zzah> zze = new ArrayList();
    private final Set<zzi<?>> zzf = new HashSet();
    private final Object zzg = new Object();
    private final IBinder.DeathRecipient zzl = new IBinder.DeathRecipient() { // from class: com.google.android.play.core.internal.zzai
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            zzas.zzi(zzas.this);
        }
    };
    private final AtomicInteger zzm = new AtomicInteger(0);
    private final WeakReference<zzam> zzk = new WeakReference<>(null);

    public zzas(Context context, zzag zzagVar, String str, Intent intent, zzan<T> zzanVar, zzam zzamVar) {
        this.zzb = context;
        this.zzc = zzagVar;
        this.zzd = str;
        this.zzi = intent;
        this.zzj = zzanVar;
    }

    public static /* synthetic */ void zzi(zzas zzasVar) {
        zzasVar.zzc.zzd("reportBinderDeath", new Object[0]);
        zzam zzamVar = zzasVar.zzk.get();
        if (zzamVar == null) {
            zzasVar.zzc.zzd("%s : Binder has died.", zzasVar.zzd);
            for (zzah zzahVar : zzasVar.zze) {
                zzahVar.zzc(zzasVar.zzt());
            }
            zzasVar.zze.clear();
        } else {
            zzasVar.zzc.zzd("calling onBinderDied", new Object[0]);
            zzamVar.zza();
        }
        zzasVar.zzu();
    }

    public static /* bridge */ /* synthetic */ void zzo(zzas zzasVar) {
        zzasVar.zzc.zzd("linkToDeath", new Object[0]);
        try {
            zzasVar.zzo.asBinder().linkToDeath(zzasVar.zzl, 0);
        } catch (RemoteException e) {
            zzasVar.zzc.zzc(e, "linkToDeath failed", new Object[0]);
        }
    }

    public static /* bridge */ /* synthetic */ void zzp(zzas zzasVar) {
        zzasVar.zzc.zzd("unlinkToDeath", new Object[0]);
        zzasVar.zzo.asBinder().unlinkToDeath(zzasVar.zzl, 0);
    }

    private final RemoteException zzt() {
        return Build.VERSION.SDK_INT < 15 ? new RemoteException() : new RemoteException(String.valueOf(this.zzd).concat(" : Binder has died."));
    }

    public final void zzu() {
        synchronized (this.zzg) {
            for (zzi<?> zziVar : this.zzf) {
                zziVar.zzd(zzt());
            }
            this.zzf.clear();
        }
    }

    public final Handler zzc() {
        Handler handler;
        Map<String, Handler> map = zza;
        synchronized (map) {
            if (!map.containsKey(this.zzd)) {
                HandlerThread handlerThread = new HandlerThread(this.zzd, 10);
                handlerThread.start();
                map.put(this.zzd, new Handler(handlerThread.getLooper()));
            }
            handler = map.get(this.zzd);
        }
        return handler;
    }

    public final T zze() {
        return this.zzo;
    }

    public final void zzq(zzah zzahVar, final zzi<?> zziVar) {
        synchronized (this.zzg) {
            this.zzf.add(zziVar);
            zziVar.zza().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.core.internal.zzaj
                @Override // com.google.android.play.core.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    zzas.this.zzr(zziVar, task);
                }
            });
        }
        synchronized (this.zzg) {
            if (this.zzm.getAndIncrement() > 0) {
                this.zzc.zza("Already connected to the service.", new Object[0]);
            }
        }
        zzc().post(new zzak(this, zzahVar.zzb(), zzahVar));
    }

    public final /* synthetic */ void zzr(zzi zziVar, Task task) {
        synchronized (this.zzg) {
            this.zzf.remove(zziVar);
        }
    }

    public final void zzs(zzi<?> zziVar) {
        synchronized (this.zzg) {
            this.zzf.remove(zziVar);
        }
        synchronized (this.zzg) {
            if (this.zzm.decrementAndGet() > 0) {
                this.zzc.zzd("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            zzc().post(new zzal(this));
        }
    }

    public static /* bridge */ /* synthetic */ void zzn(zzas zzasVar, zzah zzahVar) {
        if (zzasVar.zzo != null || zzasVar.zzh) {
            if (zzasVar.zzh) {
                zzasVar.zzc.zzd("Waiting to bind to the service.", new Object[0]);
                zzasVar.zze.add(zzahVar);
                return;
            }
            zzahVar.run();
            return;
        }
        zzasVar.zzc.zzd("Initiate binding to the service.", new Object[0]);
        zzasVar.zze.add(zzahVar);
        zzar zzarVar = new zzar(zzasVar, null);
        zzasVar.zzn = zzarVar;
        zzasVar.zzh = true;
        if (zzasVar.zzb.bindService(zzasVar.zzi, zzarVar, 1)) {
            return;
        }
        zzasVar.zzc.zzd("Failed to bind to the service.", new Object[0]);
        zzasVar.zzh = false;
        for (zzah zzahVar2 : zzasVar.zze) {
            zzahVar2.zzc(new zzat());
        }
        zzasVar.zze.clear();
    }
}
