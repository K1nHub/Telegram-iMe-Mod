package com.google.android.gms.internal.auth;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.4 */
/* loaded from: classes.dex */
public abstract class zzdc {
    public static final /* synthetic */ int zzd = 0;
    private static volatile zzda zze = null;
    private static volatile boolean zzf = false;
    final zzcz zzb;
    final String zzc;
    private final Object zzj;
    private volatile int zzk = -1;
    private volatile Object zzl;
    private final boolean zzm;
    private static final Object zza = new Object();
    private static final AtomicReference zzg = new AtomicReference();
    private static final zzde zzh = new zzde(new Object() { // from class: com.google.android.gms.internal.auth.zzcu
    }, null);
    private static final AtomicInteger zzi = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdc(zzcz zzczVar, String str, Object obj, boolean z, zzdb zzdbVar) {
        if (zzczVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.zzb = zzczVar;
        this.zzc = str;
        this.zzj = obj;
        this.zzm = true;
    }

    public static void zzd() {
        zzi.incrementAndGet();
    }

    public static void zze(final Context context) {
        if (zze == null) {
            Object obj = zza;
            synchronized (obj) {
                if (zze == null) {
                    synchronized (obj) {
                        zzda zzdaVar = zze;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (zzdaVar == null || zzdaVar.zza() != context) {
                            zzcg.zzd();
                            zzdd.zzc();
                            zzco.zze();
                            zze = new zzcd(context, zzdn.zza(new zzdj() { // from class: com.google.android.gms.internal.auth.zzct
                                @Override // com.google.android.gms.internal.auth.zzdj
                                public final Object zza() {
                                    Context context2 = context;
                                    int i = zzdc.zzd;
                                    return zzcp.zza(context2);
                                }
                            }));
                            zzi.incrementAndGet();
                        }
                    }
                }
            }
        }
    }

    abstract Object zza(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:37:0x0099 A[Catch: all -> 0x00d3, TryCatch #0 {, blocks: (B:8:0x0016, B:10:0x001a, B:12:0x0020, B:14:0x0029, B:16:0x0037, B:20:0x0060, B:22:0x006a, B:38:0x009b, B:40:0x00ab, B:42:0x00bf, B:43:0x00c2, B:44:0x00c6, B:26:0x0073, B:28:0x0079, B:32:0x008b, B:34:0x0091, B:37:0x0099, B:31:0x0089, B:18:0x0050, B:45:0x00cb, B:46:0x00d0, B:47:0x00d1), top: B:54:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzb() {
        /*
            r6 = this;
            boolean r0 = r6.zzm
            if (r0 != 0) goto Lb
            java.lang.String r0 = r6.zzc
            java.lang.String r1 = "flagName must not be null"
            java.util.Objects.requireNonNull(r0, r1)
        Lb:
            java.util.concurrent.atomic.AtomicInteger r0 = com.google.android.gms.internal.auth.zzdc.zzi
            int r0 = r0.get()
            int r1 = r6.zzk
            if (r1 >= r0) goto Ld6
            monitor-enter(r6)
            int r1 = r6.zzk     // Catch: java.lang.Throwable -> Ld3
            if (r1 >= r0) goto Ld1
            com.google.android.gms.internal.auth.zzda r1 = com.google.android.gms.internal.auth.zzdc.zze     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r2 = "Must call PhenotypeFlag.init() first"
            if (r1 == 0) goto Lcb
            com.google.android.gms.internal.auth.zzcz r2 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            boolean r3 = r2.zzf     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r2 = r2.zzb     // Catch: java.lang.Throwable -> Ld3
            r3 = 0
            if (r2 == 0) goto L50
            android.content.Context r2 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcz r4 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r4 = r4.zzb     // Catch: java.lang.Throwable -> Ld3
            boolean r2 = com.google.android.gms.internal.auth.zzcq.zza(r2, r4)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto L4e
            com.google.android.gms.internal.auth.zzcz r2 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            boolean r2 = r2.zzh     // Catch: java.lang.Throwable -> Ld3
            android.content.Context r2 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcz r4 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r4 = r4.zzb     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcs r5 = new java.lang.Runnable() { // from class: com.google.android.gms.internal.auth.zzcs
                static {
                    /*
                        com.google.android.gms.internal.auth.zzcs r0 = new com.google.android.gms.internal.auth.zzcs
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.google.android.gms.internal.auth.zzcs) com.google.android.gms.internal.auth.zzcs.zza com.google.android.gms.internal.auth.zzcs
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzcs.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzcs.<init>():void");
                }

                @Override // java.lang.Runnable
                public final void run() {
                    /*
                        r0 = this;
                        com.google.android.gms.internal.auth.zzdc.zzd()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzcs.run():void");
                }
            }     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcg r2 = com.google.android.gms.internal.auth.zzcg.zza(r2, r4, r5)     // Catch: java.lang.Throwable -> Ld3
            goto L5e
        L4e:
            r2 = r3
            goto L5e
        L50:
            android.content.Context r2 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcz r4 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r4 = r4.zza     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcs r4 = com.google.android.gms.internal.auth.zzcs.zza     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzdd r2 = com.google.android.gms.internal.auth.zzdd.zza(r2, r3, r4)     // Catch: java.lang.Throwable -> Ld3
        L5e:
            if (r2 == 0) goto L6f
            java.lang.String r4 = r6.zzc()     // Catch: java.lang.Throwable -> Ld3
            java.lang.Object r2 = r2.zzb(r4)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto L6f
            java.lang.Object r2 = r6.zza(r2)     // Catch: java.lang.Throwable -> Ld3
            goto L70
        L6f:
            r2 = r3
        L70:
            if (r2 == 0) goto L73
            goto L9b
        L73:
            com.google.android.gms.internal.auth.zzcz r2 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            boolean r2 = r2.zze     // Catch: java.lang.Throwable -> Ld3
            if (r2 != 0) goto L96
            android.content.Context r2 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzco r2 = com.google.android.gms.internal.auth.zzco.zza(r2)     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcz r4 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            boolean r4 = r4.zze     // Catch: java.lang.Throwable -> Ld3
            if (r4 == 0) goto L89
            r4 = r3
            goto L8b
        L89:
            java.lang.String r4 = r6.zzc     // Catch: java.lang.Throwable -> Ld3
        L8b:
            java.lang.String r2 = r2.zzb(r4)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto L96
            java.lang.Object r2 = r6.zza(r2)     // Catch: java.lang.Throwable -> Ld3
            goto L97
        L96:
            r2 = r3
        L97:
            if (r2 != 0) goto L9b
            java.lang.Object r2 = r6.zzj     // Catch: java.lang.Throwable -> Ld3
        L9b:
            com.google.android.gms.internal.auth.zzdj r1 = r1.zzb()     // Catch: java.lang.Throwable -> Ld3
            java.lang.Object r1 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzdh r1 = (com.google.android.gms.internal.auth.zzdh) r1     // Catch: java.lang.Throwable -> Ld3
            boolean r4 = r1.zzb()     // Catch: java.lang.Throwable -> Ld3
            if (r4 == 0) goto Lc6
            java.lang.Object r1 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzci r1 = (com.google.android.gms.internal.auth.zzci) r1     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.auth.zzcz r2 = r6.zzb     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r4 = r2.zzb     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r2 = r2.zzd     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r5 = r6.zzc     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r1 = r1.zza(r4, r3, r2, r5)     // Catch: java.lang.Throwable -> Ld3
            if (r1 != 0) goto Lc2
            java.lang.Object r2 = r6.zzj     // Catch: java.lang.Throwable -> Ld3
            goto Lc6
        Lc2:
            java.lang.Object r2 = r6.zza(r1)     // Catch: java.lang.Throwable -> Ld3
        Lc6:
            r6.zzl = r2     // Catch: java.lang.Throwable -> Ld3
            r6.zzk = r0     // Catch: java.lang.Throwable -> Ld3
            goto Ld1
        Lcb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Ld3
            r0.<init>(r2)     // Catch: java.lang.Throwable -> Ld3
            throw r0     // Catch: java.lang.Throwable -> Ld3
        Ld1:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Ld3
            goto Ld6
        Ld3:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Ld3
            throw r0
        Ld6:
            java.lang.Object r0 = r6.zzl
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzdc.zzb():java.lang.Object");
    }

    public final String zzc() {
        String str = this.zzb.zzd;
        return this.zzc;
    }
}
