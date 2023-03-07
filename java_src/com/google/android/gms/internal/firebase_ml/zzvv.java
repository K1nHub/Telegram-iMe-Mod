package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzvv implements zzwx {
    private static final zzwf zzbus = new zzvu();
    private final zzwf zzbur;

    public zzvv() {
        this(new zzvx(zzuv.zzrl(), zzsg()));
    }

    private zzvv(zzwf zzwfVar) {
        this.zzbur = (zzwf) zzuw.zza(zzwfVar, "messageInfoFactory");
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwx
    public final <T> zzwu<T> zzj(Class<T> cls) {
        zzww.zzl((Class<?>) cls);
        zzwc zzi = this.zzbur.zzi(cls);
        if (zzi.zzsm()) {
            if (zzuu.class.isAssignableFrom(cls)) {
                return zzwk.zza(zzww.zztb(), zzun.zzqw(), zzi.zzsn());
            }
            return zzwk.zza(zzww.zzsz(), zzun.zzqx(), zzi.zzsn());
        } else if (zzuu.class.isAssignableFrom(cls)) {
            if (zza(zzi)) {
                return zzwi.zza(cls, zzi, zzwo.zzst(), zzvo.zzsf(), zzww.zztb(), zzun.zzqw(), zzwd.zzsp());
            }
            return zzwi.zza(cls, zzi, zzwo.zzst(), zzvo.zzsf(), zzww.zztb(), (zzul<?>) null, zzwd.zzsp());
        } else if (zza(zzi)) {
            return zzwi.zza(cls, zzi, zzwo.zzss(), zzvo.zzse(), zzww.zzsz(), zzun.zzqx(), zzwd.zzso());
        } else {
            return zzwi.zza(cls, zzi, zzwo.zzss(), zzvo.zzse(), zzww.zzta(), (zzul<?>) null, zzwd.zzso());
        }
    }

    private static boolean zza(zzwc zzwcVar) {
        return zzwcVar.zzsl() == zzuu.zze.zzbte;
    }

    private static zzwf zzsg() {
        try {
            return (zzwf) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return zzbus;
        }
    }
}
