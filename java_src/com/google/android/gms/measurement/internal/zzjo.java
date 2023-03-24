package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
@VisibleForTesting
/* loaded from: classes3.dex */
public final class zzjo extends zzf {
    private final zzjn zza;
    private zzeb zzb;
    private volatile Boolean zzc;
    private final zzam zzd;
    private final zzke zze;
    private final List<Runnable> zzf;
    private final zzam zzg;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzjo(zzfv zzfvVar) {
        super(zzfvVar);
        this.zzf = new ArrayList();
        this.zze = new zzke(zzfvVar.zzav());
        this.zza = new zzjn(this);
        this.zzd = new zziy(this, zzfvVar);
        this.zzg = new zzja(this, zzfvVar);
    }

    private final zzp zzO(boolean z) {
        Pair<String, Long> zza;
        this.zzs.zzaw();
        zzec zzh = this.zzs.zzh();
        String str = null;
        if (z) {
            zzel zzay = this.zzs.zzay();
            if (zzay.zzs.zzm().zzb != null && (zza = zzay.zzs.zzm().zzb.zza()) != null && zza != zzfa.zza) {
                String valueOf = String.valueOf(zza.second);
                String str2 = (String) zza.first;
                StringBuilder sb = new StringBuilder(valueOf.length() + 1 + String.valueOf(str2).length());
                sb.append(valueOf);
                sb.append(":");
                sb.append(str2);
                str = sb.toString();
            }
        }
        return zzh.zzj(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzP() {
        zzg();
        this.zzs.zzay().zzj().zzb("Processing queued up service tasks", Integer.valueOf(this.zzf.size()));
        for (Runnable runnable : this.zzf) {
            try {
                runnable.run();
            } catch (RuntimeException e) {
                this.zzs.zzay().zzd().zzb("Task exception while flushing queue", e);
            }
        }
        this.zzf.clear();
        this.zzg.zzb();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzQ() {
        zzg();
        this.zze.zzb();
        zzam zzamVar = this.zzd;
        this.zzs.zzf();
        zzamVar.zzd(zzdy.zzI.zza(null).longValue());
    }

    private final void zzR(Runnable runnable) throws IllegalStateException {
        zzg();
        if (zzL()) {
            runnable.run();
            return;
        }
        int size = this.zzf.size();
        this.zzs.zzf();
        if (size >= 1000) {
            this.zzs.zzay().zzd().zza("Discarding data. Max runnable queue size reached");
            return;
        }
        this.zzf.add(runnable);
        this.zzg.zzd(60000L);
        zzr();
    }

    private final boolean zzS() {
        this.zzs.zzaw();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzo(zzjo zzjoVar, ComponentName componentName) {
        zzjoVar.zzg();
        if (zzjoVar.zzb != null) {
            zzjoVar.zzb = null;
            zzjoVar.zzs.zzay().zzj().zzb("Disconnected from device MeasurementService", componentName);
            zzjoVar.zzg();
            zzjoVar.zzr();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzA(zzat zzatVar, String str) {
        Preconditions.checkNotNull(zzatVar);
        zzg();
        zza();
        zzS();
        zzR(new zzjd(this, true, zzO(true), this.zzs.zzi().zzo(zzatVar), zzatVar, str));
    }

    public final void zzB(com.google.android.gms.internal.measurement.zzcf zzcfVar, zzat zzatVar, String str) {
        zzg();
        zza();
        if (this.zzs.zzv().zzo(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) != 0) {
            this.zzs.zzay().zzk().zza("Not bundling data. Service unavailable or out of date");
            this.zzs.zzv().zzR(zzcfVar, new byte[0]);
            return;
        }
        zzR(new zziz(this, zzatVar, str, zzcfVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzC() {
        zzg();
        zza();
        zzp zzO = zzO(false);
        zzS();
        this.zzs.zzi().zzj();
        zzR(new zzis(this, zzO));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void zzD(zzeb zzebVar, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        int i;
        zzg();
        zza();
        zzS();
        this.zzs.zzf();
        int i2 = 0;
        int i3 = 100;
        while (i2 < 1001 && i3 == 100) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> zzi = this.zzs.zzi().zzi(100);
            if (zzi != null) {
                arrayList.addAll(zzi);
                i = zzi.size();
            } else {
                i = 0;
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i4);
                if (abstractSafeParcelable2 instanceof zzat) {
                    try {
                        zzebVar.zzk((zzat) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e) {
                        this.zzs.zzay().zzd().zzb("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkv) {
                    try {
                        zzebVar.zzt((zzkv) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        this.zzs.zzay().zzd().zzb("Failed to send user property to the service", e2);
                    }
                } else if (!(abstractSafeParcelable2 instanceof zzab)) {
                    this.zzs.zzay().zzd().zza("Discarding data. Unrecognized parcel type.");
                } else {
                    try {
                        zzebVar.zzn((zzab) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        this.zzs.zzay().zzd().zzb("Failed to send conditional user property to the service", e3);
                    }
                }
            }
            i2++;
            i3 = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzE(zzab zzabVar) {
        Preconditions.checkNotNull(zzabVar);
        zzg();
        zza();
        this.zzs.zzaw();
        zzR(new zzje(this, true, zzO(true), this.zzs.zzi().zzn(zzabVar), new zzab(zzabVar), zzabVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzF(boolean z) {
        zzg();
        zza();
        if (z) {
            zzS();
            this.zzs.zzi().zzj();
        }
        if (zzM()) {
            zzR(new zzjc(this, zzO(false)));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzG(zzih zzihVar) {
        zzg();
        zza();
        zzR(new zziw(this, zzihVar));
    }

    public final void zzH(Bundle bundle) {
        zzg();
        zza();
        zzR(new zzix(this, zzO(false), bundle));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzI() {
        zzg();
        zza();
        zzR(new zzjb(this, zzO(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final void zzJ(zzeb zzebVar) {
        zzg();
        Preconditions.checkNotNull(zzebVar);
        this.zzb = zzebVar;
        zzQ();
        zzP();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzK(zzkv zzkvVar) {
        zzg();
        zza();
        zzS();
        zzR(new zziq(this, zzO(true), this.zzs.zzi().zzp(zzkvVar), zzkvVar));
    }

    public final boolean zzL() {
        zzg();
        zza();
        return this.zzb != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzM() {
        zzg();
        zza();
        return !zzN() || this.zzs.zzv().zzm() >= zzdy.zzao.zza(null).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzN() {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzjo.zzN():boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean zzj() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzq() {
        zzg();
        zza();
        zzp zzO = zzO(true);
        this.zzs.zzi().zzk();
        zzR(new zziv(this, zzO));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzr() {
        zzg();
        zza();
        if (zzL()) {
            return;
        }
        if (!zzN()) {
            if (this.zzs.zzf().zzx()) {
                return;
            }
            this.zzs.zzaw();
            List<ResolveInfo> queryIntentServices = this.zzs.zzau().getPackageManager().queryIntentServices(new Intent().setClassName(this.zzs.zzau(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (queryIntentServices == null || queryIntentServices.size() <= 0) {
                this.zzs.zzay().zzd().zza("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            Context zzau = this.zzs.zzau();
            this.zzs.zzaw();
            intent.setComponent(new ComponentName(zzau, "com.google.android.gms.measurement.AppMeasurementService"));
            this.zza.zzb(intent);
            return;
        }
        this.zza.zzc();
    }

    public final void zzs() {
        zzg();
        zza();
        this.zza.zzd();
        try {
            ConnectionTracker.getInstance().unbindService(this.zzs.zzau(), this.zza);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.zzb = null;
    }

    public final void zzt(com.google.android.gms.internal.measurement.zzcf zzcfVar) {
        zzg();
        zza();
        zzR(new zziu(this, zzO(false), zzcfVar));
    }

    public final void zzu(AtomicReference<String> atomicReference) {
        zzg();
        zza();
        zzR(new zzit(this, atomicReference, zzO(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzv(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2) {
        zzg();
        zza();
        zzR(new zzjg(this, str, str2, zzO(false), zzcfVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzw(AtomicReference<List<zzab>> atomicReference, String str, String str2, String str3) {
        zzg();
        zza();
        zzR(new zzjf(this, atomicReference, null, str2, str3, zzO(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzx(AtomicReference<List<zzkv>> atomicReference, boolean z) {
        zzg();
        zza();
        zzR(new zzir(this, atomicReference, zzO(false), z));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzy(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str, String str2, boolean z) {
        zzg();
        zza();
        zzR(new zzip(this, str, str2, zzO(false), z, zzcfVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzz(AtomicReference<List<zzkv>> atomicReference, String str, String str2, String str3, boolean z) {
        zzg();
        zza();
        zzR(new zzjh(this, atomicReference, null, str2, str3, zzO(false), z));
    }
}
