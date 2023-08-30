package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
/* loaded from: classes.dex */
public final class zzrl {

    /* loaded from: classes.dex */
    public static final class zza extends zzuu<zza, C7472zza> implements zzwg {
        private static final zzvc<Integer, zztc> zzbfg = new zzrm();
        private static final zza zzbfh;
        private static volatile zzwr<zza> zzs;
        private zzvd zzbff = zzuu.zzrf();

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.firebase_ml.zzrl$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C7472zza extends zzuu.zzb<zza, C7472zza> implements zzwg {
            private C7472zza() {
                super(zza.zzbfh);
            }

            public final C7472zza zzu(Iterable<? extends zztc> iterable) {
                zzrm();
                ((zza) this.zzbst).zzt(iterable);
                return this;
            }

            /* synthetic */ C7472zza(zzrk zzrkVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzt(Iterable<? extends zztc> iterable) {
            if (!this.zzbff.zzpz()) {
                this.zzbff = zzuu.zza(this.zzbff);
            }
            for (zztc zztcVar : iterable) {
                this.zzbff.zzdi(zztcVar.zza());
            }
        }

        public static C7472zza zzom() {
            return zzbfh.zzrd();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzrk.zzl[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C7472zza(null);
                case 3:
                    return zzuu.zza(zzbfh, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzbff", zztc.zzc()});
                case 4:
                    return zzbfh;
                case 5:
                    zzwr<zza> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zza.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzbfh);
                                zzs = zzwrVar;
                            }
                        }
                    }
                    return zzwrVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            zza zzaVar = new zza();
            zzbfh = zzaVar;
            zzuu.zza(zza.class, zzaVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzb extends zzuu<zzb, C7473zzb> implements zzwg {
        private static final zzb zzbfm;
        private static volatile zzwr<zzb> zzs;
        private float zzait;
        private int zzbfi;
        private int zzbfj;
        private boolean zzbfk;
        private boolean zzbfl;
        private int zzkc;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zza implements zzuz {
            CLASSIFICATION_UNKNOWN(0),
            CLASSIFICATION_NONE(1),
            CLASSIFICATION_ALL(2);
            
            private static final zzuy<zza> zzj = new zzro();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zza zzbw(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return CLASSIFICATION_ALL;
                    }
                    return CLASSIFICATION_NONE;
                }
                return CLASSIFICATION_UNKNOWN;
            }

            public static zzvb zzc() {
                return zzrn.zzx;
            }

            zza(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum zzc implements zzuz {
            LANDMARK_UNKNOWN(0),
            LANDMARK_NONE(1),
            LANDMARK_ALL(2),
            LANDMARK_CONTOUR(3);
            
            private static final zzuy<zzc> zzj = new zzrp();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzc zzbx(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return null;
                            }
                            return LANDMARK_CONTOUR;
                        }
                        return LANDMARK_ALL;
                    }
                    return LANDMARK_NONE;
                }
                return LANDMARK_UNKNOWN;
            }

            public static zzvb zzc() {
                return zzrq.zzx;
            }

            zzc(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum zzd implements zzuz {
            MODE_UNKNOWN(0),
            MODE_ACCURATE(1),
            MODE_FAST(2),
            MODE_SELFIE(3);
            
            private static final zzuy<zzd> zzj = new zzrs();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzd zzby(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return null;
                            }
                            return MODE_SELFIE;
                        }
                        return MODE_FAST;
                    }
                    return MODE_ACCURATE;
                }
                return MODE_UNKNOWN;
            }

            public static zzvb zzc() {
                return zzrr.zzx;
            }

            zzd(int i) {
                this.value = i;
            }
        }

        private zzb() {
        }

        /* renamed from: com.google.android.gms.internal.firebase_ml.zzrl$zzb$zzb  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C7473zzb extends zzuu.zzb<zzb, C7473zzb> implements zzwg {
            private C7473zzb() {
                super(zzb.zzbfm);
            }

            /* synthetic */ C7473zzb(zzrk zzrkVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzrk.zzl[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new C7473zzb(null);
                case 3:
                    return zzuu.zza(zzbfm, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001\u0003\f\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0001\u0005", new Object[]{"zzm", "zzkc", zzd.zzc(), "zzbfi", zzc.zzc(), "zzbfj", zza.zzc(), "zzbfk", "zzbfl", "zzait"});
                case 4:
                    return zzbfm;
                case 5:
                    zzwr<zzb> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzb.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzbfm);
                                zzs = zzwrVar;
                            }
                        }
                    }
                    return zzwrVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzbfm = zzbVar;
            zzuu.zza(zzb.class, zzbVar);
        }
    }
}
