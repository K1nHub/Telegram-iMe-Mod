package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.internal.mlkit_common.zzfq;
import com.google.android.gms.internal.mlkit_common.zzfq.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public abstract class zzfq<MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzeg<MessageType, BuilderType> {
    private static Map<Object, zzfq<?, ?>> zzd = new ConcurrentHashMap();
    protected zzii zzb = zzii.zza();
    private int zzc = -1;

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    /* loaded from: classes.dex */
    protected static class zza<T extends zzfq<T, ?>> extends zzel<T> {
        private final T zza;

        public zza(T t) {
            this.zza = t;
        }
    }

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    /* loaded from: classes.dex */
    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzfq<MessageType, BuilderType> implements zzhd {
        protected zzfl<zzf> zzc = zzfl.zza();
    }

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    /* loaded from: classes.dex */
    public enum zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzh = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zza() {
            return (int[]) zzh.clone();
        }
    }

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    /* loaded from: classes.dex */
    static final class zzf implements zzfn<zzf> {
        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzix zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzja zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final boolean zze() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzha zza(zzha zzhaVar, zzhb zzhbVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfn
        public final zzhh zza(zzhh zzhhVar, zzhh zzhhVar2) {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zza(int i, Object obj, Object obj2);

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    /* loaded from: classes.dex */
    public static abstract class zzd<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzb<MessageType, BuilderType> implements zzhd {
        /* JADX INFO: Access modifiers changed from: protected */
        public zzd(MessageType messagetype) {
            super(messagetype);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.mlkit_common.zzfq.zzb
        public void zzc() {
            super.zzc();
            MessageType messagetype = this.zza;
            ((zzc) messagetype).zzc = (zzfl) ((zzc) messagetype).zzc.clone();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfq.zzb
        public /* synthetic */ zzfq zzd() {
            return (zzc) zzf();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzfq.zzb, com.google.android.gms.internal.mlkit_common.zzha
        public /* synthetic */ zzhb zzf() {
            if (this.zzb) {
                return (zzc) this.zza;
            }
            ((zzc) this.zza).zzc.zzb();
            return (zzc) super.zzf();
        }
    }

    public String toString() {
        return zzhc.zza(this, super.toString());
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int zza2 = zzhm.zza().zza((zzhm) this).zza(this);
        this.zza = zza2;
        return zza2;
    }

    /* compiled from: com.google.mlkit:common@@17.0.0 */
    /* loaded from: classes.dex */
    public static abstract class zzb<MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzej<MessageType, BuilderType> {
        protected MessageType zza;
        protected boolean zzb = false;
        private final MessageType zzc;

        /* JADX INFO: Access modifiers changed from: protected */
        public zzb(MessageType messagetype) {
            this.zzc = messagetype;
            this.zza = (MessageType) messagetype.zza(zze.zzd, null, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void zzc() {
            MessageType messagetype = (MessageType) this.zza.zza(zze.zzd, null, null);
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzhd
        public final boolean zzi() {
            return zzfq.zza(this.zza, false);
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzha
        /* renamed from: zzd */
        public MessageType zzf() {
            if (this.zzb) {
                return this.zza;
            }
            MessageType messagetype = this.zza;
            zzhm.zza().zza((zzhm) messagetype).zzb(messagetype);
            this.zzb = true;
            return this.zza;
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzha
        /* renamed from: zze */
        public final MessageType zzg() {
            MessageType messagetype = (MessageType) zzf();
            if (messagetype.zzi()) {
                return messagetype;
            }
            throw new zzig(messagetype);
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb) {
                zzc();
                this.zzb = false;
            }
            zza(this.zza, messagetype);
            return this;
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzhm.zza().zza((zzhm) messagetype).zzb(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_common.zzej
        protected final /* synthetic */ zzej zza(zzeg zzegVar) {
            return zza((zzb<MessageType, BuilderType>) ((zzfq) zzegVar));
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzej
        public final /* synthetic */ zzej zzb() {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.mlkit_common.zzhd
        public final /* synthetic */ zzhb zzn() {
            return this.zzc;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.mlkit_common.zzej
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.zzc.zza(zze.zze, null, null);
            zzbVar.zza((zzb) ((zzfq) zzf()));
            return zzbVar;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzhm.zza().zza((zzhm) this).zza(this, (zzfq) obj);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zzh() {
        return (BuilderType) zza(zze.zze, (Object) null, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends zzfq<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zza(MessageType messagetype) {
        return (BuilderType) zzh().zza(messagetype);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhd
    public final boolean zzi() {
        return zza(this, true);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzeg
    final int zzg() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzeg
    final void zza(int i) {
        this.zzc = i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhb
    public final void zza(zzfc zzfcVar) throws IOException {
        zzhm.zza().zza((zzhm) this).zza((zzhr) this, (zzjd) zzff.zza(zzfcVar));
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhb
    public final int zzj() {
        if (this.zzc == -1) {
            this.zzc = zzhm.zza().zza((zzhm) this).zzd(this);
        }
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends zzfq<?, ?>> T zza(Class<T> cls) {
        zzfq<?, ?> zzfqVar = zzd.get(cls);
        if (zzfqVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzfqVar = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzfqVar == null) {
            zzfqVar = (T) ((zzfq) zzip.zza(cls)).zza(zze.zzf, (Object) null, (Object) null);
            if (zzfqVar == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, zzfqVar);
        }
        return (T) zzfqVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzfq<?, ?>> void zza(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zza(zzhb zzhbVar, String str, Object[] objArr) {
        return new zzho(zzhbVar, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zza(Method method, Object obj, Object... objArr) {
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

    protected static final <T extends zzfq<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zze.zza, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzc2 = zzhm.zza().zza((zzhm) t).zzc(t);
        if (z) {
            t.zza(zze.zzb, zzc2 ? t : null, null);
        }
        return zzc2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_common.zzfw, com.google.android.gms.internal.mlkit_common.zzft] */
    public static zzfw zzk() {
        return zzft.zzd();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzfy<E> zzl() {
        return zzhp.zzd();
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhb
    public final /* synthetic */ zzha zzm() {
        zzb zzbVar = (zzb) zza(zze.zze, (Object) null, (Object) null);
        zzbVar.zza((zzb) this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhd
    public final /* synthetic */ zzhb zzn() {
        return (zzfq) zza(zze.zzf, (Object) null, (Object) null);
    }
}
