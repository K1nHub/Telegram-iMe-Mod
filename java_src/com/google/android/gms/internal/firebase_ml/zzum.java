package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzum<FieldDescriptorType extends zzuo<FieldDescriptorType>> {
    private static final zzum zzbpt = new zzum(true);
    private boolean zzbpr;
    private boolean zzbps = false;
    final zzwz<FieldDescriptorType, Object> zzbpq = zzwz.zzdp(16);

    private zzum() {
    }

    private zzum(boolean z) {
        zzqa();
    }

    public static <T extends zzuo<T>> zzum<T> zzqt() {
        return zzbpt;
    }

    public final void zzqa() {
        if (this.zzbpr) {
            return;
        }
        this.zzbpq.zzqa();
        this.zzbpr = true;
    }

    public final boolean isImmutable() {
        return this.zzbpr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzum) {
            return this.zzbpq.equals(((zzum) obj).zzbpq);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzbpq.hashCode();
    }

    public final Iterator<Map.Entry<FieldDescriptorType, Object>> iterator() {
        if (this.zzbps) {
            return new zzvk(this.zzbpq.entrySet().iterator());
        }
        return this.zzbpq.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<Map.Entry<FieldDescriptorType, Object>> descendingIterator() {
        if (this.zzbps) {
            return new zzvk(this.zzbpq.zztg().iterator());
        }
        return this.zzbpq.zztg().iterator();
    }

    private final Object zza(FieldDescriptorType fielddescriptortype) {
        Object obj = this.zzbpq.get(fielddescriptortype);
        return obj instanceof zzvj ? zzvj.zzsa() : obj;
    }

    private final void zza(FieldDescriptorType fielddescriptortype, Object obj) {
        if (fielddescriptortype.zzra()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                zza(fielddescriptortype.zzqy(), obj2);
            }
            obj = arrayList;
        } else {
            zza(fielddescriptortype.zzqy(), obj);
        }
        if (obj instanceof zzvj) {
            this.zzbps = true;
        }
        this.zzbpq.zza((zzwz<FieldDescriptorType, Object>) fielddescriptortype, (FieldDescriptorType) obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        if ((r3 instanceof com.google.android.gms.internal.firebase_ml.zzuz) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
        if ((r3 instanceof byte[]) == false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
        if ((r3 instanceof com.google.android.gms.internal.firebase_ml.zzvj) == false) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0046 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zza(com.google.android.gms.internal.firebase_ml.zzyd r2, java.lang.Object r3) {
        /*
            com.google.android.gms.internal.firebase_ml.zzuw.checkNotNull(r3)
            int[] r0 = com.google.android.gms.internal.firebase_ml.zzup.zzbpw
            com.google.android.gms.internal.firebase_ml.zzyg r2 = r2.zztw()
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L41;
                case 2: goto L3e;
                case 3: goto L3b;
                case 4: goto L38;
                case 5: goto L35;
                case 6: goto L32;
                case 7: goto L29;
                case 8: goto L20;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L44
        L15:
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_ml.zzwe
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_ml.zzvj
            if (r2 == 0) goto L1e
            goto L43
        L1e:
            r0 = r1
            goto L43
        L20:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_ml.zzuz
            if (r2 == 0) goto L1e
            goto L43
        L29:
            boolean r2 = r3 instanceof com.google.android.gms.internal.firebase_ml.zztn
            if (r2 != 0) goto L43
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L1e
            goto L43
        L32:
            boolean r0 = r3 instanceof java.lang.String
            goto L43
        L35:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L43
        L38:
            boolean r0 = r3 instanceof java.lang.Double
            goto L43
        L3b:
            boolean r0 = r3 instanceof java.lang.Float
            goto L43
        L3e:
            boolean r0 = r3 instanceof java.lang.Long
            goto L43
        L41:
            boolean r0 = r3 instanceof java.lang.Integer
        L43:
            r1 = r0
        L44:
            if (r1 == 0) goto L47
            return
        L47:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzum.zza(com.google.android.gms.internal.firebase_ml.zzyd, java.lang.Object):void");
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzbpq.zzte(); i++) {
            if (!zzb(this.zzbpq.zzdq(i))) {
                return false;
            }
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbpq.zztf()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    private static boolean zzb(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        if (key.zzqz() == zzyg.MESSAGE) {
            if (key.zzra()) {
                for (zzwe zzweVar : (List) entry.getValue()) {
                    if (!zzweVar.isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzwe) {
                    if (!((zzwe) value).isInitialized()) {
                        return false;
                    }
                } else if (value instanceof zzvj) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public final void zza(zzum<FieldDescriptorType> zzumVar) {
        for (int i = 0; i < zzumVar.zzbpq.zzte(); i++) {
            zzc(zzumVar.zzbpq.zzdq(i));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : zzumVar.zzbpq.zztf()) {
            zzc(entry);
        }
    }

    private static Object zzr(Object obj) {
        if (obj instanceof zzwn) {
            return ((zzwn) obj).zzsr();
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    private final void zzc(Map.Entry<FieldDescriptorType, Object> entry) {
        zzwe zzrq;
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzvj) {
            value = zzvj.zzsa();
        }
        if (key.zzra()) {
            Object zza = zza((zzum<FieldDescriptorType>) key);
            if (zza == null) {
                zza = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) zza).add(zzr(obj));
            }
            this.zzbpq.zza((zzwz<FieldDescriptorType, Object>) key, (FieldDescriptorType) zza);
        } else if (key.zzqz() == zzyg.MESSAGE) {
            Object zza2 = zza((zzum<FieldDescriptorType>) key);
            if (zza2 == null) {
                this.zzbpq.zza((zzwz<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzr(value));
                return;
            }
            if (zza2 instanceof zzwn) {
                zzrq = key.zza((zzwn) zza2, (zzwn) value);
            } else {
                zzrq = key.zza(((zzwe) zza2).zzri(), (zzwe) value).zzrq();
            }
            this.zzbpq.zza((zzwz<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzrq);
        } else {
            this.zzbpq.zza((zzwz<FieldDescriptorType, Object>) key, (FieldDescriptorType) zzr(value));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzue zzueVar, zzyd zzydVar, int i, Object obj) throws IOException {
        if (zzydVar == zzyd.zzbyg) {
            zzwe zzweVar = (zzwe) obj;
            zzuw.zzf(zzweVar);
            zzueVar.zzh(i, 3);
            zzweVar.zzb(zzueVar);
            zzueVar.zzh(i, 4);
            return;
        }
        zzueVar.zzh(i, zzydVar.zztx());
        switch (zzup.zzbpx[zzydVar.ordinal()]) {
            case 1:
                zzueVar.zzc(((Double) obj).doubleValue());
                return;
            case 2:
                zzueVar.zzs(((Float) obj).floatValue());
                return;
            case 3:
                zzueVar.zzs(((Long) obj).longValue());
                return;
            case 4:
                zzueVar.zzs(((Long) obj).longValue());
                return;
            case 5:
                zzueVar.zzcr(((Integer) obj).intValue());
                return;
            case 6:
                zzueVar.zzu(((Long) obj).longValue());
                return;
            case 7:
                zzueVar.zzcu(((Integer) obj).intValue());
                return;
            case 8:
                zzueVar.zzal(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzwe) obj).zzb(zzueVar);
                return;
            case 10:
                zzueVar.zzb((zzwe) obj);
                return;
            case 11:
                if (obj instanceof zztn) {
                    zzueVar.zza((zztn) obj);
                    return;
                } else {
                    zzueVar.zzcg((String) obj);
                    return;
                }
            case 12:
                if (obj instanceof zztn) {
                    zzueVar.zza((zztn) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzueVar.zze(bArr, 0, bArr.length);
                return;
            case 13:
                zzueVar.zzcs(((Integer) obj).intValue());
                return;
            case 14:
                zzueVar.zzcu(((Integer) obj).intValue());
                return;
            case 15:
                zzueVar.zzu(((Long) obj).longValue());
                return;
            case 16:
                zzueVar.zzct(((Integer) obj).intValue());
                return;
            case 17:
                zzueVar.zzt(((Long) obj).longValue());
                return;
            case 18:
                if (obj instanceof zzuz) {
                    zzueVar.zzcr(((zzuz) obj).zza());
                    return;
                } else {
                    zzueVar.zzcr(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public final int zzqu() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzbpq.zzte(); i2++) {
            i += zzd(this.zzbpq.zzdq(i2));
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbpq.zztf()) {
            i += zzd(entry);
        }
        return i;
    }

    private static int zzd(Map.Entry<FieldDescriptorType, Object> entry) {
        FieldDescriptorType key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzqz() == zzyg.MESSAGE && !key.zzra() && !key.zzrb()) {
            if (value instanceof zzvj) {
                return zzue.zzb(entry.getKey().zza(), (zzvj) value);
            }
            return zzue.zzb(entry.getKey().zza(), (zzwe) value);
        }
        return zzb((zzuo<?>) key, value);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzyd zzydVar, int i, Object obj) {
        int zzcv = zzue.zzcv(i);
        if (zzydVar == zzyd.zzbyg) {
            zzuw.zzf((zzwe) obj);
            zzcv <<= 1;
        }
        return zzcv + zzb(zzydVar, obj);
    }

    private static int zzb(zzyd zzydVar, Object obj) {
        switch (zzup.zzbpx[zzydVar.ordinal()]) {
            case 1:
                return zzue.zzd(((Double) obj).doubleValue());
            case 2:
                return zzue.zzt(((Float) obj).floatValue());
            case 3:
                return zzue.zzv(((Long) obj).longValue());
            case 4:
                return zzue.zzw(((Long) obj).longValue());
            case 5:
                return zzue.zzcw(((Integer) obj).intValue());
            case 6:
                return zzue.zzy(((Long) obj).longValue());
            case 7:
                return zzue.zzcz(((Integer) obj).intValue());
            case 8:
                return zzue.zzam(((Boolean) obj).booleanValue());
            case 9:
                return zzue.zzd((zzwe) obj);
            case 10:
                if (obj instanceof zzvj) {
                    return zzue.zza((zzvj) obj);
                }
                return zzue.zzc((zzwe) obj);
            case 11:
                if (obj instanceof zztn) {
                    return zzue.zzb((zztn) obj);
                }
                return zzue.zzch((String) obj);
            case 12:
                if (obj instanceof zztn) {
                    return zzue.zzb((zztn) obj);
                }
                return zzue.zzh((byte[]) obj);
            case 13:
                return zzue.zzcx(((Integer) obj).intValue());
            case 14:
                return zzue.zzda(((Integer) obj).intValue());
            case 15:
                return zzue.zzz(((Long) obj).longValue());
            case 16:
                return zzue.zzcy(((Integer) obj).intValue());
            case 17:
                return zzue.zzx(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzuz) {
                    return zzue.zzdb(((zzuz) obj).zza());
                }
                return zzue.zzdb(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int zzb(zzuo<?> zzuoVar, Object obj) {
        zzyd zzqy = zzuoVar.zzqy();
        int zza = zzuoVar.zza();
        if (zzuoVar.zzra()) {
            int i = 0;
            if (zzuoVar.zzrb()) {
                for (Object obj2 : (List) obj) {
                    i += zzb(zzqy, obj2);
                }
                return zzue.zzcv(zza) + i + zzue.zzde(i);
            }
            for (Object obj3 : (List) obj) {
                i += zza(zzqy, zza, obj3);
            }
            return i;
        }
        return zza(zzqy, zza, obj);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzum zzumVar = new zzum();
        for (int i = 0; i < this.zzbpq.zzte(); i++) {
            Map.Entry<FieldDescriptorType, Object> zzdq = this.zzbpq.zzdq(i);
            zzumVar.zza((zzum) zzdq.getKey(), zzdq.getValue());
        }
        for (Map.Entry<FieldDescriptorType, Object> entry : this.zzbpq.zztf()) {
            zzumVar.zza((zzum) entry.getKey(), entry.getValue());
        }
        zzumVar.zzbps = this.zzbps;
        return zzumVar;
    }
}
