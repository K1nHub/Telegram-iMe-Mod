package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzxs {
    private static final Logger logger = Logger.getLogger(zzxs.class.getName());
    private static final Class<?> zzbol;
    private static final boolean zzbpg;
    private static final Unsafe zzbve;
    private static final boolean zzbxa;
    private static final boolean zzbxb;
    private static final zzd zzbxc;
    private static final boolean zzbxd;
    private static final long zzbxe;
    private static final long zzbxf;
    private static final long zzbxg;
    private static final long zzbxh;
    private static final long zzbxi;
    private static final long zzbxj;
    private static final long zzbxk;
    private static final long zzbxl;
    private static final long zzbxm;
    private static final long zzbxn;
    private static final long zzbxo;
    private static final long zzbxp;
    private static final long zzbxq;
    private static final long zzbxr;
    private static final int zzbxs;
    static final boolean zzbxt;

    private zzxs() {
    }

    /* loaded from: classes.dex */
    static final class zza extends zzd {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final byte zzy(Object obj, long j) {
            if (zzxs.zzbxt) {
                return zzxs.zzq(obj, j);
            }
            return zzxs.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzxs.zzbxt) {
                zzxs.zza(obj, j, b);
            } else {
                zzxs.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzxs.zzbxt) {
                return zzxs.zzs(obj, j);
            }
            return zzxs.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzxs.zzbxt) {
                zzxs.zzb(obj, j, z);
            } else {
                zzxs.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, float f) {
            zza(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }
    }

    /* loaded from: classes.dex */
    static final class zzb extends zzd {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final byte zzy(Object obj, long j) {
            return this.zzbxw.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zze(Object obj, long j, byte b) {
            this.zzbxw.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final boolean zzm(Object obj, long j) {
            return this.zzbxw.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, boolean z) {
            this.zzbxw.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final float zzn(Object obj, long j) {
            return this.zzbxw.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, float f) {
            this.zzbxw.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final double zzo(Object obj, long j) {
            return this.zzbxw.getDouble(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, double d) {
            this.zzbxw.putDouble(obj, j, d);
        }
    }

    /* loaded from: classes.dex */
    static final class zzc extends zzd {
        zzc(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final byte zzy(Object obj, long j) {
            if (zzxs.zzbxt) {
                return zzxs.zzq(obj, j);
            }
            return zzxs.zzr(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zze(Object obj, long j, byte b) {
            if (zzxs.zzbxt) {
                zzxs.zza(obj, j, b);
            } else {
                zzxs.zzb(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final boolean zzm(Object obj, long j) {
            if (zzxs.zzbxt) {
                return zzxs.zzs(obj, j);
            }
            return zzxs.zzt(obj, j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, boolean z) {
            if (zzxs.zzbxt) {
                zzxs.zzb(obj, j, z);
            } else {
                zzxs.zzc(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final float zzn(Object obj, long j) {
            return Float.intBitsToFloat(zzk(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, float f) {
            zza(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final double zzo(Object obj, long j) {
            return Double.longBitsToDouble(zzl(obj, j));
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzxs.zzd
        public final void zza(Object obj, long j, double d) {
            zza(obj, j, Double.doubleToLongBits(d));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zztq() {
        return zzbpg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static abstract class zzd {
        Unsafe zzbxw;

        zzd(Unsafe unsafe) {
            this.zzbxw = unsafe;
        }

        public abstract void zza(Object obj, long j, double d);

        public abstract void zza(Object obj, long j, float f);

        public abstract void zza(Object obj, long j, boolean z);

        public abstract void zze(Object obj, long j, byte b);

        public abstract boolean zzm(Object obj, long j);

        public abstract float zzn(Object obj, long j);

        public abstract double zzo(Object obj, long j);

        public abstract byte zzy(Object obj, long j);

        public final int zzk(Object obj, long j) {
            return this.zzbxw.getInt(obj, j);
        }

        public final void zza(Object obj, long j, int i) {
            this.zzbxw.putInt(obj, j, i);
        }

        public final long zzl(Object obj, long j) {
            return this.zzbxw.getLong(obj, j);
        }

        public final void zza(Object obj, long j, long j2) {
            this.zzbxw.putLong(obj, j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zztr() {
        return zzbxd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T zzm(Class<T> cls) {
        try {
            return (T) zzbve.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    private static int zzn(Class<?> cls) {
        if (zzbpg) {
            return zzbxc.zzbxw.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static int zzo(Class<?> cls) {
        if (zzbpg) {
            return zzbxc.zzbxw.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(Object obj, long j) {
        return zzbxc.zzk(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, int i) {
        zzbxc.zza(obj, j, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzl(Object obj, long j) {
        return zzbxc.zzl(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, long j2) {
        zzbxc.zza(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzm(Object obj, long j) {
        return zzbxc.zzm(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, boolean z) {
        zzbxc.zza(obj, j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float zzn(Object obj, long j) {
        return zzbxc.zzn(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, float f) {
        zzbxc.zza(obj, j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double zzo(Object obj, long j) {
        return zzbxc.zzo(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, double d) {
        zzbxc.zza(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zzp(Object obj, long j) {
        return zzbxc.zzbxw.getObject(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j, Object obj2) {
        zzbxc.zzbxw.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte zza(byte[] bArr, long j) {
        return zzbxc.zzy(bArr, zzbxe + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(byte[] bArr, long j, byte b) {
        zzbxc.zze(bArr, zzbxe + j, b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe zzts() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzxu());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean zztt() {
        Unsafe unsafe = zzbve;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            if (zztk.zzqc()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(valueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean zztu() {
        Unsafe unsafe = zzbve;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getLong", Object.class, cls2);
            if (zztv() == null) {
                return false;
            }
            if (zztk.zzqc()) {
                return true;
            }
            cls.getMethod("getByte", cls2);
            cls.getMethod("putByte", cls2, Byte.TYPE);
            cls.getMethod("getInt", cls2);
            cls.getMethod("putInt", cls2, Integer.TYPE);
            cls.getMethod("getLong", cls2);
            cls.getMethod("putLong", cls2, cls2);
            cls.getMethod("copyMemory", cls2, cls2, cls2);
            cls.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
            return true;
        } catch (Throwable th) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(valueOf.length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger2.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static boolean zzp(Class<?> cls) {
        if (zztk.zzqc()) {
            try {
                Class<?> cls2 = zzbol;
                Class<?> cls3 = Boolean.TYPE;
                cls2.getMethod("peekLong", cls, cls3);
                cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
                Class<?> cls4 = Integer.TYPE;
                cls2.getMethod("pokeInt", cls, cls4, cls3);
                cls2.getMethod("peekInt", cls, cls3);
                cls2.getMethod("pokeByte", cls, Byte.TYPE);
                cls2.getMethod("peekByte", cls);
                cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
                cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    private static Field zztv() {
        Field zzb2;
        if (!zztk.zzqc() || (zzb2 = zzb(Buffer.class, "effectiveDirectAddress")) == null) {
            Field zzb3 = zzb(Buffer.class, "address");
            if (zzb3 == null || zzb3.getType() != Long.TYPE) {
                return null;
            }
            return zzb3;
        }
        return zzb2;
    }

    private static Field zzb(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzq(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) (((~j) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte zzr(Object obj, long j) {
        return (byte) (zzk(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int zzk = zzk(obj, j2);
        int i = ((~((int) j)) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zzk & (~(255 << i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        zza(obj, j2, ((255 & b) << i) | (zzk(obj, j2) & (~(255 << i))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzs(Object obj, long j) {
        return zzq(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzt(Object obj, long j) {
        return zzr(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzb(Object obj, long j, boolean z) {
        zza(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j, boolean z) {
        zzb(obj, j, z ? (byte) 1 : (byte) 0);
    }

    static {
        Unsafe zzts = zzts();
        zzbve = zzts;
        zzbol = zztk.zzqd();
        boolean zzp = zzp(Long.TYPE);
        zzbxa = zzp;
        boolean zzp2 = zzp(Integer.TYPE);
        zzbxb = zzp2;
        zzd zzdVar = null;
        if (zzts != null) {
            if (!zztk.zzqc()) {
                zzdVar = new zzb(zzts);
            } else if (zzp) {
                zzdVar = new zzc(zzts);
            } else if (zzp2) {
                zzdVar = new zza(zzts);
            }
        }
        zzbxc = zzdVar;
        zzbxd = zztu();
        zzbpg = zztt();
        long zzn = zzn(byte[].class);
        zzbxe = zzn;
        zzbxf = zzn(boolean[].class);
        zzbxg = zzo(boolean[].class);
        zzbxh = zzn(int[].class);
        zzbxi = zzo(int[].class);
        zzbxj = zzn(long[].class);
        zzbxk = zzo(long[].class);
        zzbxl = zzn(float[].class);
        zzbxm = zzo(float[].class);
        zzbxn = zzn(double[].class);
        zzbxo = zzo(double[].class);
        zzbxp = zzn(Object[].class);
        zzbxq = zzo(Object[].class);
        Field zztv = zztv();
        zzbxr = (zztv == null || zzdVar == null) ? -1L : zzdVar.zzbxw.objectFieldOffset(zztv);
        zzbxs = (int) (7 & zzn);
        zzbxt = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }
}
