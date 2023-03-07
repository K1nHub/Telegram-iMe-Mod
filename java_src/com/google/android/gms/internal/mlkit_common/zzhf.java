package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
final class zzhf<T> implements zzhr<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzip.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzhb zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzhg zzo;
    private final zzgl zzp;
    private final zzij<?, ?> zzq;
    private final zzfg<?> zzr;
    private final zzgu zzs;

    private zzhf(int[] iArr, Object[] objArr, int i, int i2, zzhb zzhbVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzhg zzhgVar, zzgl zzglVar, zzij<?, ?> zzijVar, zzfg<?> zzfgVar, zzgu zzguVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzhbVar instanceof zzfq;
        this.zzj = z;
        this.zzh = zzfgVar != null && zzfgVar.zza(zzhbVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzhgVar;
        this.zzp = zzglVar;
        this.zzq = zzijVar;
        this.zzr = zzfgVar;
        this.zzg = zzhbVar;
        this.zzs = zzguVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:163:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x039c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.mlkit_common.zzhf<T> zza(java.lang.Class<T> r33, com.google.android.gms.internal.mlkit_common.zzgz r34, com.google.android.gms.internal.mlkit_common.zzhg r35, com.google.android.gms.internal.mlkit_common.zzgl r36, com.google.android.gms.internal.mlkit_common.zzij<?, ?> r37, com.google.android.gms.internal.mlkit_common.zzfg<?> r38, com.google.android.gms.internal.mlkit_common.zzgu r39) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzhf.zza(java.lang.Class, com.google.android.gms.internal.mlkit_common.zzgz, com.google.android.gms.internal.mlkit_common.zzhg, com.google.android.gms.internal.mlkit_common.zzgl, com.google.android.gms.internal.mlkit_common.zzij, com.google.android.gms.internal.mlkit_common.zzfg, com.google.android.gms.internal.mlkit_common.zzgu):com.google.android.gms.internal.mlkit_common.zzhf");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + name.length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.mlkit_common.zzip.zze(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.mlkit_common.zzip.zze(r11, r6))) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzht.zza(com.google.android.gms.internal.mlkit_common.zzip.zzf(r10, r6), com.google.android.gms.internal.mlkit_common.zzip.zzf(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzht.zza(com.google.android.gms.internal.mlkit_common.zzip.zzf(r10, r6), com.google.android.gms.internal.mlkit_common.zzip.zzf(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zzb(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zzb(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zza(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zza(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a4, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zzb(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zzb(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zza(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zza(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c8, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zza(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zza(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00da, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zza(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zza(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f0, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzht.zza(com.google.android.gms.internal.mlkit_common.zzip.zzf(r10, r6), com.google.android.gms.internal.mlkit_common.zzip.zzf(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0106, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzht.zza(com.google.android.gms.internal.mlkit_common.zzip.zzf(r10, r6), com.google.android.gms.internal.mlkit_common.zzip.zzf(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x011c, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzht.zza(com.google.android.gms.internal.mlkit_common.zzip.zzf(r10, r6), com.google.android.gms.internal.mlkit_common.zzip.zzf(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012e, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zzc(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zzc(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0140, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zza(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zza(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0154, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zzb(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zzb(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0165, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zza(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zza(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0178, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zzb(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zzb(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018b, code lost:
        if (com.google.android.gms.internal.mlkit_common.zzip.zzb(r10, r6) == com.google.android.gms.internal.mlkit_common.zzip.zzb(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.mlkit_common.zzip.zzd(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.mlkit_common.zzip.zzd(r11, r6))) goto L85;
     */
    @Override // com.google.android.gms.internal.mlkit_common.zzhr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzhf.zza(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhr
    public final int zza(T t) {
        int i;
        int zza2;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int zzc = zzc(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & zzc;
            int i5 = 37;
            switch ((zzc & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    zza2 = zzfs.zza(Double.doubleToLongBits(zzip.zze(t, j)));
                    i2 = i + zza2;
                    break;
                case 1:
                    i = i2 * 53;
                    zza2 = Float.floatToIntBits(zzip.zzd(t, j));
                    i2 = i + zza2;
                    break;
                case 2:
                    i = i2 * 53;
                    zza2 = zzfs.zza(zzip.zzb(t, j));
                    i2 = i + zza2;
                    break;
                case 3:
                    i = i2 * 53;
                    zza2 = zzfs.zza(zzip.zzb(t, j));
                    i2 = i + zza2;
                    break;
                case 4:
                    i = i2 * 53;
                    zza2 = zzip.zza(t, j);
                    i2 = i + zza2;
                    break;
                case 5:
                    i = i2 * 53;
                    zza2 = zzfs.zza(zzip.zzb(t, j));
                    i2 = i + zza2;
                    break;
                case 6:
                    i = i2 * 53;
                    zza2 = zzip.zza(t, j);
                    i2 = i + zza2;
                    break;
                case 7:
                    i = i2 * 53;
                    zza2 = zzfs.zza(zzip.zzc(t, j));
                    i2 = i + zza2;
                    break;
                case 8:
                    i = i2 * 53;
                    zza2 = ((String) zzip.zzf(t, j)).hashCode();
                    i2 = i + zza2;
                    break;
                case 9:
                    Object zzf = zzip.zzf(t, j);
                    if (zzf != null) {
                        i5 = zzf.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zza2 = zzip.zzf(t, j).hashCode();
                    i2 = i + zza2;
                    break;
                case 11:
                    i = i2 * 53;
                    zza2 = zzip.zza(t, j);
                    i2 = i + zza2;
                    break;
                case 12:
                    i = i2 * 53;
                    zza2 = zzip.zza(t, j);
                    i2 = i + zza2;
                    break;
                case 13:
                    i = i2 * 53;
                    zza2 = zzip.zza(t, j);
                    i2 = i + zza2;
                    break;
                case 14:
                    i = i2 * 53;
                    zza2 = zzfs.zza(zzip.zzb(t, j));
                    i2 = i + zza2;
                    break;
                case 15:
                    i = i2 * 53;
                    zza2 = zzip.zza(t, j);
                    i2 = i + zza2;
                    break;
                case 16:
                    i = i2 * 53;
                    zza2 = zzfs.zza(zzip.zzb(t, j));
                    i2 = i + zza2;
                    break;
                case 17:
                    Object zzf2 = zzip.zzf(t, j);
                    if (zzf2 != null) {
                        i5 = zzf2.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    zza2 = zzip.zzf(t, j).hashCode();
                    i2 = i + zza2;
                    break;
                case 50:
                    i = i2 * 53;
                    zza2 = zzip.zzf(t, j).hashCode();
                    i2 = i + zza2;
                    break;
                case 51:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzfs.zza(Double.doubleToLongBits(zzb(t, j)));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = Float.floatToIntBits(zzc(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzfs.zza(zze(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzfs.zza(zze(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzd(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzfs.zza(zze(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzd(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzfs.zza(zzf(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = ((String) zzip.zzf(t, j)).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzip.zzf(t, j).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzip.zzf(t, j).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzd(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzd(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzd(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzfs.zza(zze(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzd(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzfs.zza(zze(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zza((zzhf<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzip.zzf(t, j).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzq.zza(t).hashCode();
        return this.zzh ? (hashCode * 53) + this.zzr.zza(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhr
    public final void zzb(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzc = zzc(i);
            long j = 1048575 & zzc;
            int i2 = this.zzc[i];
            switch ((zzc & 267386880) >>> 20) {
                case 0:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza(t, j, zzip.zze(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zzd(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zzb(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zzb(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zza(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zzb(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zza(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza(t, j, zzip.zzc(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza(t, j, zzip.zzf(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza(t, j, zzip.zzf(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zza(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zza(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zza(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zzb(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zza(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza((zzhf<T>) t2, i)) {
                        zzip.zza((Object) t, j, zzip.zzb(t2, j));
                        zzb((zzhf<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zza(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzp.zza(t, t2, j);
                    break;
                case 50:
                    zzht.zza(this.zzs, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zza((zzhf<T>) t2, i2, i)) {
                        zzip.zza(t, j, zzip.zzf(t2, j));
                        zzb((zzhf<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zza((zzhf<T>) t2, i2, i)) {
                        zzip.zza(t, j, zzip.zzf(t2, j));
                        zzb((zzhf<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zzht.zza(this.zzq, t, t2);
        if (this.zzh) {
            zzht.zza(this.zzr, t, t2);
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzc = zzc(i) & 1048575;
        if (zza((zzhf<T>) t2, i)) {
            Object zzf = zzip.zzf(t, zzc);
            Object zzf2 = zzip.zzf(t2, zzc);
            if (zzf != null && zzf2 != null) {
                zzip.zza(t, zzc, zzfs.zza(zzf, zzf2));
                zzb((zzhf<T>) t, i);
            } else if (zzf2 != null) {
                zzip.zza(t, zzc, zzf2);
                zzb((zzhf<T>) t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int zzc = zzc(i);
        int i2 = this.zzc[i];
        long j = zzc & 1048575;
        if (zza((zzhf<T>) t2, i2, i)) {
            Object zzf = zzip.zzf(t, j);
            Object zzf2 = zzip.zzf(t2, j);
            if (zzf != null && zzf2 != null) {
                zzip.zza(t, j, zzfs.zza(zzf, zzf2));
                zzb((zzhf<T>) t, i2, i);
            } else if (zzf2 != null) {
                zzip.zza(t, j, zzf2);
                zzb((zzhf<T>) t, i2, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.mlkit_common.zzhr
    public final int zzd(T t) {
        int i;
        long j;
        int zzd;
        int zzb2;
        int zzj;
        int zzh;
        int zzi;
        int zze;
        int zzg;
        int zzb3;
        int zzi2;
        int zze2;
        int zzg2;
        int i2 = 267386880;
        int i3 = 1048575;
        int i4 = 1;
        if (this.zzj) {
            Unsafe unsafe = zzb;
            int i5 = 0;
            int i6 = 0;
            while (i5 < this.zzc.length) {
                int zzc = zzc(i5);
                int i7 = (zzc & i2) >>> 20;
                int i8 = this.zzc[i5];
                long j2 = zzc & 1048575;
                if (i7 >= zzfm.zza.zza() && i7 <= zzfm.zzb.zza()) {
                    int i9 = this.zzc[i5 + 2];
                }
                switch (i7) {
                    case 0:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzb(i8, 0.0d);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 1:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzb(i8, (float) BitmapDescriptorFactory.HUE_RED);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 2:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzd(i8, zzip.zzb(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 3:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zze(i8, zzip.zzb(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 4:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzf(i8, zzip.zza(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 5:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzg(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 6:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzi(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 7:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzb(i8, true);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 8:
                        if (zza((zzhf<T>) t, i5)) {
                            Object zzf = zzip.zzf(t, j2);
                            if (zzf instanceof zzep) {
                                zzb3 = zzfc.zzc(i8, (zzep) zzf);
                                break;
                            } else {
                                zzb3 = zzfc.zzb(i8, (String) zzf);
                                break;
                            }
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 9:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzht.zza(i8, zzip.zzf(t, j2), zza(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 10:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzc(i8, (zzep) zzip.zzf(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 11:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzg(i8, zzip.zza(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 12:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzk(i8, zzip.zza(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 13:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzj(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 14:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzh(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 15:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzh(i8, zzip.zza(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 16:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzf(i8, zzip.zzb(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 17:
                        if (zza((zzhf<T>) t, i5)) {
                            zzb3 = zzfc.zzc(i8, (zzhb) zzip.zzf(t, j2), zza(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 18:
                        zzb3 = zzht.zzi(i8, zza(t, j2), false);
                        break;
                    case 19:
                        zzb3 = zzht.zzh(i8, zza(t, j2), false);
                        break;
                    case 20:
                        zzb3 = zzht.zza(i8, (List<Long>) zza(t, j2), false);
                        break;
                    case 21:
                        zzb3 = zzht.zzb(i8, (List<Long>) zza(t, j2), false);
                        break;
                    case 22:
                        zzb3 = zzht.zze(i8, zza(t, j2), false);
                        break;
                    case 23:
                        zzb3 = zzht.zzi(i8, zza(t, j2), false);
                        break;
                    case 24:
                        zzb3 = zzht.zzh(i8, zza(t, j2), false);
                        break;
                    case 25:
                        zzb3 = zzht.zzj(i8, zza(t, j2), false);
                        break;
                    case 26:
                        zzb3 = zzht.zza(i8, zza(t, j2));
                        break;
                    case 27:
                        zzb3 = zzht.zza(i8, zza(t, j2), zza(i5));
                        break;
                    case 28:
                        zzb3 = zzht.zzb(i8, zza(t, j2));
                        break;
                    case 29:
                        zzb3 = zzht.zzf(i8, zza(t, j2), false);
                        break;
                    case 30:
                        zzb3 = zzht.zzd(i8, zza(t, j2), false);
                        break;
                    case 31:
                        zzb3 = zzht.zzh(i8, zza(t, j2), false);
                        break;
                    case 32:
                        zzb3 = zzht.zzi(i8, zza(t, j2), false);
                        break;
                    case 33:
                        zzb3 = zzht.zzg(i8, zza(t, j2), false);
                        break;
                    case 34:
                        zzb3 = zzht.zzc(i8, zza(t, j2), false);
                        break;
                    case 35:
                        zzi2 = zzht.zzi((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 36:
                        zzi2 = zzht.zzh((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 37:
                        zzi2 = zzht.zza((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 38:
                        zzi2 = zzht.zzb((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 39:
                        zzi2 = zzht.zze((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 40:
                        zzi2 = zzht.zzi((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 41:
                        zzi2 = zzht.zzh((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 42:
                        zzi2 = zzht.zzj((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 43:
                        zzi2 = zzht.zzf((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 44:
                        zzi2 = zzht.zzd((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 45:
                        zzi2 = zzht.zzh((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 46:
                        zzi2 = zzht.zzi((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 47:
                        zzi2 = zzht.zzg((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 48:
                        zzi2 = zzht.zzc((List) unsafe.getObject(t, j2));
                        if (zzi2 > 0) {
                            zze2 = zzfc.zze(i8);
                            zzg2 = zzfc.zzg(zzi2);
                            zzb3 = zze2 + zzg2 + zzi2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 49:
                        zzb3 = zzht.zzb(i8, (List<zzhb>) zza(t, j2), zza(i5));
                        break;
                    case 50:
                        zzb3 = this.zzs.zza(i8, zzip.zzf(t, j2), zzb(i5));
                        break;
                    case 51:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzb(i8, 0.0d);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 52:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzb(i8, (float) BitmapDescriptorFactory.HUE_RED);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 53:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzd(i8, zze(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 54:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zze(i8, zze(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 55:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzf(i8, zzd(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 56:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzg(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 57:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzi(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 58:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzb(i8, true);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 59:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            Object zzf2 = zzip.zzf(t, j2);
                            if (zzf2 instanceof zzep) {
                                zzb3 = zzfc.zzc(i8, (zzep) zzf2);
                                break;
                            } else {
                                zzb3 = zzfc.zzb(i8, (String) zzf2);
                                break;
                            }
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 60:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzht.zza(i8, zzip.zzf(t, j2), zza(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 61:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzc(i8, (zzep) zzip.zzf(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 62:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzg(i8, zzd(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 63:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzk(i8, zzd(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 64:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzj(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 65:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzh(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 66:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzh(i8, zzd(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 67:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzf(i8, zze(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    case 68:
                        if (zza((zzhf<T>) t, i8, i5)) {
                            zzb3 = zzfc.zzc(i8, (zzhb) zzip.zzf(t, j2), zza(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i2 = 267386880;
                        }
                    default:
                        i5 += 3;
                        i2 = 267386880;
                }
                i6 += zzb3;
                i5 += 3;
                i2 = 267386880;
            }
            return i6 + zza((zzij) this.zzq, (Object) t);
        }
        Unsafe unsafe2 = zzb;
        int i10 = 0;
        int i11 = 0;
        int i12 = 1048575;
        int i13 = 0;
        while (i10 < this.zzc.length) {
            int zzc2 = zzc(i10);
            int[] iArr = this.zzc;
            int i14 = iArr[i10];
            int i15 = (zzc2 & 267386880) >>> 20;
            if (i15 <= 17) {
                int i16 = iArr[i10 + 2];
                int i17 = i16 & i3;
                i = i4 << (i16 >>> 20);
                if (i17 != i12) {
                    i13 = unsafe2.getInt(t, i17);
                    i12 = i17;
                }
            } else {
                i = 0;
            }
            long j3 = zzc2 & i3;
            switch (i15) {
                case 0:
                    j = 0;
                    if ((i13 & i) != 0) {
                        i11 += zzfc.zzb(i14, 0.0d);
                        continue;
                        i10 += 3;
                        i3 = 1048575;
                        i4 = 1;
                    }
                    break;
                case 1:
                    j = 0;
                    if ((i13 & i) != 0) {
                        i11 += zzfc.zzb(i14, (float) BitmapDescriptorFactory.HUE_RED);
                        break;
                    }
                    break;
                case 2:
                    j = 0;
                    if ((i & i13) != 0) {
                        zzd = zzfc.zzd(i14, unsafe2.getLong(t, j3));
                        i11 += zzd;
                        break;
                    }
                    break;
                case 3:
                    j = 0;
                    if ((i & i13) != 0) {
                        zzd = zzfc.zze(i14, unsafe2.getLong(t, j3));
                        i11 += zzd;
                        break;
                    }
                    break;
                case 4:
                    j = 0;
                    if ((i & i13) != 0) {
                        zzd = zzfc.zzf(i14, unsafe2.getInt(t, j3));
                        i11 += zzd;
                        break;
                    }
                    break;
                case 5:
                    j = 0;
                    if ((i13 & i) != 0) {
                        zzd = zzfc.zzg(i14, 0L);
                        i11 += zzd;
                        break;
                    }
                    break;
                case 6:
                    if ((i13 & i) != 0) {
                        i11 += zzfc.zzi(i14, 0);
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 7:
                    if ((i13 & i) != 0) {
                        i11 += zzfc.zzb(i14, true);
                        j = 0;
                        i10 += 3;
                        i3 = 1048575;
                        i4 = 1;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 8:
                    if ((i13 & i) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        if (object instanceof zzep) {
                            zzb2 = zzfc.zzc(i14, (zzep) object);
                        } else {
                            zzb2 = zzfc.zzb(i14, (String) object);
                        }
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 9:
                    if ((i13 & i) != 0) {
                        zzb2 = zzht.zza(i14, unsafe2.getObject(t, j3), zza(i10));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 10:
                    if ((i13 & i) != 0) {
                        zzb2 = zzfc.zzc(i14, (zzep) unsafe2.getObject(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 11:
                    if ((i13 & i) != 0) {
                        zzb2 = zzfc.zzg(i14, unsafe2.getInt(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 12:
                    if ((i13 & i) != 0) {
                        zzb2 = zzfc.zzk(i14, unsafe2.getInt(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 13:
                    if ((i13 & i) != 0) {
                        zzj = zzfc.zzj(i14, 0);
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 14:
                    if ((i13 & i) != 0) {
                        zzb2 = zzfc.zzh(i14, 0L);
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 15:
                    if ((i13 & i) != 0) {
                        zzb2 = zzfc.zzh(i14, unsafe2.getInt(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 16:
                    if ((i13 & i) != 0) {
                        zzb2 = zzfc.zzf(i14, unsafe2.getLong(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 17:
                    if ((i13 & i) != 0) {
                        zzb2 = zzfc.zzc(i14, (zzhb) unsafe2.getObject(t, j3), zza(i10));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 18:
                    zzb2 = zzht.zzi(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzb2;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 19:
                    zzh = zzht.zzh(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 20:
                    zzh = zzht.zza(i14, (List<Long>) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 21:
                    zzh = zzht.zzb(i14, (List<Long>) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 22:
                    zzh = zzht.zze(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 23:
                    zzh = zzht.zzi(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 24:
                    zzh = zzht.zzh(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 25:
                    zzh = zzht.zzj(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 26:
                    zzb2 = zzht.zza(i14, (List) unsafe2.getObject(t, j3));
                    i11 += zzb2;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 27:
                    zzb2 = zzht.zza(i14, (List<?>) unsafe2.getObject(t, j3), zza(i10));
                    i11 += zzb2;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 28:
                    zzb2 = zzht.zzb(i14, (List) unsafe2.getObject(t, j3));
                    i11 += zzb2;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 29:
                    zzb2 = zzht.zzf(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzb2;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 30:
                    zzh = zzht.zzd(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 31:
                    zzh = zzht.zzh(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 32:
                    zzh = zzht.zzi(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 33:
                    zzh = zzht.zzg(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 34:
                    zzh = zzht.zzc(i14, (List) unsafe2.getObject(t, j3), false);
                    i11 += zzh;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 35:
                    zzi = zzht.zzi((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 36:
                    zzi = zzht.zzh((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 37:
                    zzi = zzht.zza((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 38:
                    zzi = zzht.zzb((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 39:
                    zzi = zzht.zze((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 40:
                    zzi = zzht.zzi((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 41:
                    zzi = zzht.zzh((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 42:
                    zzi = zzht.zzj((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 43:
                    zzi = zzht.zzf((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 44:
                    zzi = zzht.zzd((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 45:
                    zzi = zzht.zzh((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 46:
                    zzi = zzht.zzi((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 47:
                    zzi = zzht.zzg((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 48:
                    zzi = zzht.zzc((List) unsafe2.getObject(t, j3));
                    if (zzi > 0) {
                        zze = zzfc.zze(i14);
                        zzg = zzfc.zzg(zzi);
                        zzj = zze + zzg + zzi;
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 49:
                    zzb2 = zzht.zzb(i14, (List) unsafe2.getObject(t, j3), zza(i10));
                    i11 += zzb2;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 50:
                    zzb2 = this.zzs.zza(i14, unsafe2.getObject(t, j3), zzb(i10));
                    i11 += zzb2;
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 51:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzb(i14, 0.0d);
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 52:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzj = zzfc.zzb(i14, (float) BitmapDescriptorFactory.HUE_RED);
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 53:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzd(i14, zze(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 54:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zze(i14, zze(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 55:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzf(i14, zzd(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 56:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzg(i14, 0L);
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 57:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzj = zzfc.zzi(i14, 0);
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 58:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzj = zzfc.zzb(i14, true);
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 59:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        if (object2 instanceof zzep) {
                            zzb2 = zzfc.zzc(i14, (zzep) object2);
                        } else {
                            zzb2 = zzfc.zzb(i14, (String) object2);
                        }
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 60:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzht.zza(i14, unsafe2.getObject(t, j3), zza(i10));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 61:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzc(i14, (zzep) unsafe2.getObject(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 62:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzg(i14, zzd(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 63:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzk(i14, zzd(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 64:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzj = zzfc.zzj(i14, 0);
                        i11 += zzj;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 65:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzh(i14, 0L);
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 66:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzh(i14, zzd(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 67:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzf(i14, zze(t, j3));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                case 68:
                    if (zza((zzhf<T>) t, i14, i10)) {
                        zzb2 = zzfc.zzc(i14, (zzhb) unsafe2.getObject(t, j3), zza(i10));
                        i11 += zzb2;
                    }
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
                default:
                    j = 0;
                    i10 += 3;
                    i3 = 1048575;
                    i4 = 1;
            }
            i10 += 3;
            i3 = 1048575;
            i4 = 1;
        }
        int i18 = 0;
        int zza2 = i11 + zza((zzij) this.zzq, (Object) t);
        if (this.zzh) {
            zzfl<?> zza3 = this.zzr.zza(t);
            for (int i19 = 0; i19 < zza3.zza.zzc(); i19++) {
                Map.Entry<?, Object> zzb4 = zza3.zza.zzb(i19);
                i18 += zzfl.zza((zzfn) zzb4.getKey(), zzb4.getValue());
            }
            for (Map.Entry<?, Object> entry : zza3.zza.zzd()) {
                i18 += zzfl.zza((zzfn) entry.getKey(), entry.getValue());
            }
            return zza2 + i18;
        }
        return zza2;
    }

    private static <UT, UB> int zza(zzij<UT, UB> zzijVar, T t) {
        return zzijVar.zzd(zzijVar.zza(t));
    }

    private static List<?> zza(Object obj, long j) {
        return (List) zzip.zzf(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0a2a  */
    @Override // com.google.android.gms.internal.mlkit_common.zzhr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r14, com.google.android.gms.internal.mlkit_common.zzjd r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzhf.zza(java.lang.Object, com.google.android.gms.internal.mlkit_common.zzjd):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0495  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r18, com.google.android.gms.internal.mlkit_common.zzjd r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_common.zzhf.zzb(java.lang.Object, com.google.android.gms.internal.mlkit_common.zzjd):void");
    }

    private final <K, V> void zza(zzjd zzjdVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzjdVar.zza(i, this.zzs.zzc(zzb(i2)), this.zzs.zza(obj));
        }
    }

    private static <UT, UB> void zza(zzij<UT, UB> zzijVar, T t, zzjd zzjdVar) throws IOException {
        zzijVar.zza((zzij<UT, UB>) zzijVar.zza(t), zzjdVar);
    }

    private final zzhr zza(int i) {
        int i2 = (i / 3) << 1;
        zzhr zzhrVar = (zzhr) this.zzd[i2];
        if (zzhrVar != null) {
            return zzhrVar;
        }
        zzhr<T> zza2 = zzhm.zza().zza((Class) ((Class) this.zzd[i2 + 1]));
        this.zzd[i2] = zza2;
        return zza2;
    }

    private final Object zzb(int i) {
        return this.zzd[(i / 3) << 1];
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhr
    public final void zzb(T t) {
        int i;
        int i2 = this.zzm;
        while (true) {
            i = this.zzn;
            if (i2 >= i) {
                break;
            }
            long zzc = zzc(this.zzl[i2]) & 1048575;
            Object zzf = zzip.zzf(t, zzc);
            if (zzf != null) {
                zzip.zza(t, zzc, this.zzs.zzb(zzf));
            }
            i2++;
        }
        int length = this.zzl.length;
        while (i < length) {
            this.zzp.zza(t, this.zzl[i]);
            i++;
        }
        this.zzq.zzb(t);
        if (this.zzh) {
            this.zzr.zzc(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.mlkit_common.zzhr] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.mlkit_common.zzhr] */
    @Override // com.google.android.gms.internal.mlkit_common.zzhr
    public final boolean zzc(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i5 >= this.zzm) {
                return !this.zzh || this.zzr.zza(t).zzf();
            }
            int i6 = this.zzl[i5];
            int i7 = this.zzc[i6];
            int zzc = zzc(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if (((268435456 & zzc) != 0) && !zza(t, i6, i, i2, i10)) {
                return false;
            }
            int i11 = (267386880 & zzc) >>> 20;
            if (i11 == 9 || i11 == 17) {
                if (zza(t, i6, i, i2, i10) && !zza(t, zzc, zza(i6))) {
                    return false;
                }
            } else {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (zza((zzhf<T>) t, i7, i6) && !zza(t, zzc, zza(i6))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zza2 = this.zzs.zza(zzip.zzf(t, zzc & 1048575));
                            if (!zza2.isEmpty()) {
                                if (this.zzs.zzc(zzb(i6)).zzb.zza() == zzja.MESSAGE) {
                                    zzhr<T> zzhrVar = 0;
                                    Iterator<?> it = zza2.values().iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        if (zzhrVar == null) {
                                            zzhrVar = zzhm.zza().zza((Class) next.getClass());
                                        }
                                        boolean zzc2 = zzhrVar.zzc(next);
                                        zzhrVar = zzhrVar;
                                        if (!zzc2) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) zzip.zzf(t, zzc & 1048575);
                if (!list.isEmpty()) {
                    ?? zza3 = zza(i6);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= list.size()) {
                            break;
                        } else if (!zza3.zzc(list.get(i12))) {
                            z = false;
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
                if (!z) {
                    return false;
                }
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzhr zzhrVar) {
        return zzhrVar.zzc(zzip.zzf(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzjd zzjdVar) throws IOException {
        if (obj instanceof String) {
            zzjdVar.zza(i, (String) obj);
        } else {
            zzjdVar.zza(i, (zzep) obj);
        }
    }

    private final int zzc(int i) {
        return this.zzc[i + 1];
    }

    private final int zzd(int i) {
        return this.zzc[i + 2];
    }

    private static <T> double zzb(T t, long j) {
        return ((Double) zzip.zzf(t, j)).doubleValue();
    }

    private static <T> float zzc(T t, long j) {
        return ((Float) zzip.zzf(t, j)).floatValue();
    }

    private static <T> int zzd(T t, long j) {
        return ((Integer) zzip.zzf(t, j)).intValue();
    }

    private static <T> long zze(T t, long j) {
        return ((Long) zzip.zzf(t, j)).longValue();
    }

    private static <T> boolean zzf(T t, long j) {
        return ((Boolean) zzip.zzf(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzhf<T>) t, i) == zza((zzhf<T>) t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zza((zzhf<T>) t, i);
        }
        return (i3 & i4) != 0;
    }

    private final boolean zza(T t, int i) {
        int zzd = zzd(i);
        long j = zzd & 1048575;
        if (j != 1048575) {
            return (zzip.zza(t, j) & (1 << (zzd >>> 20))) != 0;
        }
        int zzc = zzc(i);
        long j2 = zzc & 1048575;
        switch ((zzc & 267386880) >>> 20) {
            case 0:
                return zzip.zze(t, j2) != 0.0d;
            case 1:
                return zzip.zzd(t, j2) != BitmapDescriptorFactory.HUE_RED;
            case 2:
                return zzip.zzb(t, j2) != 0;
            case 3:
                return zzip.zzb(t, j2) != 0;
            case 4:
                return zzip.zza(t, j2) != 0;
            case 5:
                return zzip.zzb(t, j2) != 0;
            case 6:
                return zzip.zza(t, j2) != 0;
            case 7:
                return zzip.zzc(t, j2);
            case 8:
                Object zzf = zzip.zzf(t, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                } else if (zzf instanceof zzep) {
                    return !zzep.zza.equals(zzf);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return zzip.zzf(t, j2) != null;
            case 10:
                return !zzep.zza.equals(zzip.zzf(t, j2));
            case 11:
                return zzip.zza(t, j2) != 0;
            case 12:
                return zzip.zza(t, j2) != 0;
            case 13:
                return zzip.zza(t, j2) != 0;
            case 14:
                return zzip.zzb(t, j2) != 0;
            case 15:
                return zzip.zza(t, j2) != 0;
            case 16:
                return zzip.zzb(t, j2) != 0;
            case 17:
                return zzip.zzf(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzb(T t, int i) {
        int zzd = zzd(i);
        long j = 1048575 & zzd;
        if (j == 1048575) {
            return;
        }
        zzip.zza((Object) t, j, (1 << (zzd >>> 20)) | zzip.zza(t, j));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzip.zza(t, (long) (zzd(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzip.zza((Object) t, zzd(i2) & 1048575, i);
    }
}
