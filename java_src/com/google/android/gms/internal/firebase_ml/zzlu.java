package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.C0480C;
import com.google.android.gms.internal.firebase_ml.zzrl;
import com.google.android.gms.internal.firebase_ml.zzuu;
import com.google.android.gms.wallet.WalletConstants;
import java.util.Objects;
import org.telegram.tgnet.ConnectionsManager;
/* loaded from: classes.dex */
public final class zzlu {

    /* loaded from: classes.dex */
    public static final class zza extends zzuu<zza, C7002zza> implements zzwg {
        private static final zza zzadc;
        private static volatile zzwr<zza> zzs;
        private int zzadb;
        private int zzm;

        private zza() {
        }

        /* renamed from: com.google.android.gms.internal.firebase_ml.zzlu$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C7002zza extends zzuu.zzb<zza, C7002zza> implements zzwg {
            private C7002zza() {
                super(zza.zzadc);
            }

            public final C7002zza zza(zzmc zzmcVar) {
                zzrm();
                ((zza) this.zzbst).zzb(zzmcVar);
                return this;
            }

            /* synthetic */ C7002zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzmc zzmcVar) {
            Objects.requireNonNull(zzmcVar);
            this.zzm |= 1;
            this.zzadb = zzmcVar.zza();
        }

        public static C7002zza zzij() {
            return zzadc.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C7002zza(null);
                case 3:
                    return zzuu.zza(zzadc, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f\u0000", new Object[]{"zzm", "zzadb", zzmc.zzc()});
                case 4:
                    return zzadc;
                case 5:
                    zzwr<zza> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zza.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadc);
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
            zzadc = zzaVar;
            zzuu.zza(zza.class, zzaVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzaa extends zzuu<zzaa, zzc> implements zzwg {
        private static final zzvc<Integer, zza> zzanr = new zzna();
        private static final zzvc<Integer, zzb> zzant = new zzmz();
        private static final zzaa zzanu;
        private static volatile zzwr<zzaa> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zzrl.zza zzanp;
        private zzvd zzanq = zzuu.zzrf();
        private zzvd zzans = zzuu.zzrf();
        private int zzm;

        /* loaded from: classes.dex */
        public enum zza implements zzuz {
            FORMAT_UNKNOWN(0),
            FORMAT_CODE_128(1),
            FORMAT_CODE_39(2),
            FORMAT_CODE_93(4),
            FORMAT_CODABAR(8),
            FORMAT_DATA_MATRIX(16),
            FORMAT_EAN_13(32),
            FORMAT_EAN_8(64),
            FORMAT_ITF(128),
            FORMAT_QR_CODE(256),
            FORMAT_UPC_A(512),
            FORMAT_UPC_E(1024),
            FORMAT_PDF417(2048),
            FORMAT_AZTEC(4096);
            
            private static final zzuy<zza> zzj = new zznb();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zza zzbb(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            return FORMAT_CODE_39;
                        }
                        switch (i) {
                            case 4:
                                return FORMAT_CODE_93;
                            case 8:
                                return FORMAT_CODABAR;
                            case 16:
                                return FORMAT_DATA_MATRIX;
                            case 32:
                                return FORMAT_EAN_13;
                            case 64:
                                return FORMAT_EAN_8;
                            case 128:
                                return FORMAT_ITF;
                            case 256:
                                return FORMAT_QR_CODE;
                            case 512:
                                return FORMAT_UPC_A;
                            case 1024:
                                return FORMAT_UPC_E;
                            case 2048:
                                return FORMAT_PDF417;
                            case 4096:
                                return FORMAT_AZTEC;
                            default:
                                return null;
                        }
                    }
                    return FORMAT_CODE_128;
                }
                return FORMAT_UNKNOWN;
            }

            public static zzvb zzc() {
                return zznc.zzx;
            }

            zza(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum zzb implements zzuz {
            TYPE_UNKNOWN(0),
            TYPE_CONTACT_INFO(1),
            TYPE_EMAIL(2),
            TYPE_ISBN(3),
            TYPE_PHONE(4),
            TYPE_PRODUCT(5),
            TYPE_SMS(6),
            TYPE_TEXT(7),
            TYPE_URL(8),
            TYPE_WIFI(9),
            TYPE_GEO(10),
            TYPE_CALENDAR_EVENT(11),
            TYPE_DRIVER_LICENSE(12);
            
            private static final zzuy<zzb> zzj = new zzne();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzb zzbc(int i) {
                switch (i) {
                    case 0:
                        return TYPE_UNKNOWN;
                    case 1:
                        return TYPE_CONTACT_INFO;
                    case 2:
                        return TYPE_EMAIL;
                    case 3:
                        return TYPE_ISBN;
                    case 4:
                        return TYPE_PHONE;
                    case 5:
                        return TYPE_PRODUCT;
                    case 6:
                        return TYPE_SMS;
                    case 7:
                        return TYPE_TEXT;
                    case 8:
                        return TYPE_URL;
                    case 9:
                        return TYPE_WIFI;
                    case 10:
                        return TYPE_GEO;
                    case 11:
                        return TYPE_CALENDAR_EVENT;
                    case 12:
                        return TYPE_DRIVER_LICENSE;
                    default:
                        return null;
                }
            }

            public static zzvb zzc() {
                return zznd.zzx;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        private zzaa() {
        }

        /* loaded from: classes.dex */
        public static final class zzc extends zzuu.zzb<zzaa, zzc> implements zzwg {
            private zzc() {
                super(zzaa.zzanu);
            }

            public final zzc zzd(zzu.zza zzaVar) {
                zzrm();
                ((zzaa) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zzc zzb(zzrl.zza zzaVar) {
                zzrm();
                ((zzaa) this.zzbst).zza(zzaVar);
                return this;
            }

            public final zzc zzn(Iterable<? extends zza> iterable) {
                zzrm();
                ((zzaa) this.zzbst).zzl(iterable);
                return this;
            }

            public final zzc zzo(Iterable<? extends zzb> iterable) {
                zzrm();
                ((zzaa) this.zzbst).zzm(iterable);
                return this;
            }

            public final zzc zzc(zzt zztVar) {
                zzrm();
                ((zzaa) this.zzbst).zzb(zztVar);
                return this;
            }

            /* synthetic */ zzc(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzu.zza zzaVar) {
            this.zzadd = (zzu) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzrl.zza zzaVar) {
            Objects.requireNonNull(zzaVar);
            this.zzanp = zzaVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(Iterable<? extends zza> iterable) {
            if (!this.zzanq.zzpz()) {
                this.zzanq = zzuu.zza(this.zzanq);
            }
            for (zza zzaVar : iterable) {
                this.zzanq.zzdi(zzaVar.zza());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(Iterable<? extends zzb> iterable) {
            if (!this.zzans.zzpz()) {
                this.zzans = zzuu.zza(this.zzans);
            }
            for (zzb zzbVar : iterable) {
                this.zzans.zzdi(zzbVar.zza());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzt zztVar) {
            Objects.requireNonNull(zztVar);
            this.zzadg = zztVar;
            this.zzm |= 4;
        }

        public static zzc zzkd() {
            return zzanu.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzaa();
                case 2:
                    return new zzc(null);
                case 3:
                    return zzuu.zza(zzanu, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001e\u0004\u001e\u0005\t\u0002", new Object[]{"zzm", "zzadd", "zzanp", "zzanq", zza.zzc(), "zzans", zzb.zzc(), "zzadg"});
                case 4:
                    return zzanu;
                case 5:
                    zzwr<zzaa> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzaa.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzanu);
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
            zzaa zzaaVar = new zzaa();
            zzanu = zzaaVar;
            zzuu.zza(zzaa.class, zzaaVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzab extends zzuu<zzab, zza> implements zzwg {
        private static final zzab zzapc;
        private static volatile zzwr<zzab> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zzrl.zzb zzaoy;
        private zzr zzaoz;
        private int zzapa;
        private int zzapb;
        private int zzm;

        private zzab() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzab, zza> implements zzwg {
            private zza() {
                super(zzab.zzapc);
            }

            public final zza zze(zzu.zza zzaVar) {
                zzrm();
                ((zzab) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zzd(zzt zztVar) {
                zzrm();
                ((zzab) this.zzbst).zzb(zztVar);
                return this;
            }

            public final zza zzb(zzr zzrVar) {
                zzrm();
                ((zzab) this.zzbst).zza(zzrVar);
                return this;
            }

            public final zza zzbf(int i) {
                zzrm();
                ((zzab) this.zzbst).zzbd(i);
                return this;
            }

            public final zza zzbg(int i) {
                zzrm();
                ((zzab) this.zzbst).zzbe(i);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzu.zza zzaVar) {
            this.zzadd = (zzu) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzt zztVar) {
            Objects.requireNonNull(zztVar);
            this.zzadg = zztVar;
            this.zzm |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzr zzrVar) {
            Objects.requireNonNull(zzrVar);
            this.zzaoz = zzrVar;
            this.zzm |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbd(int i) {
            this.zzm |= 16;
            this.zzapa = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbe(int i) {
            this.zzm |= 32;
            this.zzapb = i;
        }

        public static zza zzkf() {
            return zzapc.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzab();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzapc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003\u0005\u000b\u0004\u0006\u000b\u0005", new Object[]{"zzm", "zzadd", "zzaoy", "zzadg", "zzaoz", "zzapa", "zzapb"});
                case 4:
                    return zzapc;
                case 5:
                    zzwr<zzab> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzab.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzapc);
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
            zzab zzabVar = new zzab();
            zzapc = zzabVar;
            zzuu.zza(zzab.class, zzabVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzac extends zzuu<zzac, zza> implements zzwg {
        private static final zzac zzape;
        private static volatile zzwr<zzac> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zzad zzapd;
        private int zzm;

        private zzac() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzac, zza> implements zzwg {
            private zza() {
                super(zzac.zzape);
            }

            public final zza zzf(zzu.zza zzaVar) {
                zzrm();
                ((zzac) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zzb(zzad zzadVar) {
                zzrm();
                ((zzac) this.zzbst).zza(zzadVar);
                return this;
            }

            public final zza zze(zzt zztVar) {
                zzrm();
                ((zzac) this.zzbst).zzb(zztVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzu.zza zzaVar) {
            this.zzadd = (zzu) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzad zzadVar) {
            Objects.requireNonNull(zzadVar);
            this.zzapd = zzadVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzt zztVar) {
            Objects.requireNonNull(zztVar);
            this.zzadg = zztVar;
            this.zzm |= 4;
        }

        public static zza zzkh() {
            return zzape.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzac();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzape, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzapd", "zzadg"});
                case 4:
                    return zzape;
                case 5:
                    zzwr<zzac> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzac.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzape);
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
            zzac zzacVar = new zzac();
            zzape = zzacVar;
            zzuu.zza(zzac.class, zzacVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzad extends zzuu<zzad, zza> implements zzwg {
        private static final zzad zzapg;
        private static volatile zzwr<zzad> zzs;
        private int zzapf;
        private float zzeu;
        private int zzm;

        private zzad() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzad, zza> implements zzwg {
            private zza() {
                super(zzad.zzapg);
            }

            public final zza zzr(float f) {
                zzrm();
                ((zzad) this.zzbst).zzq(f);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(float f) {
            this.zzm |= 2;
            this.zzeu = f;
        }

        public static zza zzkj() {
            return zzapg.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzad();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzapg, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0000\u0002\u0001\u0001", new Object[]{"zzm", "zzapf", "zzeu"});
                case 4:
                    return zzapg;
                case 5:
                    zzwr<zzad> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzad.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzapg);
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
            zzad zzadVar = new zzad();
            zzapg = zzadVar;
            zzuu.zza(zzad.class, zzadVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzae extends zzuu<zzae, zzb> implements zzwg {
        private static final zzae zzapk;
        private static volatile zzwr<zzae> zzs;
        private zzu zzadd;
        private zzv zzaph;
        private zzc zzapi;
        private zzd zzapj;
        private int zzm;

        /* loaded from: classes.dex */
        public static final class zza extends zzuu<zza, C7003zza> implements zzwg {
            private static final zza zzapn;
            private static volatile zzwr<zza> zzs;
            private float zzapl;
            private String zzapm = "";
            private int zzm;

            private zza() {
            }

            /* renamed from: com.google.android.gms.internal.firebase_ml.zzlu$zzae$zza$zza  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C7003zza extends zzuu.zzb<zza, C7003zza> implements zzwg {
                private C7003zza() {
                    super(zza.zzapn);
                }

                /* synthetic */ C7003zza(zzlt zzltVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzuu
            protected final Object zza(int i, Object obj, Object obj2) {
                switch (zzlt.zzl[i - 1]) {
                    case 1:
                        return new zza();
                    case 2:
                        return new C7003zza(null);
                    case 3:
                        return zzuu.zza(zzapn, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0001\u0000\u0002\b\u0001", new Object[]{"zzm", "zzapl", "zzapm"});
                    case 4:
                        return zzapn;
                    case 5:
                        zzwr<zza> zzwrVar = zzs;
                        if (zzwrVar == null) {
                            synchronized (zza.class) {
                                zzwrVar = zzs;
                                if (zzwrVar == null) {
                                    zzwrVar = new zzuu.zza<>(zzapn);
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
                zzapn = zzaVar;
                zzuu.zza(zza.class, zzaVar);
            }
        }

        /* loaded from: classes.dex */
        public static final class zzc extends zzuu<zzc, zza> implements zzwg {
            private static final zzc zzapp;
            private static volatile zzwr<zzc> zzs;
            private zza zzapo;
            private int zzm;

            private zzc() {
            }

            /* loaded from: classes.dex */
            public static final class zza extends zzuu.zzb<zzc, zza> implements zzwg {
                private zza() {
                    super(zzc.zzapp);
                }

                /* synthetic */ zza(zzlt zzltVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzuu
            protected final Object zza(int i, Object obj, Object obj2) {
                switch (zzlt.zzl[i - 1]) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzuu.zza(zzapp, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t\u0000", new Object[]{"zzm", "zzapo"});
                    case 4:
                        return zzapp;
                    case 5:
                        zzwr<zzc> zzwrVar = zzs;
                        if (zzwrVar == null) {
                            synchronized (zzc.class) {
                                zzwrVar = zzs;
                                if (zzwrVar == null) {
                                    zzwrVar = new zzuu.zza<>(zzapp);
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
                zzc zzcVar = new zzc();
                zzapp = zzcVar;
                zzuu.zza(zzc.class, zzcVar);
            }
        }

        /* loaded from: classes.dex */
        public static final class zzd extends zzuu<zzd, zza> implements zzwg {
            private static final zzd zzapr;
            private static volatile zzwr<zzd> zzs;
            private zzvf<zza> zzapq = zzuu.zzrh();

            private zzd() {
            }

            /* loaded from: classes.dex */
            public static final class zza extends zzuu.zzb<zzd, zza> implements zzwg {
                private zza() {
                    super(zzd.zzapr);
                }

                /* synthetic */ zza(zzlt zzltVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzuu
            protected final Object zza(int i, Object obj, Object obj2) {
                switch (zzlt.zzl[i - 1]) {
                    case 1:
                        return new zzd();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzuu.zza(zzapr, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzapq", zza.class});
                    case 4:
                        return zzapr;
                    case 5:
                        zzwr<zzd> zzwrVar = zzs;
                        if (zzwrVar == null) {
                            synchronized (zzd.class) {
                                zzwrVar = zzs;
                                if (zzwrVar == null) {
                                    zzwrVar = new zzuu.zza<>(zzapr);
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
                zzd zzdVar = new zzd();
                zzapr = zzdVar;
                zzuu.zza(zzd.class, zzdVar);
            }
        }

        private zzae() {
        }

        /* loaded from: classes.dex */
        public static final class zzb extends zzuu.zzb<zzae, zzb> implements zzwg {
            private zzb() {
                super(zzae.zzapk);
            }

            /* synthetic */ zzb(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzae();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzuu.zza(zzapk, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\t\u0003", new Object[]{"zzm", "zzadd", "zzaph", "zzapi", "zzapj"});
                case 4:
                    return zzapk;
                case 5:
                    zzwr<zzae> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzae.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzapk);
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
            zzae zzaeVar = new zzae();
            zzapk = zzaeVar;
            zzuu.zza(zzae.class, zzaeVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzaf extends zzuu<zzaf, zza> implements zzwg {
        private static final zzaf zzapt;
        private static volatile zzwr<zzaf> zzs;
        private int zzadb;
        private zzag zzaps;
        private int zzm;

        private zzaf() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzaf, zza> implements zzwg {
            private zza() {
                super(zzaf.zzapt);
            }

            public final zza zzb(zzag zzagVar) {
                zzrm();
                ((zzaf) this.zzbst).zza(zzagVar);
                return this;
            }

            public final zza zzf(zzmc zzmcVar) {
                zzrm();
                ((zzaf) this.zzbst).zzb(zzmcVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzag zzagVar) {
            Objects.requireNonNull(zzagVar);
            this.zzaps = zzagVar;
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzmc zzmcVar) {
            Objects.requireNonNull(zzmcVar);
            this.zzm |= 2;
            this.zzadb = zzmcVar.zza();
        }

        public static zza zzkp() {
            return zzapt.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzaf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzapt, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\f\u0001", new Object[]{"zzm", "zzaps", "zzadb", zzmc.zzc()});
                case 4:
                    return zzapt;
                case 5:
                    zzwr<zzaf> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzaf.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzapt);
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
            zzaf zzafVar = new zzaf();
            zzapt = zzafVar;
            zzuu.zza(zzaf.class, zzafVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzag extends zzuu<zzag, zzb> implements zzwg {
        private static final zzag zzapx;
        private static volatile zzwr<zzag> zzs;
        private int zzapu;
        private boolean zzapv;
        private boolean zzapw;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zza implements zzuz {
            MODE_UNSPECIFIED(0),
            STREAM(1),
            SINGLE_IMAGE(2);
            
            private static final zzuy<zza> zzj = new zzng();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zza zzbh(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return SINGLE_IMAGE;
                    }
                    return STREAM;
                }
                return MODE_UNSPECIFIED;
            }

            public static zzvb zzc() {
                return zznf.zzx;
            }

            zza(int i) {
                this.value = i;
            }
        }

        private zzag() {
        }

        /* loaded from: classes.dex */
        public static final class zzb extends zzuu.zzb<zzag, zzb> implements zzwg {
            private zzb() {
                super(zzag.zzapx);
            }

            public final zzb zzb(zza zzaVar) {
                zzrm();
                ((zzag) this.zzbst).zza(zzaVar);
                return this;
            }

            public final zzb zzad(boolean z) {
                zzrm();
                ((zzag) this.zzbst).zzab(z);
                return this;
            }

            public final zzb zzae(boolean z) {
                zzrm();
                ((zzag) this.zzbst).zzac(z);
                return this;
            }

            /* synthetic */ zzb(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zza zzaVar) {
            Objects.requireNonNull(zzaVar);
            this.zzm |= 1;
            this.zzapu = zzaVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzab(boolean z) {
            this.zzm |= 2;
            this.zzapv = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzac(boolean z) {
            this.zzm |= 4;
            this.zzapw = z;
        }

        public static zzb zzkr() {
            return zzapx.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzag();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzuu.zza(zzapx, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\u0007\u0001\u0003\u0007\u0002", new Object[]{"zzm", "zzapu", zza.zzc(), "zzapv", "zzapw"});
                case 4:
                    return zzapx;
                case 5:
                    zzwr<zzag> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzag.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzapx);
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
            zzag zzagVar = new zzag();
            zzapx = zzagVar;
            zzuu.zza(zzag.class, zzagVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzah extends zzuu<zzah, zza> implements zzwg {
        private static final zzah zzaqd;
        private static volatile zzwr<zzah> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zzag zzaps;
        private zzvf<zzz> zzaqc = zzuu.zzrh();
        private int zzm;

        private zzah() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzah, zza> implements zzwg {
            private zza() {
                super(zzah.zzaqd);
            }

            public final zza zzg(zzu.zza zzaVar) {
                zzrm();
                ((zzah) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zzf(zzt zztVar) {
                zzrm();
                ((zzah) this.zzbst).zzb(zztVar);
                return this;
            }

            public final zza zzc(zzag zzagVar) {
                zzrm();
                ((zzah) this.zzbst).zza(zzagVar);
                return this;
            }

            public final zza zzp(Iterable<? extends zzz> iterable) {
                zzrm();
                ((zzah) this.zzbst).zzq(iterable);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzu.zza zzaVar) {
            this.zzadd = (zzu) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzt zztVar) {
            Objects.requireNonNull(zztVar);
            this.zzadg = zztVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzag zzagVar) {
            Objects.requireNonNull(zzagVar);
            this.zzaps = zzagVar;
            this.zzm |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzq(Iterable<? extends zzz> iterable) {
            if (!this.zzaqc.zzpz()) {
                this.zzaqc = zzuu.zza(this.zzaqc);
            }
            zztg.zza(iterable, this.zzaqc);
        }

        public static zza zzkt() {
            return zzaqd.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzah();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaqd, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u001b", new Object[]{"zzm", "zzadd", "zzadg", "zzaps", "zzaqc", zzz.class});
                case 4:
                    return zzaqd;
                case 5:
                    zzwr<zzah> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzah.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaqd);
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
            zzah zzahVar = new zzah();
            zzaqd = zzahVar;
            zzuu.zza(zzah.class, zzahVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzai extends zzuu<zzai, zza> implements zzwg {
        private static final zzai zzaqe;
        private static volatile zzwr<zzai> zzs;
        private int zzadb;
        private zzag zzaps;
        private int zzm;

        private zzai() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzai, zza> implements zzwg {
            private zza() {
                super(zzai.zzaqe);
            }

            public final zza zzd(zzag zzagVar) {
                zzrm();
                ((zzai) this.zzbst).zza(zzagVar);
                return this;
            }

            public final zza zzg(zzmc zzmcVar) {
                zzrm();
                ((zzai) this.zzbst).zzb(zzmcVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zzag zzagVar) {
            Objects.requireNonNull(zzagVar);
            this.zzaps = zzagVar;
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzmc zzmcVar) {
            Objects.requireNonNull(zzmcVar);
            this.zzm |= 2;
            this.zzadb = zzmcVar.zza();
        }

        public static zza zzkv() {
            return zzaqe.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzai();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaqe, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\f\u0001", new Object[]{"zzm", "zzaps", "zzadb", zzmc.zzc()});
                case 4:
                    return zzaqe;
                case 5:
                    zzwr<zzai> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzai.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaqe);
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
            zzai zzaiVar = new zzai();
            zzaqe = zzaiVar;
            zzuu.zza(zzai.class, zzaiVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzaj extends zzuu<zzaj, zza> implements zzwg {
        private static final zzaj zzaqj;
        private static volatile zzwr<zzaj> zzs;
        private zzu zzadd;
        private zzvf<zzc> zzaqf = zzuu.zzrh();
        private int zzaqg;
        private int zzaqh;
        private int zzaqi;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zzb implements zzuz {
            NO_ERROR(0),
            STATUS_SENSITIVE_TOPIC(1),
            STATUS_QUALITY_THRESHOLDED(2),
            STATUS_INTERNAL_ERROR(3),
            STATUS_NOT_SUPPORTED_LANGUAGE(101),
            STATUS_32_BIT_CPU(1001),
            STATUS_32_BIT_APP(1002);
            
            private static final zzuy<zzb> zzj = new zznh();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzb zzbi(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 101) {
                                    if (i != 1001) {
                                        if (i != 1002) {
                                            return null;
                                        }
                                        return STATUS_32_BIT_APP;
                                    }
                                    return STATUS_32_BIT_CPU;
                                }
                                return STATUS_NOT_SUPPORTED_LANGUAGE;
                            }
                            return STATUS_INTERNAL_ERROR;
                        }
                        return STATUS_QUALITY_THRESHOLDED;
                    }
                    return STATUS_SENSITIVE_TOPIC;
                }
                return NO_ERROR;
            }

            public static zzvb zzc() {
                return zzni.zzx;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public static final class zzc extends zzuu<zzc, zza> implements zzwg {
            private static final zzc zzaqs;
            private static volatile zzwr<zzc> zzs;
            private float zzapl;
            private int zzm;

            private zzc() {
            }

            /* loaded from: classes.dex */
            public static final class zza extends zzuu.zzb<zzc, zza> implements zzwg {
                private zza() {
                    super(zzc.zzaqs);
                }

                /* synthetic */ zza(zzlt zzltVar) {
                    this();
                }
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzuu
            protected final Object zza(int i, Object obj, Object obj2) {
                switch (zzlt.zzl[i - 1]) {
                    case 1:
                        return new zzc();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzuu.zza(zzaqs, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0001\u0000", new Object[]{"zzm", "zzapl"});
                    case 4:
                        return zzaqs;
                    case 5:
                        zzwr<zzc> zzwrVar = zzs;
                        if (zzwrVar == null) {
                            synchronized (zzc.class) {
                                zzwrVar = zzs;
                                if (zzwrVar == null) {
                                    zzwrVar = new zzuu.zza<>(zzaqs);
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
                zzc zzcVar = new zzc();
                zzaqs = zzcVar;
                zzuu.zza(zzc.class, zzcVar);
            }
        }

        private zzaj() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzaj, zza> implements zzwg {
            private zza() {
                super(zzaj.zzaqj);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzaj();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaqj, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0000\u0002\u001b\u0003\f\u0001\u0004\u0004\u0002\u0005\u0004\u0003", new Object[]{"zzm", "zzadd", "zzaqf", zzc.class, "zzaqg", zzb.zzc(), "zzaqh", "zzaqi"});
                case 4:
                    return zzaqj;
                case 5:
                    zzwr<zzaj> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzaj.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaqj);
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
            zzaj zzajVar = new zzaj();
            zzaqj = zzajVar;
            zzuu.zza(zzaj.class, zzajVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzak extends zzuu<zzak, zza> implements zzwg {
        private static final zzak zzaqt;
        private static volatile zzwr<zzak> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private int zzm;

        private zzak() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzak, zza> implements zzwg {
            private zza() {
                super(zzak.zzaqt);
            }

            public final zza zzh(zzu.zza zzaVar) {
                zzrm();
                ((zzak) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zzg(zzt zztVar) {
                zzrm();
                ((zzak) this.zzbst).zzb(zztVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzu.zza zzaVar) {
            this.zzadd = (zzu) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzt zztVar) {
            Objects.requireNonNull(zztVar);
            this.zzadg = zztVar;
            this.zzm |= 2;
        }

        public static zza zzkz() {
            return zzaqt.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzak();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaqt, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001", new Object[]{"zzm", "zzadd", "zzadg"});
                case 4:
                    return zzaqt;
                case 5:
                    zzwr<zzak> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzak.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaqt);
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

        public static zzak zzla() {
            return zzaqt;
        }

        static {
            zzak zzakVar = new zzak();
            zzaqt = zzakVar;
            zzuu.zza(zzak.class, zzakVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzal extends zzuu<zzal, zzb> implements zzwg {
        private static final zzal zzarb;
        private static volatile zzwr<zzal> zzs;
        private zzu zzadd;
        private zzan zzaqu;
        private int zzaqv;
        private int zzaqw;
        private int zzaqx;
        private int zzaqy;
        private int zzaqz;
        private int zzara;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zza implements zzuz {
            NO_ERROR(0),
            METADATA_FILE_UNAVAILABLE(1),
            METADATA_ENTRY_NOT_FOUND(2),
            METADATA_JSON_INVALID(3),
            METADATA_HASH_NOT_FOUND(4),
            DOWNLOAD_MANAGER_SERVICE_MISSING(5),
            DOWNLOAD_MANAGER_HTTP_UNKNOWN_STATUS(6),
            DOWNLOAD_MANAGER_HTTP_BAD_REQUEST(400),
            DOWNLOAD_MANAGER_HTTP_UNAUTHORIZED(401),
            DOWNLOAD_MANAGER_HTTP_FORBIDDEN(403),
            DOWNLOAD_MANAGER_HTTP_NOT_FOUND(WalletConstants.ERROR_CODE_INVALID_PARAMETERS),
            DOWNLOAD_MANAGER_HTTP_REQUEST_TIMEOUT(408),
            DOWNLOAD_MANAGER_HTTP_TOO_MANY_REQUESTS(429),
            DOWNLOAD_MANAGER_HTTP_INTERNAL_SERVICE_ERROR(500),
            DOWNLOAD_MANAGER_HTTP_SERVICE_UNAVAILABLE(503),
            DOWNLOAD_MANAGER_HTTP_NETWORK_AUTHENTICATION_REQUIRED(511),
            DOWNLOAD_MANAGER_FILE_ERROR(7),
            DOWNLOAD_MANAGER_UNHANDLED_HTTP_CODE(8),
            DOWNLOAD_MANAGER_HTTP_DATA_ERROR(9),
            DOWNLOAD_MANAGER_TOO_MANY_REDIRECTS(10),
            DOWNLOAD_MANAGER_INSUFFICIENT_SPACE(11),
            DOWNLOAD_MANAGER_DEVICE_NOT_FOUND(12),
            DOWNLOAD_MANAGER_CANNOT_RESUME(13),
            DOWNLOAD_MANAGER_FILE_ALREADY_EXISTS(14),
            DOWNLOAD_MANAGER_UNKNOWN_ERROR(15),
            POST_DOWNLOAD_FILE_NOT_FOUND(16),
            POST_DOWNLOAD_MOVE_FILE_FAILED(17),
            POST_DOWNLOAD_UNZIP_FAILED(18),
            RAPID_RESPONSE_COULD_NOT_BE_WRITTEN(19);
            
            private static final zzuy<zza> zzj = new zznk();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zza zzbj(int i) {
                if (i != 400) {
                    if (i != 401) {
                        if (i != 403) {
                            if (i != 404) {
                                if (i != 408) {
                                    if (i != 429) {
                                        if (i != 500) {
                                            if (i != 503) {
                                                if (i != 511) {
                                                    switch (i) {
                                                        case 0:
                                                            return NO_ERROR;
                                                        case 1:
                                                            return METADATA_FILE_UNAVAILABLE;
                                                        case 2:
                                                            return METADATA_ENTRY_NOT_FOUND;
                                                        case 3:
                                                            return METADATA_JSON_INVALID;
                                                        case 4:
                                                            return METADATA_HASH_NOT_FOUND;
                                                        case 5:
                                                            return DOWNLOAD_MANAGER_SERVICE_MISSING;
                                                        case 6:
                                                            return DOWNLOAD_MANAGER_HTTP_UNKNOWN_STATUS;
                                                        case 7:
                                                            return DOWNLOAD_MANAGER_FILE_ERROR;
                                                        case 8:
                                                            return DOWNLOAD_MANAGER_UNHANDLED_HTTP_CODE;
                                                        case 9:
                                                            return DOWNLOAD_MANAGER_HTTP_DATA_ERROR;
                                                        case 10:
                                                            return DOWNLOAD_MANAGER_TOO_MANY_REDIRECTS;
                                                        case 11:
                                                            return DOWNLOAD_MANAGER_INSUFFICIENT_SPACE;
                                                        case 12:
                                                            return DOWNLOAD_MANAGER_DEVICE_NOT_FOUND;
                                                        case 13:
                                                            return DOWNLOAD_MANAGER_CANNOT_RESUME;
                                                        case 14:
                                                            return DOWNLOAD_MANAGER_FILE_ALREADY_EXISTS;
                                                        case 15:
                                                            return DOWNLOAD_MANAGER_UNKNOWN_ERROR;
                                                        case 16:
                                                            return POST_DOWNLOAD_FILE_NOT_FOUND;
                                                        case 17:
                                                            return POST_DOWNLOAD_MOVE_FILE_FAILED;
                                                        case 18:
                                                            return POST_DOWNLOAD_UNZIP_FAILED;
                                                        case 19:
                                                            return RAPID_RESPONSE_COULD_NOT_BE_WRITTEN;
                                                        default:
                                                            return null;
                                                    }
                                                }
                                                return DOWNLOAD_MANAGER_HTTP_NETWORK_AUTHENTICATION_REQUIRED;
                                            }
                                            return DOWNLOAD_MANAGER_HTTP_SERVICE_UNAVAILABLE;
                                        }
                                        return DOWNLOAD_MANAGER_HTTP_INTERNAL_SERVICE_ERROR;
                                    }
                                    return DOWNLOAD_MANAGER_HTTP_TOO_MANY_REQUESTS;
                                }
                                return DOWNLOAD_MANAGER_HTTP_REQUEST_TIMEOUT;
                            }
                            return DOWNLOAD_MANAGER_HTTP_NOT_FOUND;
                        }
                        return DOWNLOAD_MANAGER_HTTP_FORBIDDEN;
                    }
                    return DOWNLOAD_MANAGER_HTTP_UNAUTHORIZED;
                }
                return DOWNLOAD_MANAGER_HTTP_BAD_REQUEST;
            }

            public static zzvb zzc() {
                return zznj.zzx;
            }

            zza(int i) {
                this.value = i;
            }
        }

        private zzal() {
        }

        /* loaded from: classes.dex */
        public static final class zzb extends zzuu.zzb<zzal, zzb> implements zzwg {
            private zzb() {
                super(zzal.zzarb);
            }

            /* synthetic */ zzb(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzal();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzuu.zza(zzarb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0004\u0005\u0007\f\u0006\b\u0004\u0007", new Object[]{"zzm", "zzadd", "zzaqu", "zzaqv", "zzaqw", "zzaqx", "zzaqy", "zzaqz", zza.zzc(), "zzara"});
                case 4:
                    return zzarb;
                case 5:
                    zzwr<zzal> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzal.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzarb);
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
            zzal zzalVar = new zzal();
            zzarb = zzalVar;
            zzuu.zza(zzal.class, zzalVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzam extends zzuu<zzam, zza> implements zzwg {
        private static final zzam zzaso;
        private static volatile zzwr<zzam> zzs;
        private String zzasg = "";
        private String zzash = "";
        private String zzasi = "";
        private String zzasj = "";
        private String zzask = "";
        private String zzasl = "";
        private String zzasm = "";
        private zzvf<String> zzasn = zzuu.zzrh();
        private int zzm;

        private zzam() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzam, zza> implements zzwg {
            private zza() {
                super(zzam.zzaso);
            }

            public final zza zzbe(String str) {
                zzrm();
                ((zzam) this.zzbst).zzbl(str);
                return this;
            }

            public final zza zzbf(String str) {
                zzrm();
                ((zzam) this.zzbst).zzbm(str);
                return this;
            }

            public final zza zzbg(String str) {
                zzrm();
                ((zzam) this.zzbst).zzbn(str);
                return this;
            }

            public final zza zzbh(String str) {
                zzrm();
                ((zzam) this.zzbst).zzbo(str);
                return this;
            }

            public final zza zzbi(String str) {
                zzrm();
                ((zzam) this.zzbst).zzbp(str);
                return this;
            }

            public final zza zzbj(String str) {
                zzrm();
                ((zzam) this.zzbst).zzbq(str);
                return this;
            }

            public final zza zzbk(String str) {
                zzrm();
                ((zzam) this.zzbst).zzbr(str);
                return this;
            }

            public final zza zzr(Iterable<String> iterable) {
                zzrm();
                ((zzam) this.zzbst).zzs(iterable);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbl(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 1;
            this.zzasg = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbm(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 2;
            this.zzash = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbn(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 4;
            this.zzasi = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbo(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 8;
            this.zzasj = str;
        }

        public final String zzld() {
            return this.zzask;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbp(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 16;
            this.zzask = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbq(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 32;
            this.zzasl = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbr(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 64;
            this.zzasm = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzs(Iterable<String> iterable) {
            if (!this.zzasn.zzpz()) {
                this.zzasn = zzuu.zza(this.zzasn);
            }
            zztg.zza(iterable, this.zzasn);
        }

        public static zza zzle() {
            return zzaso.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzam();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaso, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001\b\u0000\u0002\b\u0001\u0003\b\u0002\u0004\b\u0003\u0005\b\u0004\u0006\b\u0005\u0007\b\u0006\b\u001a", new Object[]{"zzm", "zzasg", "zzash", "zzasi", "zzasj", "zzask", "zzasl", "zzasm", "zzasn"});
                case 4:
                    return zzaso;
                case 5:
                    zzwr<zzam> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzam.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaso);
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

        public static zzam zzlf() {
            return zzaso;
        }

        static {
            zzam zzamVar = new zzam();
            zzaso = zzamVar;
            zzuu.zza(zzam.class, zzamVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzan extends zzuu<zzan, zza> implements zzwg {
        private static final zzan zzasr;
        private static volatile zzwr<zzan> zzs;
        private String zzasp = "";
        private String zzasq = "";
        private int zzm;

        private zzan() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzan, zza> implements zzwg {
            private zza() {
                super(zzan.zzasr);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzan();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzasr, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001", new Object[]{"zzm", "zzasp", "zzasq"});
                case 4:
                    return zzasr;
                case 5:
                    zzwr<zzan> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzan.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzasr);
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
            zzan zzanVar = new zzan();
            zzasr = zzanVar;
            zzuu.zza(zzan.class, zzanVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzb extends zzuu<zzb, zza> implements zzwg {
        private static final zzb zzadh;
        private static volatile zzwr<zzb> zzs;
        private zzu zzadd;
        private zzy zzade;
        private long zzadf;
        private zzt zzadg;
        private float zzeu;
        private int zzm;

        private zzb() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzb, zza> implements zzwg {
            private zza() {
                super(zzb.zzadh);
            }

            public final zza zza(zzu.zza zzaVar) {
                zzrm();
                ((zzb) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzy zzyVar) {
                zzrm();
                ((zzb) this.zzbst).zzb(zzyVar);
                return this;
            }

            public final zza zza(zzt zztVar) {
                zzrm();
                ((zzb) this.zzbst).zzb(zztVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzu.zza zzaVar) {
            this.zzadd = (zzu) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzade = zzyVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzt zztVar) {
            Objects.requireNonNull(zztVar);
            this.zzadg = zztVar;
            this.zzm |= 16;
        }

        public static zza zzil() {
            return zzadh.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzadh, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u0003\u0002\u0004\u0001\u0003\u0005\t\u0004", new Object[]{"zzm", "zzadd", "zzade", "zzadf", "zzeu", "zzadg"});
                case 4:
                    return zzadh;
                case 5:
                    zzwr<zzb> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzb.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadh);
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
            zzadh = zzbVar;
            zzuu.zza(zzb.class, zzbVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzc extends zzuu<zzc, zza> implements zzwg {
        private static final zzvc<Integer, zzmc> zzadl = new zzlv();
        private static final zzc zzadm;
        private static volatile zzwr<zzc> zzs;
        private long zzadf;
        private zzy zzadi;
        private zzy zzadj;
        private zzvd zzadk = zzuu.zzrf();
        private int zzm;

        private zzc() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzc, zza> implements zzwg {
            private zza() {
                super(zzc.zzadm);
            }

            public final zza zze(zzy zzyVar) {
                zzrm();
                ((zzc) this.zzbst).zzc(zzyVar);
                return this;
            }

            public final zza zzf(zzy zzyVar) {
                zzrm();
                ((zzc) this.zzbst).zzd(zzyVar);
                return this;
            }

            public final zza zzd(Iterable<? extends zzmc> iterable) {
                zzrm();
                ((zzc) this.zzbst).zzc(iterable);
                return this;
            }

            public final zza zzg(long j) {
                zzrm();
                ((zzc) this.zzbst).zzf(j);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzadi = zzyVar;
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzadj = zzyVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(Iterable<? extends zzmc> iterable) {
            if (!this.zzadk.zzpz()) {
                this.zzadk = zzuu.zza(this.zzadk);
            }
            for (zzmc zzmcVar : iterable) {
                this.zzadk.zzdi(zzmcVar.zza());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(long j) {
            this.zzm |= 4;
            this.zzadf = j;
        }

        public static zza zzin() {
            return zzadm.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzadm, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001e\u0004\u0003\u0002", new Object[]{"zzm", "zzadi", "zzadj", "zzadk", zzmc.zzc(), "zzadf"});
                case 4:
                    return zzadm;
                case 5:
                    zzwr<zzc> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzc.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadm);
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
            zzc zzcVar = new zzc();
            zzadm = zzcVar;
            zzuu.zza(zzc.class, zzcVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzd extends zzuu<zzd, zza> implements zzwg {
        private static final zzd zzado;
        private static volatile zzwr<zzd> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzd() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzd, zza> implements zzwg {
            private zza() {
                super(zzd.zzado);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzado, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzado;
                case 5:
                    zzwr<zzd> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzd.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzado);
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
            zzd zzdVar = new zzd();
            zzado = zzdVar;
            zzuu.zza(zzd.class, zzdVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zze extends zzuu<zze, zzb> implements zzwg {
        private static final zze zzadq;
        private static volatile zzwr<zze> zzs;
        private int zzadp;
        private int zzcs;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zza implements zzuz {
            UNKNOWN_MODEL_TYPE(0),
            STABLE_MODEL(1),
            LATEST_MODEL(2);
            
            private static final zzuy<zza> zzj = new zzlx();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zza zzai(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return LATEST_MODEL;
                    }
                    return STABLE_MODEL;
                }
                return UNKNOWN_MODEL_TYPE;
            }

            public static zzvb zzc() {
                return zzlw.zzx;
            }

            zza(int i) {
                this.value = i;
            }
        }

        private zze() {
        }

        /* loaded from: classes.dex */
        public static final class zzb extends zzuu.zzb<zze, zzb> implements zzwg {
            private zzb() {
                super(zze.zzadq);
            }

            /* synthetic */ zzb(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzuu.zza(zzadq, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\f\u0001", new Object[]{"zzm", "zzcs", "zzadp", zza.zzc()});
                case 4:
                    return zzadq;
                case 5:
                    zzwr<zze> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zze.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadq);
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
            zze zzeVar = new zze();
            zzadq = zzeVar;
            zzuu.zza(zze.class, zzeVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzf extends zzuu<zzf, zza> implements zzwg {
        private static final zzf zzadv;
        private static volatile zzwr<zzf> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzf() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzf, zza> implements zzwg {
            private zza() {
                super(zzf.zzadv);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzadv, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzadv;
                case 5:
                    zzwr<zzf> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzf.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadv);
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
            zzf zzfVar = new zzf();
            zzadv = zzfVar;
            zzuu.zza(zzf.class, zzfVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzg extends zzuu<zzg, zza> implements zzwg {
        private static final zzg zzadw;
        private static volatile zzwr<zzg> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzg() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzg, zza> implements zzwg {
            private zza() {
                super(zzg.zzadw);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzg();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzadw, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzadw;
                case 5:
                    zzwr<zzg> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzg.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadw);
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
            zzg zzgVar = new zzg();
            zzadw = zzgVar;
            zzuu.zza(zzg.class, zzgVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzh extends zzuu<zzh, zza> implements zzwg {
        private static final zzh zzadx;
        private static volatile zzwr<zzh> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzh() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzh, zza> implements zzwg {
            private zza() {
                super(zzh.zzadx);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzh();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzadx, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzadx;
                case 5:
                    zzwr<zzh> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzh.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadx);
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
            zzh zzhVar = new zzh();
            zzadx = zzhVar;
            zzuu.zza(zzh.class, zzhVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzi extends zzuu<zzi, zza> implements zzwg {
        private static final zzi zzady;
        private static volatile zzwr<zzi> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzi() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzi, zza> implements zzwg {
            private zza() {
                super(zzi.zzady);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzi();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzady, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzady;
                case 5:
                    zzwr<zzi> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzi.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzady);
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
            zzi zziVar = new zzi();
            zzady = zziVar;
            zzuu.zza(zzi.class, zziVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzj extends zzuu<zzj, zza> implements zzwg {
        private static final zzj zzadz;
        private static volatile zzwr<zzj> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzj() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzj, zza> implements zzwg {
            private zza() {
                super(zzj.zzadz);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzj();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzadz, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzadz;
                case 5:
                    zzwr<zzj> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzj.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzadz);
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
            zzj zzjVar = new zzj();
            zzadz = zzjVar;
            zzuu.zza(zzj.class, zzjVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzk extends zzuu<zzk, zza> implements zzwg {
        private static final zzk zzaea;
        private static volatile zzwr<zzk> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzk() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzk, zza> implements zzwg {
            private zza() {
                super(zzk.zzaea);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzk();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaea, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzaea;
                case 5:
                    zzwr<zzk> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzk.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaea);
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
            zzk zzkVar = new zzk();
            zzaea = zzkVar;
            zzuu.zza(zzk.class, zzkVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzl extends zzuu<zzl, zza> implements zzwg {
        private static final zzl zzaeb;
        private static volatile zzwr<zzl> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzl() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzl, zza> implements zzwg {
            private zza() {
                super(zzl.zzaeb);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzl();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaeb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzaeb;
                case 5:
                    zzwr<zzl> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzl.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaeb);
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
            zzl zzlVar = new zzl();
            zzaeb = zzlVar;
            zzuu.zza(zzl.class, zzlVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzm extends zzuu<zzm, zza> implements zzwg {
        private static final zzm zzaec;
        private static volatile zzwr<zzm> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzm() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzm, zza> implements zzwg {
            private zza() {
                super(zzm.zzaec);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzm();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaec, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzaec;
                case 5:
                    zzwr<zzm> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzm.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaec);
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
            zzm zzmVar = new zzm();
            zzaec = zzmVar;
            zzuu.zza(zzm.class, zzmVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzn extends zzuu<zzn, zza> implements zzwg {
        private static final zzn zzaed;
        private static volatile zzwr<zzn> zzs;
        private zzu zzadd;
        private zzt zzadg;
        private zze zzadn;
        private int zzm;

        private zzn() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzn, zza> implements zzwg {
            private zza() {
                super(zzn.zzaed);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzn();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaed, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002", new Object[]{"zzm", "zzadd", "zzadn", "zzadg"});
                case 4:
                    return zzaed;
                case 5:
                    zzwr<zzn> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzn.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaed);
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
            zzn zznVar = new zzn();
            zzaed = zznVar;
            zzuu.zza(zzn.class, zznVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzo extends zzuu<zzo, zza> implements zzwg {
        private static final zzo zzaee;
        private static volatile zzwr<zzo> zzs;
        private int zzadb;
        private zzy zzade;
        private int zzm;

        private zzo() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzo, zza> implements zzwg {
            private zza() {
                super(zzo.zzaee);
            }

            public final zza zzg(zzy zzyVar) {
                zzrm();
                ((zzo) this.zzbst).zzb(zzyVar);
                return this;
            }

            public final zza zzc(zzmc zzmcVar) {
                zzrm();
                ((zzo) this.zzbst).zzb(zzmcVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzade = zzyVar;
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzmc zzmcVar) {
            Objects.requireNonNull(zzmcVar);
            this.zzm |= 2;
            this.zzadb = zzmcVar.zza();
        }

        public static zza zzja() {
            return zzaee.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzo();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaee, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0000\u0002\f\u0001", new Object[]{"zzm", "zzade", "zzadb", zzmc.zzc()});
                case 4:
                    return zzaee;
                case 5:
                    zzwr<zzo> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzo.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaee);
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
            zzo zzoVar = new zzo();
            zzaee = zzoVar;
            zzuu.zza(zzo.class, zzoVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzp extends zzuu<zzp, zza> implements zzwg {
        private static final zzp zzaeh;
        private static volatile zzwr<zzp> zzs;
        private zzu zzadd;
        private zzy zzade;
        private long zzadf;
        private zzvf<zzb> zzaef = zzuu.zzrh();
        private zzvf<zzb> zzaeg = zzuu.zzrh();
        private int zzm;

        /* loaded from: classes.dex */
        public static final class zzb extends zzuu<zzb, zza> implements zzwg {
            private static final zzb zzaek;
            private static volatile zzwr<zzb> zzs;
            private int zzaei;
            private zzvd zzaej = zzuu.zzrf();
            private int zzm;

            /* renamed from: com.google.android.gms.internal.firebase_ml.zzlu$zzp$zzb$zzb  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public enum EnumC7004zzb implements zzuz {
                UNKNOWN_DATA_TYPE(0),
                TYPE_FLOAT32(1),
                TYPE_INT32(2),
                TYPE_BYTE(3),
                TYPE_LONG(4);
                
                private static final zzuy<EnumC7004zzb> zzj = new zzly();
                private final int value;

                @Override // com.google.android.gms.internal.firebase_ml.zzuz
                public final int zza() {
                    return this.value;
                }

                public static EnumC7004zzb zzaj(int i) {
                    if (i != 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    if (i != 4) {
                                        return null;
                                    }
                                    return TYPE_LONG;
                                }
                                return TYPE_BYTE;
                            }
                            return TYPE_INT32;
                        }
                        return TYPE_FLOAT32;
                    }
                    return UNKNOWN_DATA_TYPE;
                }

                public static zzvb zzc() {
                    return zzlz.zzx;
                }

                EnumC7004zzb(int i) {
                    this.value = i;
                }
            }

            private zzb() {
            }

            /* loaded from: classes.dex */
            public static final class zza extends zzuu.zzb<zzb, zza> implements zzwg {
                private zza() {
                    super(zzb.zzaek);
                }

                public final zza zza(EnumC7004zzb enumC7004zzb) {
                    zzrm();
                    ((zzb) this.zzbst).zzb(enumC7004zzb);
                    return this;
                }

                public final zza zzi(Iterable<? extends Integer> iterable) {
                    zzrm();
                    ((zzb) this.zzbst).zzj(iterable);
                    return this;
                }

                /* synthetic */ zza(zzlt zzltVar) {
                    this();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzb(EnumC7004zzb enumC7004zzb) {
                Objects.requireNonNull(enumC7004zzb);
                this.zzm |= 1;
                this.zzaei = enumC7004zzb.zza();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzj(Iterable<? extends Integer> iterable) {
                if (!this.zzaej.zzpz()) {
                    this.zzaej = zzuu.zza(this.zzaej);
                }
                zztg.zza(iterable, this.zzaej);
            }

            public static zza zzje() {
                return zzaek.zzrd();
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzuu
            protected final Object zza(int i, Object obj, Object obj2) {
                switch (zzlt.zzl[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzuu.zza(zzaek, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0000\u0002\u0016", new Object[]{"zzm", "zzaei", EnumC7004zzb.zzc(), "zzaej"});
                    case 4:
                        return zzaek;
                    case 5:
                        zzwr<zzb> zzwrVar = zzs;
                        if (zzwrVar == null) {
                            synchronized (zzb.class) {
                                zzwrVar = zzs;
                                if (zzwrVar == null) {
                                    zzwrVar = new zzuu.zza<>(zzaek);
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
                zzaek = zzbVar;
                zzuu.zza(zzb.class, zzbVar);
            }
        }

        private zzp() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzp, zza> implements zzwg {
            private zza() {
                super(zzp.zzaeh);
            }

            public final zza zzc(zzu.zza zzaVar) {
                zzrm();
                ((zzp) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zzh(zzy zzyVar) {
                zzrm();
                ((zzp) this.zzbst).zzb(zzyVar);
                return this;
            }

            public final zza zze(Iterable<? extends zzb> iterable) {
                zzrm();
                ((zzp) this.zzbst).zzg(iterable);
                return this;
            }

            public final zza zzf(Iterable<? extends zzb> iterable) {
                zzrm();
                ((zzp) this.zzbst).zzh(iterable);
                return this;
            }

            public final zza zzh(long j) {
                zzrm();
                ((zzp) this.zzbst).zzf(j);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzu.zza zzaVar) {
            this.zzadd = (zzu) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzade = zzyVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzg(Iterable<? extends zzb> iterable) {
            if (!this.zzaef.zzpz()) {
                this.zzaef = zzuu.zza(this.zzaef);
            }
            zztg.zza(iterable, this.zzaef);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzh(Iterable<? extends zzb> iterable) {
            if (!this.zzaeg.zzpz()) {
                this.zzaeg = zzuu.zza(this.zzaeg);
            }
            zztg.zza(iterable, this.zzaeg);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(long j) {
            this.zzm |= 4;
            this.zzadf = j;
        }

        public static zza zzjc() {
            return zzaeh.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzp();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaeh, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001b\u0004\u001b\u0005\u0003\u0002", new Object[]{"zzm", "zzadd", "zzade", "zzaef", zzb.class, "zzaeg", zzb.class, "zzadf"});
                case 4:
                    return zzaeh;
                case 5:
                    zzwr<zzp> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzp.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaeh);
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
            zzp zzpVar = new zzp();
            zzaeh = zzpVar;
            zzuu.zza(zzp.class, zzpVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzq extends zzuu<zzq, zza> implements zzwg {
        private static final zzvc<Integer, zzmc> zzadl = new zzma();
        private static final zzq zzaes;
        private static volatile zzwr<zzq> zzs;
        private long zzadf;
        private zzy zzadi;
        private zzy zzadj;
        private zzvd zzadk = zzuu.zzrf();
        private boolean zzaer;
        private int zzm;

        private zzq() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzq, zza> implements zzwg {
            private zza() {
                super(zzq.zzaes);
            }

            public final zza zzi(zzy zzyVar) {
                zzrm();
                ((zzq) this.zzbst).zzc(zzyVar);
                return this;
            }

            public final zza zzj(zzy zzyVar) {
                zzrm();
                ((zzq) this.zzbst).zzd(zzyVar);
                return this;
            }

            public final zza zzk(Iterable<? extends zzmc> iterable) {
                zzrm();
                ((zzq) this.zzbst).zzc(iterable);
                return this;
            }

            public final zza zzi(long j) {
                zzrm();
                ((zzq) this.zzbst).zzf(j);
                return this;
            }

            public final zza zzj(boolean z) {
                zzrm();
                ((zzq) this.zzbst).zzi(z);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzadi = zzyVar;
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzadj = zzyVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(Iterable<? extends zzmc> iterable) {
            if (!this.zzadk.zzpz()) {
                this.zzadk = zzuu.zza(this.zzadk);
            }
            for (zzmc zzmcVar : iterable) {
                this.zzadk.zzdi(zzmcVar.zza());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzf(long j) {
            this.zzm |= 4;
            this.zzadf = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(boolean z) {
            this.zzm |= 8;
            this.zzaer = z;
        }

        public static zza zzjg() {
            return zzaes.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzq();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaes, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\t\u0000\u0002\t\u0001\u0003\u001e\u0004\u0003\u0002\u0005\u0007\u0003", new Object[]{"zzm", "zzadi", "zzadj", "zzadk", zzmc.zzc(), "zzadf", "zzaer"});
                case 4:
                    return zzaes;
                case 5:
                    zzwr<zzq> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzq.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaes);
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
            zzq zzqVar = new zzq();
            zzaes = zzqVar;
            zzuu.zza(zzq.class, zzqVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzr extends zzuu<zzr, zza> implements zzwg {
        private static final zzr zzaiu;
        private static volatile zzwr<zzr> zzs;
        private int zzaio;
        private int zzaip;
        private int zzaiq;
        private int zzair;
        private boolean zzais;
        private float zzait;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zzb implements zzuz {
            UNKNOWN_CLASSIFICATIONS(0),
            NO_CLASSIFICATIONS(1),
            ALL_CLASSIFICATIONS(2);
            
            private static final zzuy<zzb> zzj = new zzmh();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzb zzam(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return ALL_CLASSIFICATIONS;
                    }
                    return NO_CLASSIFICATIONS;
                }
                return UNKNOWN_CLASSIFICATIONS;
            }

            public static zzvb zzc() {
                return zzmi.zzx;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum zzc implements zzuz {
            UNKNOWN_CONTOURS(0),
            NO_CONTOURS(1),
            ALL_CONTOURS(2);
            
            private static final zzuy<zzc> zzj = new zzmk();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzc zzan(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return ALL_CONTOURS;
                    }
                    return NO_CONTOURS;
                }
                return UNKNOWN_CONTOURS;
            }

            public static zzvb zzc() {
                return zzmj.zzx;
            }

            zzc(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum zzd implements zzuz {
            UNKNOWN_LANDMARKS(0),
            NO_LANDMARKS(1),
            ALL_LANDMARKS(2);
            
            private static final zzuy<zzd> zzj = new zzml();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzd zzao(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return ALL_LANDMARKS;
                    }
                    return NO_LANDMARKS;
                }
                return UNKNOWN_LANDMARKS;
            }

            public static zzvb zzc() {
                return zzmm.zzx;
            }

            zzd(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum zze implements zzuz {
            UNKNOWN_PERFORMANCE(0),
            FAST(1),
            ACCURATE(2);
            
            private static final zzuy<zze> zzj = new zzmo();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zze zzap(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            return null;
                        }
                        return ACCURATE;
                    }
                    return FAST;
                }
                return UNKNOWN_PERFORMANCE;
            }

            public static zzvb zzc() {
                return zzmn.zzx;
            }

            zze(int i) {
                this.value = i;
            }
        }

        private zzr() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzr, zza> implements zzwg {
            private zza() {
                super(zzr.zzaiu);
            }

            public final zza zza(zzd zzdVar) {
                zzrm();
                ((zzr) this.zzbst).zzb(zzdVar);
                return this;
            }

            public final zza zza(zzb zzbVar) {
                zzrm();
                ((zzr) this.zzbst).zzb(zzbVar);
                return this;
            }

            public final zza zza(zze zzeVar) {
                zzrm();
                ((zzr) this.zzbst).zzb(zzeVar);
                return this;
            }

            public final zza zza(zzc zzcVar) {
                zzrm();
                ((zzr) this.zzbst).zzb(zzcVar);
                return this;
            }

            public final zza zzk(boolean z) {
                zzrm();
                ((zzr) this.zzbst).zzl(z);
                return this;
            }

            public final zza zzm(float f) {
                zzrm();
                ((zzr) this.zzbst).zzn(f);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzd zzdVar) {
            Objects.requireNonNull(zzdVar);
            this.zzm |= 1;
            this.zzaio = zzdVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzb zzbVar) {
            Objects.requireNonNull(zzbVar);
            this.zzm |= 2;
            this.zzaip = zzbVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zze zzeVar) {
            Objects.requireNonNull(zzeVar);
            this.zzm |= 4;
            this.zzaiq = zzeVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzc zzcVar) {
            Objects.requireNonNull(zzcVar);
            this.zzm |= 8;
            this.zzair = zzcVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(boolean z) {
            this.zzm |= 16;
            this.zzais = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn(float f) {
            this.zzm |= 32;
            this.zzait = f;
        }

        public static zza zzji() {
            return zzaiu.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzr();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaiu, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\f\u0000\u0002\f\u0001\u0003\f\u0002\u0004\f\u0003\u0005\u0007\u0004\u0006\u0001\u0005", new Object[]{"zzm", "zzaio", zzd.zzc(), "zzaip", zzb.zzc(), "zzaiq", zze.zzc(), "zzair", zzc.zzc(), "zzais", "zzait"});
                case 4:
                    return zzaiu;
                case 5:
                    zzwr<zzr> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzr.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaiu);
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
            zzr zzrVar = new zzr();
            zzaiu = zzrVar;
            zzuu.zza(zzr.class, zzrVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzs extends zzuu<zzs, zza> implements zzwg {
        private static final zzs zzako;
        private static volatile zzwr<zzs> zzs;
        private zzam zzajl;
        private int zzajm;
        private zzw zzajn;
        private zzq zzajo;
        private zzp zzajp;
        private zzo zzajq;
        private zzab zzajr;
        private zzak zzajs;
        private zzaa zzajt;
        private zzac zzaju;
        private zzaf zzajv;
        private zzai zzajw;
        private zzah zzajx;
        private zzaj zzajy;
        private zzae zzajz;
        private zzal zzaka;
        private zzg zzakb;
        private zzd zzakc;
        private zzf zzakd;
        private zzi zzake;
        private zzh zzakf;
        private zzj zzakg;
        private zzk zzakh;
        private zzl zzaki;
        private zzm zzakj;
        private zzn zzakk;
        private zza zzakl;
        private zzc zzakm;
        private zzb zzakn;
        private int zzm;

        private zzs() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzs, zza> implements zzwg {
            private zza() {
                super(zzs.zzako);
            }

            public final zzam zzjk() {
                return ((zzs) this.zzbst).zzjk();
            }

            public final zza zza(zzam.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzmd zzmdVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzmdVar);
                return this;
            }

            public final zza zza(zzw.zzb zzbVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzbVar);
                return this;
            }

            public final zza zza(zzq.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzp.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzo zzoVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzoVar);
                return this;
            }

            public final zza zza(zzab.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzak zzakVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzakVar);
                return this;
            }

            public final zza zza(zzak.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzaa.zzc zzcVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzcVar);
                return this;
            }

            public final zza zza(zzac.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzaf.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzai.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzah.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzc.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzb.zza zzaVar) {
                zzrm();
                ((zzs) this.zzbst).zzb(zzaVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        public final zzam zzjk() {
            zzam zzamVar = this.zzajl;
            return zzamVar == null ? zzam.zzlf() : zzamVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzam.zza zzaVar) {
            this.zzajl = (zzam) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzmd zzmdVar) {
            Objects.requireNonNull(zzmdVar);
            this.zzm |= 2;
            this.zzajm = zzmdVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzw.zzb zzbVar) {
            this.zzajn = (zzw) ((zzuu) zzbVar.zzrq());
            this.zzm |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzq.zza zzaVar) {
            this.zzajo = (zzq) ((zzuu) zzaVar.zzrq());
            this.zzm |= 8;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzp.zza zzaVar) {
            this.zzajp = (zzp) ((zzuu) zzaVar.zzrq());
            this.zzm |= 16;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzo zzoVar) {
            Objects.requireNonNull(zzoVar);
            this.zzajq = zzoVar;
            this.zzm |= 32;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzab.zza zzaVar) {
            this.zzajr = (zzab) ((zzuu) zzaVar.zzrq());
            this.zzm |= 64;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzak zzakVar) {
            Objects.requireNonNull(zzakVar);
            this.zzajs = zzakVar;
            this.zzm |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzak.zza zzaVar) {
            this.zzajs = (zzak) ((zzuu) zzaVar.zzrq());
            this.zzm |= 128;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzaa.zzc zzcVar) {
            this.zzajt = (zzaa) ((zzuu) zzcVar.zzrq());
            this.zzm |= 256;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzac.zza zzaVar) {
            this.zzaju = (zzac) ((zzuu) zzaVar.zzrq());
            this.zzm |= 512;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzaf.zza zzaVar) {
            this.zzajv = (zzaf) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1024;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzai.zza zzaVar) {
            this.zzajw = (zzai) ((zzuu) zzaVar.zzrq());
            this.zzm |= 2048;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzah.zza zzaVar) {
            this.zzajx = (zzah) ((zzuu) zzaVar.zzrq());
            this.zzm |= 4096;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zza zzaVar) {
            Objects.requireNonNull(zzaVar);
            this.zzakl = zzaVar;
            this.zzm |= ConnectionsManager.FileTypeFile;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzc.zza zzaVar) {
            this.zzakm = (zzc) ((zzuu) zzaVar.zzrq());
            this.zzm |= C0480C.BUFFER_FLAG_FIRST_SAMPLE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzb.zza zzaVar) {
            this.zzakn = (zzb) ((zzuu) zzaVar.zzrq());
            this.zzm |= 268435456;
        }

        public static zza zzjl() {
            return zzako.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzs();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzako, "\u0001\u001d\u0000\u0001\u0001\u001d\u001d\u0000\u0000\u0000\u0001\t\u0000\u0002\f\u0001\u0003\t\u0002\u0004\t\u0004\u0005\t\u0006\u0006\t\u0007\u0007\t\b\b\t\u0010\t\t\u0011\n\t\u0012\u000b\t\u0013\f\t\u0014\r\t\u0015\u000e\t\u0016\u000f\t\u0017\u0010\t\u0018\u0011\t\u0019\u0012\t\t\u0013\t\r\u0014\t\u0003\u0015\t\u000e\u0016\t\u000f\u0017\t\u001a\u0018\t\u001b\u0019\t\u001c\u001a\t\n\u001b\t\u000b\u001c\t\f\u001d\t\u0005", new Object[]{"zzm", "zzajl", "zzajm", zzmd.zzc(), "zzajn", "zzajp", "zzajr", "zzajs", "zzajt", "zzakb", "zzakc", "zzakd", "zzake", "zzakf", "zzakg", "zzakh", "zzaki", "zzakj", "zzakk", "zzaju", "zzajy", "zzajo", "zzajz", "zzaka", "zzakl", "zzakm", "zzakn", "zzajv", "zzajw", "zzajx", "zzajq"});
                case 4:
                    return zzako;
                case 5:
                    zzwr<zzs> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzs.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzako);
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
            zzs zzsVar = new zzs();
            zzako = zzsVar;
            zzuu.zza(zzs.class, zzsVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzt extends zzuu<zzt, zza> implements zzwg {
        private static final zzt zzaks;
        private static volatile zzwr<zzt> zzs;
        private int zzakp;
        private int zzakq;
        private int zzakr;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zzb implements zzuz {
            UNKNOWN_FORMAT(0),
            NV16(1),
            NV21(2),
            YV12(3),
            BITMAP(4),
            CM_SAMPLE_BUFFER_REF(5),
            UI_IMAGE(6);
            
            private static final zzuy<zzb> zzj = new zzmp();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzb zzas(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN_FORMAT;
                    case 1:
                        return NV16;
                    case 2:
                        return NV21;
                    case 3:
                        return YV12;
                    case 4:
                        return BITMAP;
                    case 5:
                        return CM_SAMPLE_BUFFER_REF;
                    case 6:
                        return UI_IMAGE;
                    default:
                        return null;
                }
            }

            public static zzvb zzc() {
                return zzmq.zzx;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        private zzt() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzt, zza> implements zzwg {
            private zza() {
                super(zzt.zzaks);
            }

            public final zza zza(zzb zzbVar) {
                zzrm();
                ((zzt) this.zzbst).zzb(zzbVar);
                return this;
            }

            public final zza zzaq(int i) {
                zzrm();
                ((zzt) this.zzbst).zzar(i);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzb zzbVar) {
            Objects.requireNonNull(zzbVar);
            this.zzm |= 1;
            this.zzakp = zzbVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzar(int i) {
            this.zzm |= 2;
            this.zzakq = i;
        }

        public static zza zzjn() {
            return zzaks.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzt();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzaks, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\u000b\u0001\u0003\u000b\u0002", new Object[]{"zzm", "zzakp", zzb.zzc(), "zzakq", "zzakr"});
                case 4:
                    return zzaks;
                case 5:
                    zzwr<zzt> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzt.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzaks);
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
            zzt zztVar = new zzt();
            zzaks = zztVar;
            zzuu.zza(zzt.class, zztVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzu extends zzuu<zzu, zza> implements zzwg {
        private static final zzu zzalg;
        private static volatile zzwr<zzu> zzs;
        private int zzadb;
        private boolean zzaer;
        private long zzalb;
        private boolean zzalc;
        private boolean zzald;
        private boolean zzale;
        private int zzalf;
        private int zzm;

        private zzu() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzu, zza> implements zzwg {
            private zza() {
                super(zzu.zzalg);
            }

            public final zza zzk(long j) {
                zzrm();
                ((zzu) this.zzbst).zzj(j);
                return this;
            }

            public final zza zzd(zzmc zzmcVar) {
                zzrm();
                ((zzu) this.zzbst).zzb(zzmcVar);
                return this;
            }

            public final zza zzp(boolean z) {
                zzrm();
                ((zzu) this.zzbst).zzm(z);
                return this;
            }

            public final zza zzq(boolean z) {
                zzrm();
                ((zzu) this.zzbst).zzn(true);
                return this;
            }

            public final zza zzr(boolean z) {
                zzrm();
                ((zzu) this.zzbst).zzo(true);
                return this;
            }

            public final zza zzs(boolean z) {
                zzrm();
                ((zzu) this.zzbst).zzi(z);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzj(long j) {
            this.zzm |= 1;
            this.zzalb = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzmc zzmcVar) {
            Objects.requireNonNull(zzmcVar);
            this.zzm |= 2;
            this.zzadb = zzmcVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzm(boolean z) {
            this.zzm |= 4;
            this.zzalc = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzn(boolean z) {
            this.zzm |= 8;
            this.zzald = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzo(boolean z) {
            this.zzm |= 16;
            this.zzale = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzi(boolean z) {
            this.zzm |= 32;
            this.zzaer = z;
        }

        public static zza zzjp() {
            return zzalg.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzu();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzalg, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0003\u0000\u0002\f\u0001\u0003\u0007\u0002\u0004\u0007\u0003\u0005\u0007\u0004\u0006\u0007\u0005\u0007\u000b\u0006", new Object[]{"zzm", "zzalb", "zzadb", zzmc.zzc(), "zzalc", "zzald", "zzale", "zzaer", "zzalf"});
                case 4:
                    return zzalg;
                case 5:
                    zzwr<zzu> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzu.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzalg);
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
            zzu zzuVar = new zzu();
            zzalg = zzuVar;
            zzuu.zza(zzu.class, zzuVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzv extends zzuu<zzv, zza> implements zzwg {
        private static final zzv zzalj;
        private static volatile zzwr<zzv> zzs;
        private float zzalh;
        private float zzali;
        private float zzeu;
        private int zzm;

        private zzv() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzv, zza> implements zzwg {
            private zza() {
                super(zzv.zzalj);
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzv();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzalj, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0001\u0000\u0002\u0001\u0001\u0003\u0001\u0002", new Object[]{"zzm", "zzalh", "zzali", "zzeu"});
                case 4:
                    return zzalj;
                case 5:
                    zzwr<zzv> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzv.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzalj);
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
            zzv zzvVar = new zzv();
            zzalj = zzvVar;
            zzuu.zza(zzv.class, zzvVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzw extends zzuu<zzw, zzb> implements zzwg {
        private static final zzw zzalo;
        private static volatile zzwr<zzw> zzs;
        private int zzadb;
        private zzy zzade;
        private long zzalk;
        private long zzall;
        private int zzalm;
        private int zzaln;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zza implements zzuz {
            UNKNOWN_STATUS(0),
            EXPLICITLY_REQUESTED(1),
            IMPLICITLY_REQUESTED(2),
            MODEL_INFO_RETRIEVAL_SUCCEEDED(3),
            MODEL_INFO_RETRIEVAL_FAILED(4),
            SCHEDULED(5),
            DOWNLOADING(6),
            SUCCEEDED(7),
            FAILED(8),
            LIVE(9),
            UPDATE_AVAILABLE(10),
            DOWNLOADED(11);
            
            private static final zzuy<zza> zzj = new zzms();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zza zzau(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN_STATUS;
                    case 1:
                        return EXPLICITLY_REQUESTED;
                    case 2:
                        return IMPLICITLY_REQUESTED;
                    case 3:
                        return MODEL_INFO_RETRIEVAL_SUCCEEDED;
                    case 4:
                        return MODEL_INFO_RETRIEVAL_FAILED;
                    case 5:
                        return SCHEDULED;
                    case 6:
                        return DOWNLOADING;
                    case 7:
                        return SUCCEEDED;
                    case 8:
                        return FAILED;
                    case 9:
                        return LIVE;
                    case 10:
                        return UPDATE_AVAILABLE;
                    case 11:
                        return DOWNLOADED;
                    default:
                        return null;
                }
            }

            public static zzvb zzc() {
                return zzmr.zzx;
            }

            zza(int i) {
                this.value = i;
            }
        }

        private zzw() {
        }

        /* loaded from: classes.dex */
        public static final class zzb extends zzuu.zzb<zzw, zzb> implements zzwg {
            private zzb() {
                super(zzw.zzalo);
            }

            public final zzb zzk(zzy zzyVar) {
                zzrm();
                ((zzw) this.zzbst).zzb(zzyVar);
                return this;
            }

            public final zzb zzm(long j) {
                zzrm();
                ((zzw) this.zzbst).zzl(j);
                return this;
            }

            public final zzb zze(zzmc zzmcVar) {
                zzrm();
                ((zzw) this.zzbst).zzb(zzmcVar);
                return this;
            }

            public final zzb zzb(zza zzaVar) {
                zzrm();
                ((zzw) this.zzbst).zza(zzaVar);
                return this;
            }

            public final zzb zzav(int i) {
                zzrm();
                ((zzw) this.zzbst).zzat(i);
                return this;
            }

            /* synthetic */ zzb(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzy zzyVar) {
            Objects.requireNonNull(zzyVar);
            this.zzade = zzyVar;
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzl(long j) {
            this.zzm |= 2;
            this.zzalk = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzmc zzmcVar) {
            Objects.requireNonNull(zzmcVar);
            this.zzm |= 4;
            this.zzadb = zzmcVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zza(zza zzaVar) {
            Objects.requireNonNull(zzaVar);
            this.zzm |= 16;
            this.zzalm = zzaVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzat(int i) {
            this.zzm |= 32;
            this.zzaln = i;
        }

        public static zzb zzjs() {
            return zzalo.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzw();
                case 2:
                    return new zzb(null);
                case 3:
                    return zzuu.zza(zzalo, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0000\u0002\u0003\u0001\u0003\f\u0002\u0004\u0003\u0003\u0005\f\u0004\u0006\u000b\u0005", new Object[]{"zzm", "zzade", "zzalk", "zzadb", zzmc.zzc(), "zzall", "zzalm", zza.zzc(), "zzaln"});
                case 4:
                    return zzalo;
                case 5:
                    zzwr<zzw> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzw.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzalo);
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
            zzw zzwVar = new zzw();
            zzalo = zzwVar;
            zzuu.zza(zzw.class, zzwVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzx extends zzuu<zzx, zza> implements zzwg {
        private static final zzx zzamh;
        private static volatile zzwr<zzx> zzs;
        private int zzadp;
        private int zzame;
        private int zzm;
        private String zzamc = "";
        private String zzamd = "";
        private String zzamf = "";
        private String zzamg = "";

        /* loaded from: classes.dex */
        public enum zzb implements zzuz {
            TYPE_UNKNOWN(0),
            CUSTOM(1),
            AUTOML_IMAGE_LABELING(2),
            BASE_TRANSLATE(3);
            
            private static final zzuy<zzb> zzj = new zzmt();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzb zzaw(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return null;
                            }
                            return BASE_TRANSLATE;
                        }
                        return AUTOML_IMAGE_LABELING;
                    }
                    return CUSTOM;
                }
                return TYPE_UNKNOWN;
            }

            public static zzvb zzc() {
                return zzmu.zzx;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        /* loaded from: classes.dex */
        public enum zzc implements zzuz {
            SOURCE_UNKNOWN(0),
            APP_ASSET(1),
            LOCAL(2),
            CLOUD(3),
            SDK_BUILT_IN(4);
            
            private static final zzuy<zzc> zzj = new zzmw();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzc zzax(int i) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    return null;
                                }
                                return SDK_BUILT_IN;
                            }
                            return CLOUD;
                        }
                        return LOCAL;
                    }
                    return APP_ASSET;
                }
                return SOURCE_UNKNOWN;
            }

            public static zzvb zzc() {
                return zzmv.zzx;
            }

            zzc(int i) {
                this.value = i;
            }
        }

        private zzx() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzx, zza> implements zzwg {
            private zza() {
                super(zzx.zzamh);
            }

            public final zza zzaz(String str) {
                zzrm();
                ((zzx) this.zzbst).setName(str);
                return this;
            }

            public final zza zza(zzc zzcVar) {
                zzrm();
                ((zzx) this.zzbst).zzb(zzcVar);
                return this;
            }

            public final zza zzba(String str) {
                zzrm();
                ((zzx) this.zzbst).zzbc(str);
                return this;
            }

            public final zza zzbb(String str) {
                zzrm();
                ((zzx) this.zzbst).zzbd(str);
                return this;
            }

            public final zza zza(zzb zzbVar) {
                zzrm();
                ((zzx) this.zzbst).zzb(zzbVar);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setName(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 1;
            this.zzamc = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzc zzcVar) {
            Objects.requireNonNull(zzcVar);
            this.zzm |= 4;
            this.zzame = zzcVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbc(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 8;
            this.zzamf = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzbd(String str) {
            Objects.requireNonNull(str);
            this.zzm |= 16;
            this.zzamg = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzb zzbVar) {
            Objects.requireNonNull(zzbVar);
            this.zzm |= 32;
            this.zzadp = zzbVar.zza();
        }

        public static zza zzju() {
            return zzamh.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzx();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzamh, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\b\u0000\u0002\b\u0001\u0003\f\u0002\u0004\b\u0003\u0005\b\u0004\u0006\f\u0005", new Object[]{"zzm", "zzamc", "zzamd", "zzame", zzc.zzc(), "zzamf", "zzamg", "zzadp", zzb.zzc()});
                case 4:
                    return zzamh;
                case 5:
                    zzwr<zzx> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzx.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzamh);
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
            zzx zzxVar = new zzx();
            zzamh = zzxVar;
            zzuu.zza(zzx.class, zzxVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzy extends zzuu<zzy, zza> implements zzwg {
        private static final zzy zzamx;
        private static volatile zzwr<zzy> zzs;
        private zzx zzamt;
        private zzb zzamu;
        private zzb zzamv;
        private boolean zzamw;
        private int zzm;

        /* loaded from: classes.dex */
        public static final class zzb extends zzuu<zzb, zza> implements zzwg {
            private static final zzb zzanc;
            private static volatile zzwr<zzb> zzs;
            private boolean zzamy;
            private boolean zzamz;
            private boolean zzana;
            private boolean zzanb;
            private int zzm;

            private zzb() {
            }

            /* loaded from: classes.dex */
            public static final class zza extends zzuu.zzb<zzb, zza> implements zzwg {
                private zza() {
                    super(zzb.zzanc);
                }

                public final zza zzv(boolean z) {
                    zzrm();
                    ((zzb) this.zzbst).zzy(z);
                    return this;
                }

                public final zza zzw(boolean z) {
                    zzrm();
                    ((zzb) this.zzbst).zzz(z);
                    return this;
                }

                public final zza zzx(boolean z) {
                    zzrm();
                    ((zzb) this.zzbst).zzaa(z);
                    return this;
                }

                /* synthetic */ zza(zzlt zzltVar) {
                    this();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzy(boolean z) {
                this.zzm |= 1;
                this.zzamy = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzz(boolean z) {
                this.zzm |= 2;
                this.zzamz = z;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final void zzaa(boolean z) {
                this.zzm |= 4;
                this.zzana = z;
            }

            public static zza zzjz() {
                return zzanc.zzrd();
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzuu
            protected final Object zza(int i, Object obj, Object obj2) {
                switch (zzlt.zzl[i - 1]) {
                    case 1:
                        return new zzb();
                    case 2:
                        return new zza(null);
                    case 3:
                        return zzuu.zza(zzanc, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u0007\u0001\u0003\u0007\u0002\u0004\u0007\u0003", new Object[]{"zzm", "zzamy", "zzamz", "zzana", "zzanb"});
                    case 4:
                        return zzanc;
                    case 5:
                        zzwr<zzb> zzwrVar = zzs;
                        if (zzwrVar == null) {
                            synchronized (zzb.class) {
                                zzwrVar = zzs;
                                if (zzwrVar == null) {
                                    zzwrVar = new zzuu.zza<>(zzanc);
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
                zzanc = zzbVar;
                zzuu.zza(zzb.class, zzbVar);
            }
        }

        private zzy() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzy, zza> implements zzwg {
            private zza() {
                super(zzy.zzamx);
            }

            public final zza zza(zzx.zza zzaVar) {
                zzrm();
                ((zzy) this.zzbst).zzb(zzaVar);
                return this;
            }

            public final zza zza(zzb zzbVar) {
                zzrm();
                ((zzy) this.zzbst).zzc(zzbVar);
                return this;
            }

            public final zza zzb(zzb zzbVar) {
                zzrm();
                ((zzy) this.zzbst).zzd(zzbVar);
                return this;
            }

            public final zza zzt(boolean z) {
                zzrm();
                ((zzy) this.zzbst).zzu(z);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzx.zza zzaVar) {
            this.zzamt = (zzx) ((zzuu) zzaVar.zzrq());
            this.zzm |= 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzc(zzb zzbVar) {
            Objects.requireNonNull(zzbVar);
            this.zzamu = zzbVar;
            this.zzm |= 2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzd(zzb zzbVar) {
            Objects.requireNonNull(zzbVar);
            this.zzamv = zzbVar;
            this.zzm |= 4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzu(boolean z) {
            this.zzm |= 8;
            this.zzamw = z;
        }

        public static zza zzjw() {
            return zzamx.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzy();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzamx, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0000\u0002\t\u0001\u0003\t\u0002\u0004\u0007\u0003", new Object[]{"zzm", "zzamt", "zzamu", "zzamv", "zzamw"});
                case 4:
                    return zzamx;
                case 5:
                    zzwr<zzy> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzy.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzamx);
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

        public static zzy zzjx() {
            return zzamx;
        }

        static {
            zzy zzyVar = new zzy();
            zzamx = zzyVar;
            zzuu.zza(zzy.class, zzyVar);
        }
    }

    /* loaded from: classes.dex */
    public static final class zzz extends zzuu<zzz, zza> implements zzwg {
        private static final zzz zzang;
        private static volatile zzwr<zzz> zzs;
        private int zzand;
        private float zzane;
        private int zzanf;
        private int zzm;

        /* loaded from: classes.dex */
        public enum zzb implements zzuz {
            CATEGORY_UNKNOWN(0),
            CATEGORY_HOME_GOOD(1),
            CATEGORY_FASHION_GOOD(2),
            CATEGORY_ANIMAL(3),
            CATEGORY_FOOD(4),
            CATEGORY_PLACE(5),
            CATEGORY_PLANT(6);
            
            private static final zzuy<zzb> zzj = new zzmx();
            private final int value;

            @Override // com.google.android.gms.internal.firebase_ml.zzuz
            public final int zza() {
                return this.value;
            }

            public static zzb zzba(int i) {
                switch (i) {
                    case 0:
                        return CATEGORY_UNKNOWN;
                    case 1:
                        return CATEGORY_HOME_GOOD;
                    case 2:
                        return CATEGORY_FASHION_GOOD;
                    case 3:
                        return CATEGORY_ANIMAL;
                    case 4:
                        return CATEGORY_FOOD;
                    case 5:
                        return CATEGORY_PLACE;
                    case 6:
                        return CATEGORY_PLANT;
                    default:
                        return null;
                }
            }

            public static zzvb zzc() {
                return zzmy.zzx;
            }

            zzb(int i) {
                this.value = i;
            }
        }

        private zzz() {
        }

        /* loaded from: classes.dex */
        public static final class zza extends zzuu.zzb<zzz, zza> implements zzwg {
            private zza() {
                super(zzz.zzang);
            }

            public final zza zza(zzb zzbVar) {
                zzrm();
                ((zzz) this.zzbst).zzb(zzbVar);
                return this;
            }

            public final zza zzo(float f) {
                zzrm();
                ((zzz) this.zzbst).zzp(f);
                return this;
            }

            public final zza zzay(int i) {
                zzrm();
                ((zzz) this.zzbst).zzaz(i);
                return this;
            }

            /* synthetic */ zza(zzlt zzltVar) {
                this();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzb(zzb zzbVar) {
            Objects.requireNonNull(zzbVar);
            this.zzm |= 1;
            this.zzand = zzbVar.zza();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzp(float f) {
            this.zzm |= 2;
            this.zzane = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void zzaz(int i) {
            this.zzm |= 4;
            this.zzanf = i;
        }

        public static zza zzkb() {
            return zzang.zzrd();
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzuu
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzlt.zzl[i - 1]) {
                case 1:
                    return new zzz();
                case 2:
                    return new zza(null);
                case 3:
                    return zzuu.zza(zzang, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\f\u0000\u0002\u0001\u0001\u0003\u0004\u0002", new Object[]{"zzm", "zzand", zzb.zzc(), "zzane", "zzanf"});
                case 4:
                    return zzang;
                case 5:
                    zzwr<zzz> zzwrVar = zzs;
                    if (zzwrVar == null) {
                        synchronized (zzz.class) {
                            zzwrVar = zzs;
                            if (zzwrVar == null) {
                                zzwrVar = new zzuu.zza<>(zzang);
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
            zzz zzzVar = new zzz();
            zzang = zzzVar;
            zzuu.zza(zzz.class, zzzVar);
        }
    }
}
