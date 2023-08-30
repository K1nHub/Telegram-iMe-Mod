package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public class zzer<T> extends zzho {
    private final zzep zzss;
    private final String zzst;
    private final String zzsu;
    private final zzff zzsv;
    private zzfj zzsx;
    private String zzsz;
    private Class<T> zzta;
    private zzfj zzsw = new zzfj();
    private int zzsy = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzer(zzep zzepVar, String str, String str2, zzff zzffVar, Class<T> cls) {
        zzet zzej;
        this.zzta = (Class) zzkv.checkNotNull(cls);
        this.zzss = (zzep) zzkv.checkNotNull(zzepVar);
        this.zzst = (String) zzkv.checkNotNull(str);
        this.zzsu = (String) zzkv.checkNotNull(str2);
        this.zzsv = zzffVar;
        String zzed = zzepVar.zzed();
        if (zzed != null) {
            zzfj zzfjVar = this.zzsw;
            StringBuilder sb = new StringBuilder(zzed.length() + 23);
            sb.append(zzed);
            sb.append(" Google-API-Java-Client");
            zzfjVar.zzab(sb.toString());
        } else {
            this.zzsw.zzab("Google-API-Java-Client");
        }
        zzfj zzfjVar2 = this.zzsw;
        zzej = zzet.zzej();
        zzfjVar2.zzb("X-Goog-Api-Client", zzej.zzl(zzepVar.getClass().getSimpleName()));
    }

    public zzep zzeg() {
        return this.zzss;
    }

    public final zzfj zzeh() {
        return this.zzsw;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IOException zzb(zzfp zzfpVar) {
        return new zzfo(zzfpVar);
    }

    public final T zzei() throws IOException {
        zzkv.checkArgument(true);
        zzkv.checkArgument(true);
        zzfk zza = zzeg().zzee().zza(this.zzst, new zzfc(zzfu.zza(this.zzss.zzec(), this.zzsu, (Object) this, true)), this.zzsv);
        new zzen().zzb(zza);
        zza.zza(zzeg().zzef());
        if (this.zzsv == null && (this.zzst.equals("POST") || this.zzst.equals("PUT") || this.zzst.equals("PATCH"))) {
            zza.zza(new zzfb());
        }
        zza.zzev().putAll(this.zzsw);
        zza.zza(new zzfa());
        zza.zza(new zzeq(this, zza.zzex(), zza));
        zzfp zzfa = zza.zzfa();
        this.zzsx = zzfa.zzev();
        this.zzsy = zzfa.getStatusCode();
        this.zzsz = zzfa.getStatusMessage();
        return (T) zzfa.zza(this.zzta);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzho
    /* renamed from: zzc */
    public zzer<T> zzb(String str, Object obj) {
        return (zzer) super.zzb(str, obj);
    }
}
