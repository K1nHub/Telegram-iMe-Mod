package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjv;
import com.google.android.gms.internal.measurement.zzjz;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p035j$.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public abstract class zzjz<MessageType extends zzjz<MessageType, BuilderType>, BuilderType extends zzjv<MessageType, BuilderType>> extends zzih<MessageType, BuilderType> {
    private static final Map<Object, zzjz<?, ?>> zza = new ConcurrentHashMap();
    protected zzmj zzc = zzmj.zzc();
    protected int zzd = -1;

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzkg<E> zzbA() {
        return zzlp.zze();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzkg<E> zzbB(zzkg<E> zzkgVar) {
        int size = zzkgVar.size();
        return zzkgVar.zzd(size == 0 ? 10 : size + size);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzbE(Method method, Object obj, Object... objArr) {
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
    public static Object zzbF(zzlg zzlgVar, String str, Object[] objArr) {
        return new zzlq(zzlgVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzjz> void zzbG(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends zzjz> T zzbw(Class<T> cls) {
        Map<Object, zzjz<?, ?>> map = zza;
        zzjz<?, ?> zzjzVar = map.get(cls);
        if (zzjzVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzjzVar = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzjzVar == null) {
            zzjzVar = (zzjz) ((zzjz) zzms.zze(cls)).zzl(6, null, null);
            if (zzjzVar == null) {
                throw new IllegalStateException();
            }
            map.put(cls, zzjzVar);
        }
        return zzjzVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzke zzbx() {
        return zzka.zzf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzkf zzby() {
        return zzkv.zzf();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzkf zzbz(zzkf zzkfVar) {
        int size = zzkfVar.size();
        return zzkfVar.zze(size == 0 ? 10 : size + size);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzlo.zza().zzb(getClass()).zzi(this, (zzjz) obj);
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int zzb = zzlo.zza().zzb(getClass()).zzb(this);
        this.zzb = zzb;
        return zzb;
    }

    public final String toString() {
        return zzli.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final /* bridge */ /* synthetic */ zzlf zzbC() {
        return (zzjv) zzl(5, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final /* bridge */ /* synthetic */ zzlf zzbD() {
        zzjv zzjvVar = (zzjv) zzl(5, null, null);
        zzjvVar.zzay(this);
        return zzjvVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final void zzbH(zzjg zzjgVar) throws IOException {
        zzlo.zza().zzb(getClass()).zzm(this, zzjh.zza(zzjgVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final /* bridge */ /* synthetic */ zzlg zzbL() {
        return (zzjz) zzl(6, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzih
    public final int zzbo() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzih
    public final void zzbr(int i) {
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.measurement.zzlg
    public final int zzbt() {
        int i = this.zzd;
        if (i == -1) {
            int zza2 = zzlo.zza().zzb(getClass()).zza(this);
            this.zzd = zza2;
            return zza2;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends zzjz<MessageType, BuilderType>, BuilderType extends zzjv<MessageType, BuilderType>> BuilderType zzbu() {
        return (BuilderType) zzl(5, null, null);
    }

    public final BuilderType zzbv() {
        BuilderType buildertype = (BuilderType) zzl(5, null, null);
        buildertype.zzay(this);
        return buildertype;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zzl(int i, Object obj, Object obj2);
}
