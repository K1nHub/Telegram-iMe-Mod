package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
import com.google.android.gms.internal.firebase_ml.zzuu.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import p034j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class zzuu<MessageType extends zzuu<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zztg<MessageType, BuilderType> {
    private static Map<Object, zzuu<?, ?>> zzbsq = new ConcurrentHashMap();
    protected zzxp zzbso = zzxp.zztn();
    private int zzbsp = -1;

    /* loaded from: classes.dex */
    public static class zza<T extends zzuu<T, ?>> extends zzti<T> {
        private final T zzbss;

        public zza(T t) {
            this.zzbss = t;
        }
    }

    /* loaded from: classes.dex */
    public enum zze {
        public static final int zzbsw = 1;
        public static final int zzbsx = 2;
        public static final int zzbsy = 3;
        public static final int zzbsz = 4;
        public static final int zzbta = 5;
        public static final int zzbtb = 6;
        public static final int zzbtc = 7;
        public static final int zzbte = 1;
        public static final int zzbtf = 2;
        public static final int zzbth = 1;
        public static final int zzbti = 2;
        private static final /* synthetic */ int[] zzbtd = {1, 2, 3, 4, 5, 6, 7};
        private static final /* synthetic */ int[] zzbtg = {1, 2};
        private static final /* synthetic */ int[] zzbtj = {1, 2};

        /* renamed from: values$50KLMJ33DTMIUPRFDTJMOP9FE1P6UT3FC9QMCBQ7CLN6ASJ1EHIM8JB5EDPM2PR59HKN8P949LIN8Q3FCHA6UIBEEPNMMP9R0 */
        public static int[] m775x126d66cb() {
            return (int[]) zzbtd.clone();
        }
    }

    /* loaded from: classes.dex */
    public static class zzf<ContainingType extends zzwe, Type> extends zzui<ContainingType, Type> {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Object zza(int i, Object obj, Object obj2);

    /* loaded from: classes.dex */
    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzuu<MessageType, BuilderType> implements zzwg {
        protected zzum<Object> zzbsv = zzum.zzqt();

        /* JADX INFO: Access modifiers changed from: package-private */
        public final zzum<Object> zzrr() {
            if (this.zzbsv.isImmutable()) {
                this.zzbsv = (zzum) this.zzbsv.clone();
            }
            return this.zzbsv;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class zzd<MessageType extends zzc<MessageType, BuilderType>, BuilderType extends zzd<MessageType, BuilderType>> extends zzb<MessageType, BuilderType> implements zzwg {
        protected zzd(MessageType messagetype) {
            super(messagetype);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.firebase_ml.zzuu.zzb
        public final void zzrm() {
            if (this.zzbsu) {
                super.zzrm();
                MessageType messagetype = this.zzbst;
                ((zzc) messagetype).zzbsv = (zzum) ((zzc) messagetype).zzbsv.clone();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu.zzb
        public /* synthetic */ zzuu zzrn() {
            return (zzc) zzrp();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu.zzb, com.google.android.gms.internal.firebase_ml.zzwh
        public /* synthetic */ zzwe zzrp() {
            if (this.zzbsu) {
                return (zzc) this.zzbst;
            }
            ((zzc) this.zzbst).zzbsv.zzqa();
            return (zzc) super.zzrp();
        }
    }

    public String toString() {
        return zzwj.zza(this, super.toString());
    }

    public int hashCode() {
        int i = this.zzboh;
        if (i != 0) {
            return i;
        }
        int hashCode = zzwt.zzsw().zzad(this).hashCode(this);
        this.zzboh = hashCode;
        return hashCode;
    }

    /* loaded from: classes.dex */
    public static abstract class zzb<MessageType extends zzuu<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zztf<MessageType, BuilderType> {
        private final MessageType zzbss;
        protected MessageType zzbst;
        protected boolean zzbsu = false;

        /* JADX INFO: Access modifiers changed from: protected */
        public zzb(MessageType messagetype) {
            this.zzbss = messagetype;
            this.zzbst = (MessageType) messagetype.zza(zze.zzbsz, null, null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void zzrm() {
            if (this.zzbsu) {
                MessageType messagetype = (MessageType) this.zzbst.zza(zze.zzbsz, null, null);
                zza(messagetype, this.zzbst);
                this.zzbst = messagetype;
                this.zzbsu = false;
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzwg
        public final boolean isInitialized() {
            return zzuu.zza(this.zzbst, false);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzwh
        /* renamed from: zzrn */
        public MessageType zzrp() {
            if (this.zzbsu) {
                return this.zzbst;
            }
            this.zzbst.zzqa();
            this.zzbsu = true;
            return this.zzbst;
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzwh
        /* renamed from: zzro */
        public final MessageType zzrq() {
            MessageType messagetype = (MessageType) zzrp();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new zzxn(messagetype);
        }

        public final BuilderType zza(MessageType messagetype) {
            zzrm();
            zza(this.zzbst, messagetype);
            return this;
        }

        private static void zza(MessageType messagetype, MessageType messagetype2) {
            zzwt.zzsw().zzad(messagetype).zze(messagetype, messagetype2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.firebase_ml.zztf
        protected final /* synthetic */ zztf zza(zztg zztgVar) {
            return zza((zzb<MessageType, BuilderType>) ((zzuu) zztgVar));
        }

        @Override // com.google.android.gms.internal.firebase_ml.zztf
        public final /* synthetic */ zztf zzpw() {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzwg
        public final /* synthetic */ zzwe zzrk() {
            return this.zzbss;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.firebase_ml.zztf
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.zzbss.zza(zze.zzbta, null, null);
            zzbVar.zza((zzb) ((zzuu) zzrp()));
            return zzbVar;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((zzuu) zza(zze.zzbtb, (Object) null, (Object) null)).getClass().isInstance(obj)) {
            return zzwt.zzsw().zzad(this).equals(this, (zzuu) obj);
        }
        return false;
    }

    protected final void zzqa() {
        zzwt.zzsw().zzad(this).zzq(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <MessageType extends zzuu<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zzrd() {
        return (BuilderType) zza(zze.zzbta, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwg
    public final boolean isInitialized() {
        return zza(this, true);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztg
    final int zzpy() {
        return this.zzbsp;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zztg
    final void zzci(int i) {
        this.zzbsp = i;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwe
    public final void zzb(zzue zzueVar) throws IOException {
        zzwt.zzsw().zzk(getClass()).zza(this, zzug.zza(zzueVar));
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwe
    public final int zzre() {
        if (this.zzbsp == -1) {
            this.zzbsp = zzwt.zzsw().zzad(this).zzaa(this);
        }
        return this.zzbsp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T extends zzuu<?, ?>> T zzg(Class<T> cls) {
        zzuu<?, ?> zzuuVar = zzbsq.get(cls);
        if (zzuuVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzuuVar = zzbsq.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzuuVar == null) {
            zzuuVar = (T) ((zzuu) zzxs.zzm(cls)).zza(zze.zzbtb, (Object) null, (Object) null);
            if (zzuuVar == null) {
                throw new IllegalStateException();
            }
            zzbsq.put(cls, zzuuVar);
        }
        return (T) zzuuVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends zzuu<?, ?>> void zza(Class<T> cls, T t) {
        zzbsq.put(cls, t);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zza(zzwe zzweVar, String str, Object[] objArr) {
        return new zzwv(zzweVar, str, objArr);
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

    protected static final <T extends zzuu<T, ?>> boolean zza(T t, boolean z) {
        byte byteValue = ((Byte) t.zza(zze.zzbsw, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzac = zzwt.zzsw().zzad(t).zzac(t);
        if (z) {
            t.zza(zze.zzbsx, zzac ? t : null, null);
        }
        return zzac;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzvd zzrf() {
        return zzux.zzrs();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static zzvd zza(zzvd zzvdVar) {
        int size = zzvdVar.size();
        return zzvdVar.zzdh(size == 0 ? 10 : size << 1);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.firebase_ml.zzus, com.google.android.gms.internal.firebase_ml.zzva] */
    protected static zzva zzrg() {
        return zzus.zzrc();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzvf<E> zzrh() {
        return zzws.zzsv();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <E> zzvf<E> zza(zzvf<E> zzvfVar) {
        int size = zzvfVar.size();
        return zzvfVar.zzcl(size == 0 ? 10 : size << 1);
    }

    private static <T extends zzuu<T, ?>> T zza(T t, byte[] bArr, int i, int i2, zzuj zzujVar) throws zzve {
        T t2 = (T) t.zza(zze.zzbsz, null, null);
        try {
            zzwt.zzsw().zzad(t2).zza(t2, bArr, 0, i2, new zztm(zzujVar));
            t2.zzqa();
            if (t2.zzboh == 0) {
                return t2;
            }
            throw new RuntimeException();
        } catch (IOException e) {
            if (e.getCause() instanceof zzve) {
                throw ((zzve) e.getCause());
            }
            throw new zzve(e.getMessage()).zzg(t2);
        } catch (IndexOutOfBoundsException unused) {
            throw zzve.zzrt().zzg(t2);
        }
    }

    protected static <T extends zzuu<T, ?>> T zza(T t, byte[] bArr, zzuj zzujVar) throws zzve {
        T t2 = (T) zza(t, bArr, 0, bArr.length, zzujVar);
        if (t2 == null || t2.isInitialized()) {
            return t2;
        }
        throw new zzve(new zzxn(t2).getMessage()).zzg(t2);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwe
    public final /* synthetic */ zzwh zzri() {
        zzb zzbVar = (zzb) zza(zze.zzbta, (Object) null, (Object) null);
        zzbVar.zza((zzb) this);
        return zzbVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwe
    public final /* synthetic */ zzwh zzrj() {
        return (zzb) zza(zze.zzbta, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwg
    public final /* synthetic */ zzwe zzrk() {
        return (zzuu) zza(zze.zzbtb, (Object) null, (Object) null);
    }
}
