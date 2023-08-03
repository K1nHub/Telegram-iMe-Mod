package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.telegram.messenger.MessagesStorage;
/* loaded from: classes.dex */
public abstract class zzue extends zzto {
    private static final Logger logger = Logger.getLogger(zzue.class.getName());
    private static final boolean zzbpg = zzxs.zztq();
    zzug zzbph;

    private static long zzaa(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int zzam(boolean z) {
        return 1;
    }

    public static int zzcx(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzcz(int i) {
        return 4;
    }

    public static int zzd(double d) {
        return 8;
    }

    public static int zzda(int i) {
        return 4;
    }

    private static int zzdd(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public static zzue zzg(byte[] bArr) {
        return new zzb(bArr, 0, bArr.length);
    }

    public static int zzt(float f) {
        return 4;
    }

    public static int zzw(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            j >>>= 28;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static int zzy(long j) {
        return 8;
    }

    public static int zzz(long j) {
        return 8;
    }

    public abstract void zza(int i, long j) throws IOException;

    public abstract void zza(int i, zztn zztnVar) throws IOException;

    public abstract void zza(int i, zzwe zzweVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zza(int i, zzwe zzweVar, zzwu zzwuVar) throws IOException;

    public abstract void zza(zztn zztnVar) throws IOException;

    public abstract void zzb(int i, zztn zztnVar) throws IOException;

    public abstract void zzb(int i, String str) throws IOException;

    public abstract void zzb(int i, boolean z) throws IOException;

    public abstract void zzb(zzwe zzweVar) throws IOException;

    public abstract void zzc(int i, long j) throws IOException;

    public abstract void zzcg(String str) throws IOException;

    public abstract void zzcr(int i) throws IOException;

    public abstract void zzcs(int i) throws IOException;

    public abstract void zzcu(int i) throws IOException;

    public abstract void zzd(byte b) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void zze(byte[] bArr, int i, int i2) throws IOException;

    public abstract void zzh(int i, int i2) throws IOException;

    public abstract void zzi(int i, int i2) throws IOException;

    public abstract void zzj(int i, int i2) throws IOException;

    public abstract void zzl(int i, int i2) throws IOException;

    public abstract int zzql();

    public abstract void zzs(long j) throws IOException;

    public abstract void zzu(long j) throws IOException;

    /* loaded from: classes.dex */
    public static class zza extends IOException {
        zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zza(java.lang.String r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r1 = r3.length()
                if (r1 == 0) goto L11
                java.lang.String r3 = r0.concat(r3)
                goto L16
            L11:
                java.lang.String r3 = new java.lang.String
                r3.<init>(r0)
            L16:
                r2.<init>(r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzue.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    private zzue() {
    }

    public final void zzk(int i, int i2) throws IOException {
        zzj(i, zzdd(i2));
    }

    public final void zzb(int i, long j) throws IOException {
        zza(i, zzaa(j));
    }

    public final void zza(int i, float f) throws IOException {
        zzl(i, Float.floatToRawIntBits(f));
    }

    public final void zza(int i, double d) throws IOException {
        zzc(i, Double.doubleToRawLongBits(d));
    }

    public final void zzct(int i) throws IOException {
        zzcs(zzdd(i));
    }

    /* loaded from: classes.dex */
    static class zzb extends zzue {
        private final byte[] buffer;
        private final int limit;
        private final int offset;
        private int position;

        zzb(byte[] bArr, int i, int i2) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            int i3 = i2 + 0;
            if ((i2 | 0 | (bArr.length - i3)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
            }
            this.buffer = bArr;
            this.offset = 0;
            this.position = 0;
            this.limit = i3;
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzh(int i, int i2) throws IOException {
            zzcs((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzi(int i, int i2) throws IOException {
            zzh(i, 0);
            zzcr(i2);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzj(int i, int i2) throws IOException {
            zzh(i, 0);
            zzcs(i2);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzl(int i, int i2) throws IOException {
            zzh(i, 5);
            zzcu(i2);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zza(int i, long j) throws IOException {
            zzh(i, 0);
            zzs(j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzc(int i, long j) throws IOException {
            zzh(i, 1);
            zzu(j);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzb(int i, boolean z) throws IOException {
            zzh(i, 0);
            zzd(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzb(int i, String str) throws IOException {
            zzh(i, 2);
            zzcg(str);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zza(int i, zztn zztnVar) throws IOException {
            zzh(i, 2);
            zza(zztnVar);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zza(zztn zztnVar) throws IOException {
            zzcs(zztnVar.size());
            zztnVar.zza(this);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zze(byte[] bArr, int i, int i2) throws IOException {
            zzcs(i2);
            write(bArr, 0, i2);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        final void zza(int i, zzwe zzweVar, zzwu zzwuVar) throws IOException {
            zzh(i, 2);
            zztg zztgVar = (zztg) zzweVar;
            int zzpy = zztgVar.zzpy();
            if (zzpy == -1) {
                zzpy = zzwuVar.zzaa(zztgVar);
                zztgVar.zzci(zzpy);
            }
            zzcs(zzpy);
            zzwuVar.zza(zzweVar, this.zzbph);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zza(int i, zzwe zzweVar) throws IOException {
            zzh(1, 3);
            zzj(2, i);
            zzh(3, 2);
            zzb(zzweVar);
            zzh(1, 4);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzb(int i, zztn zztnVar) throws IOException {
            zzh(1, 3);
            zzj(2, i);
            zza(3, zztnVar);
            zzh(1, 4);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzb(zzwe zzweVar) throws IOException {
            zzcs(zzweVar.zzre());
            zzweVar.zzb(this);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzd(byte b) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                this.position = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzcr(int i) throws IOException {
            if (i >= 0) {
                zzcs(i);
            } else {
                zzs(i);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzcs(int i) throws IOException {
            if (!zzue.zzbpg || zztk.zzqc() || zzql() < 5) {
                while ((i & (-128)) != 0) {
                    try {
                        byte[] bArr = this.buffer;
                        int i2 = this.position;
                        this.position = i2 + 1;
                        bArr[i2] = (byte) ((i & MessagesStorage.LAST_DB_VERSION) | 128);
                        i >>>= 7;
                    } catch (IndexOutOfBoundsException e) {
                        throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                    }
                }
                byte[] bArr2 = this.buffer;
                int i3 = this.position;
                this.position = i3 + 1;
                bArr2[i3] = (byte) i;
            } else if ((i & (-128)) == 0) {
                byte[] bArr3 = this.buffer;
                int i4 = this.position;
                this.position = i4 + 1;
                zzxs.zza(bArr3, i4, (byte) i);
            } else {
                byte[] bArr4 = this.buffer;
                int i5 = this.position;
                this.position = i5 + 1;
                zzxs.zza(bArr4, i5, (byte) (i | 128));
                int i6 = i >>> 7;
                if ((i6 & (-128)) == 0) {
                    byte[] bArr5 = this.buffer;
                    int i7 = this.position;
                    this.position = i7 + 1;
                    zzxs.zza(bArr5, i7, (byte) i6);
                    return;
                }
                byte[] bArr6 = this.buffer;
                int i8 = this.position;
                this.position = i8 + 1;
                zzxs.zza(bArr6, i8, (byte) (i6 | 128));
                int i9 = i6 >>> 7;
                if ((i9 & (-128)) == 0) {
                    byte[] bArr7 = this.buffer;
                    int i10 = this.position;
                    this.position = i10 + 1;
                    zzxs.zza(bArr7, i10, (byte) i9);
                    return;
                }
                byte[] bArr8 = this.buffer;
                int i11 = this.position;
                this.position = i11 + 1;
                zzxs.zza(bArr8, i11, (byte) (i9 | 128));
                int i12 = i9 >>> 7;
                if ((i12 & (-128)) == 0) {
                    byte[] bArr9 = this.buffer;
                    int i13 = this.position;
                    this.position = i13 + 1;
                    zzxs.zza(bArr9, i13, (byte) i12);
                    return;
                }
                byte[] bArr10 = this.buffer;
                int i14 = this.position;
                this.position = i14 + 1;
                zzxs.zza(bArr10, i14, (byte) (i12 | 128));
                byte[] bArr11 = this.buffer;
                int i15 = this.position;
                this.position = i15 + 1;
                zzxs.zza(bArr11, i15, (byte) (i12 >>> 7));
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzcu(int i) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                int i3 = i2 + 1;
                this.position = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.position = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) (i >> 16);
                this.position = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzs(long j) throws IOException {
            if (zzue.zzbpg && zzql() >= 10) {
                while ((j & (-128)) != 0) {
                    byte[] bArr = this.buffer;
                    int i = this.position;
                    this.position = i + 1;
                    zzxs.zza(bArr, i, (byte) ((((int) j) & MessagesStorage.LAST_DB_VERSION) | 128));
                    j >>>= 7;
                }
                byte[] bArr2 = this.buffer;
                int i2 = this.position;
                this.position = i2 + 1;
                zzxs.zza(bArr2, i2, (byte) j);
                return;
            }
            while ((j & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.buffer;
                    int i3 = this.position;
                    this.position = i3 + 1;
                    bArr3[i3] = (byte) ((((int) j) & MessagesStorage.LAST_DB_VERSION) | 128);
                    j >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
                }
            }
            byte[] bArr4 = this.buffer;
            int i4 = this.position;
            this.position = i4 + 1;
            bArr4[i4] = (byte) j;
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzu(long j) throws IOException {
            try {
                byte[] bArr = this.buffer;
                int i = this.position;
                int i2 = i + 1;
                this.position = i2;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                this.position = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                this.position = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                this.position = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                this.position = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                this.position = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                this.position = i8;
                bArr[i7] = (byte) (j >> 48);
                this.position = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), 1), e);
            }
        }

        private final void write(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.buffer, this.position, i2);
                this.position += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.position), Integer.valueOf(this.limit), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzto
        public final void zzc(byte[] bArr, int i, int i2) throws IOException {
            write(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final void zzcg(String str) throws IOException {
            int i = this.position;
            try {
                int zzcx = zzue.zzcx(str.length() * 3);
                int zzcx2 = zzue.zzcx(str.length());
                if (zzcx2 == zzcx) {
                    int i2 = i + zzcx2;
                    this.position = i2;
                    int zza = zzxv.zza(str, this.buffer, i2, zzql());
                    this.position = i;
                    zzcs((zza - i) - zzcx2);
                    this.position = zza;
                    return;
                }
                zzcs(zzxv.zzb(str));
                this.position = zzxv.zza(str, this.buffer, this.position, zzql());
            } catch (zzxy e) {
                this.position = i;
                zza(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzue
        public final int zzql() {
            return this.limit - this.position;
        }
    }

    public final void zzt(long j) throws IOException {
        zzs(zzaa(j));
    }

    public final void zzs(float f) throws IOException {
        zzcu(Float.floatToRawIntBits(f));
    }

    public final void zzc(double d) throws IOException {
        zzu(Double.doubleToRawLongBits(d));
    }

    public final void zzal(boolean z) throws IOException {
        zzd(z ? (byte) 1 : (byte) 0);
    }

    public static int zzm(int i, int i2) {
        return zzcv(i) + zzcw(i2);
    }

    public static int zzn(int i, int i2) {
        return zzcv(i) + zzcx(i2);
    }

    public static int zzo(int i, int i2) {
        return zzcv(i) + zzcx(zzdd(i2));
    }

    public static int zzp(int i, int i2) {
        return zzcv(i) + 4;
    }

    public static int zzq(int i, int i2) {
        return zzcv(i) + 4;
    }

    public static int zzd(int i, long j) {
        return zzcv(i) + zzw(j);
    }

    public static int zze(int i, long j) {
        return zzcv(i) + zzw(j);
    }

    public static int zzf(int i, long j) {
        return zzcv(i) + zzw(zzaa(j));
    }

    public static int zzg(int i, long j) {
        return zzcv(i) + 8;
    }

    public static int zzh(int i, long j) {
        return zzcv(i) + 8;
    }

    public static int zzb(int i, float f) {
        return zzcv(i) + 4;
    }

    public static int zzb(int i, double d) {
        return zzcv(i) + 8;
    }

    public static int zzc(int i, boolean z) {
        return zzcv(i) + 1;
    }

    public static int zzr(int i, int i2) {
        return zzcv(i) + zzcw(i2);
    }

    public static int zzc(int i, String str) {
        return zzcv(i) + zzch(str);
    }

    public static int zzc(int i, zztn zztnVar) {
        int zzcv = zzcv(i);
        int size = zztnVar.size();
        return zzcv + zzcx(size) + size;
    }

    public static int zza(int i, zzvn zzvnVar) {
        int zzcv = zzcv(i);
        int zzre = zzvnVar.zzre();
        return zzcv + zzcx(zzre) + zzre;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(int i, zzwe zzweVar, zzwu zzwuVar) {
        return zzcv(i) + zza(zzweVar, zzwuVar);
    }

    public static int zzb(int i, zzwe zzweVar) {
        return (zzcv(1) << 1) + zzn(2, i) + zzcv(3) + zzc(zzweVar);
    }

    public static int zzd(int i, zztn zztnVar) {
        return (zzcv(1) << 1) + zzn(2, i) + zzc(3, zztnVar);
    }

    public static int zzb(int i, zzvn zzvnVar) {
        return (zzcv(1) << 1) + zzn(2, i) + zza(3, zzvnVar);
    }

    public static int zzcv(int i) {
        return zzcx(i << 3);
    }

    public static int zzcw(int i) {
        if (i >= 0) {
            return zzcx(i);
        }
        return 10;
    }

    public static int zzcy(int i) {
        return zzcx(zzdd(i));
    }

    public static int zzv(long j) {
        return zzw(j);
    }

    public static int zzx(long j) {
        return zzw(zzaa(j));
    }

    public static int zzdb(int i) {
        return zzcw(i);
    }

    public static int zzch(String str) {
        int length;
        try {
            length = zzxv.zzb(str);
        } catch (zzxy unused) {
            length = str.getBytes(zzuw.UTF_8).length;
        }
        return zzcx(length) + length;
    }

    public static int zza(zzvn zzvnVar) {
        int zzre = zzvnVar.zzre();
        return zzcx(zzre) + zzre;
    }

    public static int zzb(zztn zztnVar) {
        int size = zztnVar.size();
        return zzcx(size) + size;
    }

    public static int zzh(byte[] bArr) {
        int length = bArr.length;
        return zzcx(length) + length;
    }

    public static int zzc(zzwe zzweVar) {
        int zzre = zzweVar.zzre();
        return zzcx(zzre) + zzre;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzwe zzweVar, zzwu zzwuVar) {
        zztg zztgVar = (zztg) zzweVar;
        int zzpy = zztgVar.zzpy();
        if (zzpy == -1) {
            zzpy = zzwuVar.zzaa(zztgVar);
            zztgVar.zzci(zzpy);
        }
        return zzcx(zzpy) + zzpy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzdc(int i) {
        return zzcx(i) + i;
    }

    public final void zzqm() {
        if (zzql() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void zza(String str, zzxy zzxyVar) throws IOException {
        logger.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzxyVar);
        byte[] bytes = str.getBytes(zzuw.UTF_8);
        try {
            zzcs(bytes.length);
            zzc(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int zzc(int i, zzwe zzweVar, zzwu zzwuVar) {
        int zzcv = zzcv(i) << 1;
        zztg zztgVar = (zztg) zzweVar;
        int zzpy = zztgVar.zzpy();
        if (zzpy == -1) {
            zzpy = zzwuVar.zzaa(zztgVar);
            zztgVar.zzci(zzpy);
        }
        return zzcv + zzpy;
    }

    @Deprecated
    public static int zzd(zzwe zzweVar) {
        return zzweVar.zzre();
    }

    @Deprecated
    public static int zzde(int i) {
        return zzcx(i);
    }
}
