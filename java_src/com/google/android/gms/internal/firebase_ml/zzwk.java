package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
final class zzwk<T> implements zzwu<T> {
    private final zzwe zzbvj;
    private final boolean zzbvk;
    private final zzxm<?, ?> zzbvt;
    private final zzul<?> zzbvu;

    private zzwk(zzxm<?, ?> zzxmVar, zzul<?> zzulVar, zzwe zzweVar) {
        this.zzbvt = zzxmVar;
        this.zzbvk = zzulVar.zze(zzweVar);
        this.zzbvu = zzulVar;
        this.zzbvj = zzweVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzwk<T> zza(zzxm<?, ?> zzxmVar, zzul<?> zzulVar, zzwe zzweVar) {
        return new zzwk<>(zzxmVar, zzulVar, zzweVar);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final T newInstance() {
        return (T) this.zzbvj.zzrj().zzrp();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final boolean equals(T t, T t2) {
        if (this.zzbvt.zzae(t).equals(this.zzbvt.zzae(t2))) {
            if (this.zzbvk) {
                return this.zzbvu.zzo(t).equals(this.zzbvu.zzo(t2));
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final int hashCode(T t) {
        int hashCode = this.zzbvt.zzae(t).hashCode();
        return this.zzbvk ? (hashCode * 53) + this.zzbvu.zzo(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final void zze(T t, T t2) {
        zzww.zza(this.zzbvt, t, t2);
        if (this.zzbvk) {
            zzww.zza(this.zzbvu, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final void zza(T t, zzyj zzyjVar) throws IOException {
        Iterator<Map.Entry<?, Object>> it = this.zzbvu.zzo(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzuo zzuoVar = (zzuo) next.getKey();
            if (zzuoVar.zzqz() != zzyg.MESSAGE || zzuoVar.zzra() || zzuoVar.zzrb()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof zzvl) {
                zzyjVar.zza(zzuoVar.zza(), (Object) ((zzvl) next).zzsb().zzpx());
            } else {
                zzyjVar.zza(zzuoVar.zza(), next.getValue());
            }
        }
        zzxm<?, ?> zzxmVar = this.zzbvt;
        zzxmVar.zzc(zzxmVar.zzae(t), zzyjVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0099 A[EDGE_INSN: B:57:0x0099->B:34:0x0099 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.firebase_ml.zztm r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.firebase_ml.zzuu r0 = (com.google.android.gms.internal.firebase_ml.zzuu) r0
            com.google.android.gms.internal.firebase_ml.zzxp r1 = r0.zzbso
            com.google.android.gms.internal.firebase_ml.zzxp r2 = com.google.android.gms.internal.firebase_ml.zzxp.zztn()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.firebase_ml.zzxp r1 = com.google.android.gms.internal.firebase_ml.zzxp.zzto()
            r0.zzbso = r1
        L11:
            com.google.android.gms.internal.firebase_ml.zzuu$zzc r10 = (com.google.android.gms.internal.firebase_ml.zzuu.zzc) r10
            r10.zzrr()
            r10 = 0
            r0 = r10
        L18:
            if (r12 >= r13) goto La4
            int r4 = com.google.android.gms.internal.firebase_ml.zztj.zza(r11, r12, r14)
            int r2 = r14.zzbop
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L51
            r12 = r2 & 7
            if (r12 != r3) goto L4c
            com.google.android.gms.internal.firebase_ml.zzul<?> r12 = r9.zzbvu
            com.google.android.gms.internal.firebase_ml.zzuj r0 = r14.zzih
            com.google.android.gms.internal.firebase_ml.zzwe r3 = r9.zzbvj
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.firebase_ml.zzuu$zzf r0 = (com.google.android.gms.internal.firebase_ml.zzuu.zzf) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.firebase_ml.zztj.zza(r2, r3, r4, r5, r6, r7)
            goto L18
        L43:
            com.google.android.gms.internal.firebase_ml.zzwt.zzsw()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            int r12 = com.google.android.gms.internal.firebase_ml.zztj.zza(r2, r11, r4, r13, r14)
            goto L18
        L51:
            r12 = 0
            r2 = r10
        L53:
            if (r4 >= r13) goto L99
            int r4 = com.google.android.gms.internal.firebase_ml.zztj.zza(r11, r4, r14)
            int r5 = r14.zzbop
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L7b
            r8 = 3
            if (r6 == r8) goto L65
            goto L90
        L65:
            if (r0 != 0) goto L72
            if (r7 != r3) goto L90
            int r4 = com.google.android.gms.internal.firebase_ml.zztj.zze(r11, r4, r14)
            java.lang.Object r2 = r14.zzbor
            com.google.android.gms.internal.firebase_ml.zztn r2 = (com.google.android.gms.internal.firebase_ml.zztn) r2
            goto L53
        L72:
            com.google.android.gms.internal.firebase_ml.zzwt.zzsw()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L7b:
            if (r7 != 0) goto L90
            int r4 = com.google.android.gms.internal.firebase_ml.zztj.zza(r11, r4, r14)
            int r12 = r14.zzbop
            com.google.android.gms.internal.firebase_ml.zzul<?> r0 = r9.zzbvu
            com.google.android.gms.internal.firebase_ml.zzuj r5 = r14.zzih
            com.google.android.gms.internal.firebase_ml.zzwe r6 = r9.zzbvj
            java.lang.Object r0 = r0.zza(r5, r6, r12)
            com.google.android.gms.internal.firebase_ml.zzuu$zzf r0 = (com.google.android.gms.internal.firebase_ml.zzuu.zzf) r0
            goto L53
        L90:
            r6 = 12
            if (r5 == r6) goto L99
            int r4 = com.google.android.gms.internal.firebase_ml.zztj.zza(r5, r11, r4, r13, r14)
            goto L53
        L99:
            if (r2 == 0) goto La1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.zzb(r12, r2)
        La1:
            r12 = r4
            goto L18
        La4:
            if (r12 != r13) goto La7
            return
        La7:
            com.google.android.gms.internal.firebase_ml.zzve r10 = com.google.android.gms.internal.firebase_ml.zzve.zzrx()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzwk.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.firebase_ml.zztm):void");
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final void zzq(T t) {
        this.zzbvt.zzq(t);
        this.zzbvu.zzq(t);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final boolean zzac(T t) {
        return this.zzbvu.zzo(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final int zzaa(T t) {
        zzxm<?, ?> zzxmVar = this.zzbvt;
        int zzaf = zzxmVar.zzaf(zzxmVar.zzae(t)) + 0;
        return this.zzbvk ? zzaf + this.zzbvu.zzo(t).zzqu() : zzaf;
    }
}
