package com.google.android.gms.internal.wearable;

import com.google.android.gms.internal.wearable.zzbs;
import com.google.android.gms.internal.wearable.zzbv;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
public abstract class zzbv<MessageType extends zzbv<MessageType, BuilderType>, BuilderType extends zzbs<MessageType, BuilderType>> extends zzag<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    protected zzef zzc = zzef.zzc();
    protected int zzd = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzbv zzO(Class cls) {
        Map map = zzb;
        zzbv zzbvVar = (zzbv) map.get(cls);
        if (zzbvVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzbvVar = (zzbv) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzbvVar == null) {
            zzbvVar = (zzbv) ((zzbv) zzeo.zze(cls)).zzG(6, null, null);
            if (zzbvVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzbvVar);
        }
        return zzbvVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzbv zzP(zzbv zzbvVar, byte[] bArr) throws zzcf {
        zzbv zzb2 = zzb(zzbvVar, bArr, 0, bArr.length, zzbj.zza());
        zza(zzb2);
        return zzb2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzbv zzQ(zzbv zzbvVar, byte[] bArr, zzbj zzbjVar) throws zzcf {
        zzbv zzb2 = zzb(zzbvVar, bArr, 0, bArr.length, zzbjVar);
        zza(zzb2);
        return zzb2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzca zzR() {
        return zzbq.zze();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzcb zzS() {
        return zzcr.zzf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzcc zzT() {
        return zzdl.zze();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzcc zzU(zzcc zzccVar) {
        int size = zzccVar.size();
        return zzccVar.zzd(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzX(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zzY(zzdc zzdcVar, String str, Object[] objArr) {
        return new zzdm(zzdcVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void zzZ(Class cls, zzbv zzbvVar) {
        zzb.put(cls, zzbvVar);
    }

    private static zzbv zza(zzbv zzbvVar) throws zzcf {
        if (zzbvVar == null || zzbvVar.zzab()) {
            return zzbvVar;
        }
        zzcf zza = new zzed(zzbvVar).zza();
        zza.zzf(zzbvVar);
        throw zza;
    }

    private static zzbv zzb(zzbv zzbvVar, byte[] bArr, int i, int i2, zzbj zzbjVar) throws zzcf {
        zzbv zzbvVar2 = (zzbv) zzbvVar.zzG(4, null, null);
        try {
            zzdn zzb2 = zzdk.zza().zzb(zzbvVar2.getClass());
            zzb2.zzh(zzbvVar2, bArr, 0, i2, new zzaj(zzbjVar));
            zzb2.zzf(zzbvVar2);
            if (zzbvVar2.zza == 0) {
                return zzbvVar2;
            }
            throw new RuntimeException();
        } catch (zzcf e) {
            e.zzf(zzbvVar2);
            throw e;
        } catch (zzed e2) {
            zzcf zza = e2.zza();
            zza.zzf(zzbvVar2);
            throw zza;
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzcf) {
                throw ((zzcf) e3.getCause());
            }
            zzcf zzcfVar = new zzcf(e3);
            zzcfVar.zzf(zzbvVar2);
            throw zzcfVar;
        } catch (IndexOutOfBoundsException unused) {
            zzcf zzg = zzcf.zzg();
            zzg.zzf(zzbvVar2);
            throw zzg;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzdk.zza().zzb(getClass()).zzj(this, (zzbv) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int zzb2 = zzdk.zza().zzb(getClass()).zzb(this);
        this.zza = zzb2;
        return zzb2;
    }

    public final String toString() {
        return zzde.zza(this, super.toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zzG(int i, Object obj, Object obj2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzag
    public final int zzH() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.wearable.zzag
    public final void zzK(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.wearable.zzdc
    public final int zzM() {
        int i = this.zzd;
        if (i == -1) {
            int zza = zzdk.zza().zzb(getClass()).zza(this);
            this.zzd = zza;
            return zza;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzbs zzN() {
        return (zzbs) zzG(5, null, null);
    }

    @Override // com.google.android.gms.internal.wearable.zzdc
    public final /* synthetic */ zzdb zzV() {
        return (zzbs) zzG(5, null, null);
    }

    @Override // com.google.android.gms.internal.wearable.zzdc
    public final /* synthetic */ zzdb zzW() {
        zzbs zzbsVar = (zzbs) zzG(5, null, null);
        zzbsVar.zzs(this);
        return zzbsVar;
    }

    @Override // com.google.android.gms.internal.wearable.zzdc
    public final void zzaa(zzbe zzbeVar) throws IOException {
        zzdk.zza().zzb(getClass()).zzi(this, zzbf.zza(zzbeVar));
    }

    @Override // com.google.android.gms.internal.wearable.zzdd
    public final /* synthetic */ zzdc zzac() {
        return (zzbv) zzG(6, null, null);
    }

    public final boolean zzab() {
        byte byteValue = ((Byte) zzG(1, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzk = zzdk.zza().zzb(getClass()).zzk(this);
        zzG(2, true != zzk ? null : this, null);
        return zzk;
    }
}
