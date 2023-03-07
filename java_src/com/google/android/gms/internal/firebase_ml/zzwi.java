package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzuu;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.telegram.messenger.CharacterCompat;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwi<T> implements zzwu<T> {
    private static final int[] zzbvd = new int[0];
    private static final Unsafe zzbve = zzxs.zzts();
    private final int[] zzbvf;
    private final Object[] zzbvg;
    private final int zzbvh;
    private final int zzbvi;
    private final zzwe zzbvj;
    private final boolean zzbvk;
    private final boolean zzbvl;
    private final boolean zzbvm;
    private final boolean zzbvn;
    private final int[] zzbvo;
    private final int zzbvp;
    private final int zzbvq;
    private final zzwm zzbvr;
    private final zzvo zzbvs;
    private final zzxm<?, ?> zzbvt;
    private final zzul<?> zzbvu;
    private final zzwb zzbvv;

    private zzwi(int[] iArr, Object[] objArr, int i, int i2, zzwe zzweVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzwm zzwmVar, zzvo zzvoVar, zzxm<?, ?> zzxmVar, zzul<?> zzulVar, zzwb zzwbVar) {
        this.zzbvf = iArr;
        this.zzbvg = objArr;
        this.zzbvh = i;
        this.zzbvi = i2;
        this.zzbvl = zzweVar instanceof zzuu;
        this.zzbvm = z;
        this.zzbvk = zzulVar != null && zzulVar.zze(zzweVar);
        this.zzbvn = false;
        this.zzbvo = iArr2;
        this.zzbvp = i3;
        this.zzbvq = i4;
        this.zzbvr = zzwmVar;
        this.zzbvs = zzvoVar;
        this.zzbvt = zzxmVar;
        this.zzbvu = zzulVar;
        this.zzbvj = zzweVar;
        this.zzbvv = zzwbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzwi<T> zza(Class<T> cls, zzwc zzwcVar, zzwm zzwmVar, zzvo zzvoVar, zzxm<?, ?> zzxmVar, zzul<?> zzulVar, zzwb zzwbVar) {
        int i;
        int charAt;
        int charAt2;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr;
        int i6;
        int i7;
        char charAt3;
        int i8;
        char charAt4;
        int i9;
        char charAt5;
        int i10;
        char charAt6;
        int i11;
        char charAt7;
        int i12;
        char charAt8;
        int i13;
        char charAt9;
        int i14;
        char charAt10;
        int i15;
        int i16;
        boolean z;
        int i17;
        zzwv zzwvVar;
        int i18;
        int objectFieldOffset;
        int i19;
        int i20;
        Class<?> cls2;
        String str;
        int i21;
        int i22;
        Field zza;
        int i23;
        char charAt11;
        int i24;
        Field zza2;
        Field zza3;
        int i25;
        char charAt12;
        int i26;
        char charAt13;
        int i27;
        char charAt14;
        int i28;
        char charAt15;
        char charAt16;
        if (zzwcVar instanceof zzwv) {
            zzwv zzwvVar2 = (zzwv) zzwcVar;
            int i29 = 0;
            boolean z2 = zzwvVar2.zzsl() == zzuu.zze.zzbtf;
            String zzsx = zzwvVar2.zzsx();
            int length = zzsx.length();
            int charAt17 = zzsx.charAt(0);
            if (charAt17 >= 55296) {
                int i30 = charAt17 & 8191;
                int i31 = 1;
                int i32 = 13;
                while (true) {
                    i = i31 + 1;
                    charAt16 = zzsx.charAt(i31);
                    if (charAt16 < 55296) {
                        break;
                    }
                    i30 |= (charAt16 & 8191) << i32;
                    i32 += 13;
                    i31 = i;
                }
                charAt17 = i30 | (charAt16 << i32);
            } else {
                i = 1;
            }
            int i33 = i + 1;
            int charAt18 = zzsx.charAt(i);
            if (charAt18 >= 55296) {
                int i34 = charAt18 & 8191;
                int i35 = 13;
                while (true) {
                    i28 = i33 + 1;
                    charAt15 = zzsx.charAt(i33);
                    if (charAt15 < 55296) {
                        break;
                    }
                    i34 |= (charAt15 & 8191) << i35;
                    i35 += 13;
                    i33 = i28;
                }
                charAt18 = i34 | (charAt15 << i35);
                i33 = i28;
            }
            if (charAt18 == 0) {
                iArr = zzbvd;
                i6 = 0;
                i3 = 0;
                charAt = 0;
                i4 = 0;
                charAt2 = 0;
                i5 = 0;
            } else {
                int i36 = i33 + 1;
                int charAt19 = zzsx.charAt(i33);
                if (charAt19 >= 55296) {
                    int i37 = charAt19 & 8191;
                    int i38 = 13;
                    while (true) {
                        i14 = i36 + 1;
                        charAt10 = zzsx.charAt(i36);
                        if (charAt10 < 55296) {
                            break;
                        }
                        i37 |= (charAt10 & 8191) << i38;
                        i38 += 13;
                        i36 = i14;
                    }
                    charAt19 = i37 | (charAt10 << i38);
                    i36 = i14;
                }
                int i39 = i36 + 1;
                int charAt20 = zzsx.charAt(i36);
                if (charAt20 >= 55296) {
                    int i40 = charAt20 & 8191;
                    int i41 = 13;
                    while (true) {
                        i13 = i39 + 1;
                        charAt9 = zzsx.charAt(i39);
                        if (charAt9 < 55296) {
                            break;
                        }
                        i40 |= (charAt9 & 8191) << i41;
                        i41 += 13;
                        i39 = i13;
                    }
                    charAt20 = i40 | (charAt9 << i41);
                    i39 = i13;
                }
                int i42 = i39 + 1;
                charAt = zzsx.charAt(i39);
                if (charAt >= 55296) {
                    int i43 = charAt & 8191;
                    int i44 = 13;
                    while (true) {
                        i12 = i42 + 1;
                        charAt8 = zzsx.charAt(i42);
                        if (charAt8 < 55296) {
                            break;
                        }
                        i43 |= (charAt8 & 8191) << i44;
                        i44 += 13;
                        i42 = i12;
                    }
                    charAt = i43 | (charAt8 << i44);
                    i42 = i12;
                }
                int i45 = i42 + 1;
                int charAt21 = zzsx.charAt(i42);
                if (charAt21 >= 55296) {
                    int i46 = charAt21 & 8191;
                    int i47 = 13;
                    while (true) {
                        i11 = i45 + 1;
                        charAt7 = zzsx.charAt(i45);
                        if (charAt7 < 55296) {
                            break;
                        }
                        i46 |= (charAt7 & 8191) << i47;
                        i47 += 13;
                        i45 = i11;
                    }
                    charAt21 = i46 | (charAt7 << i47);
                    i45 = i11;
                }
                int i48 = i45 + 1;
                charAt2 = zzsx.charAt(i45);
                if (charAt2 >= 55296) {
                    int i49 = charAt2 & 8191;
                    int i50 = 13;
                    while (true) {
                        i10 = i48 + 1;
                        charAt6 = zzsx.charAt(i48);
                        if (charAt6 < 55296) {
                            break;
                        }
                        i49 |= (charAt6 & 8191) << i50;
                        i50 += 13;
                        i48 = i10;
                    }
                    charAt2 = i49 | (charAt6 << i50);
                    i48 = i10;
                }
                int i51 = i48 + 1;
                int charAt22 = zzsx.charAt(i48);
                if (charAt22 >= 55296) {
                    int i52 = charAt22 & 8191;
                    int i53 = 13;
                    while (true) {
                        i9 = i51 + 1;
                        charAt5 = zzsx.charAt(i51);
                        if (charAt5 < 55296) {
                            break;
                        }
                        i52 |= (charAt5 & 8191) << i53;
                        i53 += 13;
                        i51 = i9;
                    }
                    charAt22 = i52 | (charAt5 << i53);
                    i51 = i9;
                }
                int i54 = i51 + 1;
                int charAt23 = zzsx.charAt(i51);
                if (charAt23 >= 55296) {
                    int i55 = charAt23 & 8191;
                    int i56 = i54;
                    int i57 = 13;
                    while (true) {
                        i8 = i56 + 1;
                        charAt4 = zzsx.charAt(i56);
                        if (charAt4 < 55296) {
                            break;
                        }
                        i55 |= (charAt4 & 8191) << i57;
                        i57 += 13;
                        i56 = i8;
                    }
                    charAt23 = i55 | (charAt4 << i57);
                    i2 = i8;
                } else {
                    i2 = i54;
                }
                int i58 = i2 + 1;
                int charAt24 = zzsx.charAt(i2);
                if (charAt24 >= 55296) {
                    int i59 = charAt24 & 8191;
                    int i60 = i58;
                    int i61 = 13;
                    while (true) {
                        i7 = i60 + 1;
                        charAt3 = zzsx.charAt(i60);
                        if (charAt3 < 55296) {
                            break;
                        }
                        i59 |= (charAt3 & 8191) << i61;
                        i61 += 13;
                        i60 = i7;
                    }
                    charAt24 = i59 | (charAt3 << i61);
                    i58 = i7;
                }
                int i62 = (charAt19 << 1) + charAt20;
                i3 = charAt21;
                i4 = i62;
                i5 = charAt24;
                i29 = charAt19;
                i33 = i58;
                int i63 = charAt22;
                iArr = new int[charAt24 + charAt22 + charAt23];
                i6 = i63;
            }
            Unsafe unsafe = zzbve;
            Object[] zzsy = zzwvVar2.zzsy();
            Class<?> cls3 = zzwvVar2.zzsn().getClass();
            int i64 = i33;
            int[] iArr2 = new int[charAt2 * 3];
            Object[] objArr = new Object[charAt2 << 1];
            int i65 = i5 + i6;
            int i66 = i5;
            int i67 = i64;
            int i68 = i65;
            int i69 = 0;
            int i70 = 0;
            while (i67 < length) {
                int i71 = i67 + 1;
                int charAt25 = zzsx.charAt(i67);
                int i72 = length;
                if (charAt25 >= 55296) {
                    int i73 = charAt25 & 8191;
                    int i74 = i71;
                    int i75 = 13;
                    while (true) {
                        i27 = i74 + 1;
                        charAt14 = zzsx.charAt(i74);
                        i15 = i5;
                        if (charAt14 < 55296) {
                            break;
                        }
                        i73 |= (charAt14 & 8191) << i75;
                        i75 += 13;
                        i74 = i27;
                        i5 = i15;
                    }
                    charAt25 = i73 | (charAt14 << i75);
                    i16 = i27;
                } else {
                    i15 = i5;
                    i16 = i71;
                }
                int i76 = i16 + 1;
                int charAt26 = zzsx.charAt(i16);
                if (charAt26 >= 55296) {
                    int i77 = charAt26 & 8191;
                    int i78 = i76;
                    int i79 = 13;
                    while (true) {
                        i26 = i78 + 1;
                        charAt13 = zzsx.charAt(i78);
                        z = z2;
                        if (charAt13 < 55296) {
                            break;
                        }
                        i77 |= (charAt13 & 8191) << i79;
                        i79 += 13;
                        i78 = i26;
                        z2 = z;
                    }
                    charAt26 = i77 | (charAt13 << i79);
                    i17 = i26;
                } else {
                    z = z2;
                    i17 = i76;
                }
                int i80 = charAt26 & 255;
                int i81 = i3;
                if ((charAt26 & 1024) != 0) {
                    iArr[i69] = i70;
                    i69++;
                }
                int i82 = charAt;
                if (i80 >= 51) {
                    int i83 = i17 + 1;
                    int charAt27 = zzsx.charAt(i17);
                    char c = CharacterCompat.MIN_HIGH_SURROGATE;
                    if (charAt27 >= 55296) {
                        int i84 = charAt27 & 8191;
                        int i85 = 13;
                        while (true) {
                            i25 = i83 + 1;
                            charAt12 = zzsx.charAt(i83);
                            if (charAt12 < c) {
                                break;
                            }
                            i84 |= (charAt12 & 8191) << i85;
                            i85 += 13;
                            i83 = i25;
                            c = CharacterCompat.MIN_HIGH_SURROGATE;
                        }
                        charAt27 = i84 | (charAt12 << i85);
                        i83 = i25;
                    }
                    int i86 = i80 - 51;
                    int i87 = i83;
                    if (i86 == 9 || i86 == 17) {
                        objArr[((i70 / 3) << 1) + 1] = zzsy[i4];
                        i4++;
                    } else if (i86 == 12 && (charAt17 & 1) == 1) {
                        objArr[((i70 / 3) << 1) + 1] = zzsy[i4];
                        i4++;
                    }
                    int i88 = charAt27 << 1;
                    Object obj = zzsy[i88];
                    if (obj instanceof Field) {
                        zza2 = (Field) obj;
                    } else {
                        zza2 = zza(cls3, (String) obj);
                        zzsy[i88] = zza2;
                    }
                    zzwvVar = zzwvVar2;
                    String str2 = zzsx;
                    objectFieldOffset = (int) unsafe.objectFieldOffset(zza2);
                    int i89 = i88 + 1;
                    Object obj2 = zzsy[i89];
                    if (obj2 instanceof Field) {
                        zza3 = (Field) obj2;
                    } else {
                        zza3 = zza(cls3, (String) obj2);
                        zzsy[i89] = zza3;
                    }
                    cls2 = cls3;
                    i19 = i4;
                    i17 = i87;
                    str = str2;
                    i22 = 0;
                    i21 = (int) unsafe.objectFieldOffset(zza3);
                    i20 = i29;
                } else {
                    zzwvVar = zzwvVar2;
                    String str3 = zzsx;
                    int i90 = i4 + 1;
                    Field zza4 = zza(cls3, (String) zzsy[i4]);
                    if (i80 == 9 || i80 == 17) {
                        i18 = 1;
                        objArr[((i70 / 3) << 1) + 1] = zza4.getType();
                    } else {
                        if (i80 == 27 || i80 == 49) {
                            i18 = 1;
                            i24 = i90 + 1;
                            objArr[((i70 / 3) << 1) + 1] = zzsy[i90];
                        } else if (i80 == 12 || i80 == 30 || i80 == 44) {
                            i18 = 1;
                            if ((charAt17 & 1) == 1) {
                                i24 = i90 + 1;
                                objArr[((i70 / 3) << 1) + 1] = zzsy[i90];
                            }
                        } else {
                            if (i80 == 50) {
                                int i91 = i66 + 1;
                                iArr[i66] = i70;
                                int i92 = (i70 / 3) << 1;
                                int i93 = i90 + 1;
                                objArr[i92] = zzsy[i90];
                                if ((charAt26 & 2048) != 0) {
                                    i90 = i93 + 1;
                                    objArr[i92 + 1] = zzsy[i93];
                                    i66 = i91;
                                } else {
                                    i90 = i93;
                                    i18 = 1;
                                    i66 = i91;
                                }
                            }
                            i18 = 1;
                        }
                        i90 = i24;
                    }
                    objectFieldOffset = (int) unsafe.objectFieldOffset(zza4);
                    if ((charAt17 & 1) != i18 || i80 > 17) {
                        i19 = i90;
                        i20 = i29;
                        cls2 = cls3;
                        str = str3;
                        i21 = 0;
                        i22 = 0;
                    } else {
                        int i94 = i17 + 1;
                        str = str3;
                        int charAt28 = str.charAt(i17);
                        if (charAt28 >= 55296) {
                            int i95 = charAt28 & 8191;
                            int i96 = 13;
                            while (true) {
                                i23 = i94 + 1;
                                charAt11 = str.charAt(i94);
                                if (charAt11 < 55296) {
                                    break;
                                }
                                i95 |= (charAt11 & 8191) << i96;
                                i96 += 13;
                                i94 = i23;
                            }
                            charAt28 = i95 | (charAt11 << i96);
                            i94 = i23;
                        }
                        int i97 = (i29 << 1) + (charAt28 / 32);
                        Object obj3 = zzsy[i97];
                        i19 = i90;
                        if (obj3 instanceof Field) {
                            zza = (Field) obj3;
                        } else {
                            zza = zza(cls3, (String) obj3);
                            zzsy[i97] = zza;
                        }
                        i20 = i29;
                        cls2 = cls3;
                        i21 = (int) unsafe.objectFieldOffset(zza);
                        i22 = charAt28 % 32;
                        i17 = i94;
                    }
                    if (i80 >= 18 && i80 <= 49) {
                        iArr[i68] = objectFieldOffset;
                        i68++;
                    }
                }
                int i98 = i70 + 1;
                iArr2[i70] = charAt25;
                int i99 = i98 + 1;
                iArr2[i98] = objectFieldOffset | ((charAt26 & 256) != 0 ? 268435456 : 0) | ((charAt26 & 512) != 0 ? 536870912 : 0) | (i80 << 20);
                i70 = i99 + 1;
                iArr2[i99] = (i22 << 20) | i21;
                i29 = i20;
                zzsx = str;
                i67 = i17;
                cls3 = cls2;
                i3 = i81;
                length = i72;
                i5 = i15;
                z2 = z;
                charAt = i82;
                i4 = i19;
                zzwvVar2 = zzwvVar;
            }
            return new zzwi<>(iArr2, objArr, charAt, i3, zzwvVar2.zzsn(), z2, false, iArr, i5, i65, zzwmVar, zzvoVar, zzxmVar, zzulVar, zzwbVar);
        }
        ((zzxj) zzwcVar).zzsl();
        int i100 = zzuu.zze.zzbtf;
        throw new NoSuchMethodError();
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

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final T newInstance() {
        return (T) this.zzbvr.newInstance(this.zzbvj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01bf, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.firebase_ml.zzxs.zzo(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.firebase_ml.zzxs.zzo(r11, r6))) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzww.zzf(com.google.android.gms.internal.firebase_ml.zzxs.zzp(r10, r6), com.google.android.gms.internal.firebase_ml.zzxs.zzp(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006a, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzww.zzf(com.google.android.gms.internal.firebase_ml.zzxs.zzp(r10, r6), com.google.android.gms.internal.firebase_ml.zzxs.zzp(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzl(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzl(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0090, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzk(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzk(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a4, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzl(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzl(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzk(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzk(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c8, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzk(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzk(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00da, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzk(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzk(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f0, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzww.zzf(com.google.android.gms.internal.firebase_ml.zzxs.zzp(r10, r6), com.google.android.gms.internal.firebase_ml.zzxs.zzp(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0106, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzww.zzf(com.google.android.gms.internal.firebase_ml.zzxs.zzp(r10, r6), com.google.android.gms.internal.firebase_ml.zzxs.zzp(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x011c, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzww.zzf(com.google.android.gms.internal.firebase_ml.zzxs.zzp(r10, r6), com.google.android.gms.internal.firebase_ml.zzxs.zzp(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012e, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzm(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzm(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0140, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzk(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzk(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0154, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzl(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzl(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0165, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzk(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzk(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0178, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzl(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzl(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018b, code lost:
        if (com.google.android.gms.internal.firebase_ml.zzxs.zzl(r10, r6) == com.google.android.gms.internal.firebase_ml.zzxs.zzl(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.firebase_ml.zzxs.zzn(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.firebase_ml.zzxs.zzn(r11, r6))) goto L85;
     */
    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzwi.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final int hashCode(T t) {
        int i;
        int zzab;
        int length = this.zzbvf.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int zzdm = zzdm(i3);
            int i4 = this.zzbvf[i3];
            long j = 1048575 & zzdm;
            int i5 = 37;
            switch ((zzdm & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    zzab = zzuw.zzab(Double.doubleToLongBits(zzxs.zzo(t, j)));
                    i2 = i + zzab;
                    break;
                case 1:
                    i = i2 * 53;
                    zzab = Float.floatToIntBits(zzxs.zzn(t, j));
                    i2 = i + zzab;
                    break;
                case 2:
                    i = i2 * 53;
                    zzab = zzuw.zzab(zzxs.zzl(t, j));
                    i2 = i + zzab;
                    break;
                case 3:
                    i = i2 * 53;
                    zzab = zzuw.zzab(zzxs.zzl(t, j));
                    i2 = i + zzab;
                    break;
                case 4:
                    i = i2 * 53;
                    zzab = zzxs.zzk(t, j);
                    i2 = i + zzab;
                    break;
                case 5:
                    i = i2 * 53;
                    zzab = zzuw.zzab(zzxs.zzl(t, j));
                    i2 = i + zzab;
                    break;
                case 6:
                    i = i2 * 53;
                    zzab = zzxs.zzk(t, j);
                    i2 = i + zzab;
                    break;
                case 7:
                    i = i2 * 53;
                    zzab = zzuw.zzan(zzxs.zzm(t, j));
                    i2 = i + zzab;
                    break;
                case 8:
                    i = i2 * 53;
                    zzab = ((String) zzxs.zzp(t, j)).hashCode();
                    i2 = i + zzab;
                    break;
                case 9:
                    Object zzp = zzxs.zzp(t, j);
                    if (zzp != null) {
                        i5 = zzp.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zzab = zzxs.zzp(t, j).hashCode();
                    i2 = i + zzab;
                    break;
                case 11:
                    i = i2 * 53;
                    zzab = zzxs.zzk(t, j);
                    i2 = i + zzab;
                    break;
                case 12:
                    i = i2 * 53;
                    zzab = zzxs.zzk(t, j);
                    i2 = i + zzab;
                    break;
                case 13:
                    i = i2 * 53;
                    zzab = zzxs.zzk(t, j);
                    i2 = i + zzab;
                    break;
                case 14:
                    i = i2 * 53;
                    zzab = zzuw.zzab(zzxs.zzl(t, j));
                    i2 = i + zzab;
                    break;
                case 15:
                    i = i2 * 53;
                    zzab = zzxs.zzk(t, j);
                    i2 = i + zzab;
                    break;
                case 16:
                    i = i2 * 53;
                    zzab = zzuw.zzab(zzxs.zzl(t, j));
                    i2 = i + zzab;
                    break;
                case 17:
                    Object zzp2 = zzxs.zzp(t, j);
                    if (zzp2 != null) {
                        i5 = zzp2.hashCode();
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
                    zzab = zzxs.zzp(t, j).hashCode();
                    i2 = i + zzab;
                    break;
                case 50:
                    i = i2 * 53;
                    zzab = zzxs.zzp(t, j).hashCode();
                    i2 = i + zzab;
                    break;
                case 51:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzuw.zzab(Double.doubleToLongBits(zzf(t, j)));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = Float.floatToIntBits(zzg(t, j));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzuw.zzab(zzi(t, j));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzuw.zzab(zzi(t, j));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzh(t, j);
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzuw.zzab(zzi(t, j));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzh(t, j);
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzuw.zzan(zzj(t, j));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = ((String) zzxs.zzp(t, j)).hashCode();
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzxs.zzp(t, j).hashCode();
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzxs.zzp(t, j).hashCode();
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzh(t, j);
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzh(t, j);
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzh(t, j);
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzuw.zzab(zzi(t, j));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzh(t, j);
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzuw.zzab(zzi(t, j));
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zza((zzwi<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zzab = zzxs.zzp(t, j).hashCode();
                        i2 = i + zzab;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzbvt.zzae(t).hashCode();
        return this.zzbvk ? (hashCode * 53) + this.zzbvu.zzo(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final void zze(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzbvf.length; i += 3) {
            int zzdm = zzdm(i);
            long j = 1048575 & zzdm;
            int i2 = this.zzbvf[i];
            switch ((zzdm & 267386880) >>> 20) {
                case 0:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza(t, j, zzxs.zzo(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzn(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzl(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzl(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzk(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzl(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzk(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza(t, j, zzxs.zzm(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza(t, j, zzxs.zzp(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza(t, j, zzxs.zzp(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzk(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzk(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzk(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzl(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzk(t2, j));
                        zzb((zzwi<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza((zzwi<T>) t2, i)) {
                        zzxs.zza((Object) t, j, zzxs.zzl(t2, j));
                        zzb((zzwi<T>) t, i);
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
                    this.zzbvs.zza(t, t2, j);
                    break;
                case 50:
                    zzww.zza(this.zzbvv, t, t2, j);
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
                    if (zza((zzwi<T>) t2, i2, i)) {
                        zzxs.zza(t, j, zzxs.zzp(t2, j));
                        zzb((zzwi<T>) t, i2, i);
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
                    if (zza((zzwi<T>) t2, i2, i)) {
                        zzxs.zza(t, j, zzxs.zzp(t2, j));
                        zzb((zzwi<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        if (this.zzbvm) {
            return;
        }
        zzww.zza(this.zzbvt, t, t2);
        if (this.zzbvk) {
            zzww.zza(this.zzbvu, t, t2);
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzdm = zzdm(i) & 1048575;
        if (zza((zzwi<T>) t2, i)) {
            Object zzp = zzxs.zzp(t, zzdm);
            Object zzp2 = zzxs.zzp(t2, zzdm);
            if (zzp != null && zzp2 != null) {
                zzxs.zza(t, zzdm, zzuw.zzc(zzp, zzp2));
                zzb((zzwi<T>) t, i);
            } else if (zzp2 != null) {
                zzxs.zza(t, zzdm, zzp2);
                zzb((zzwi<T>) t, i);
            }
        }
    }

    private final void zzb(T t, T t2, int i) {
        int zzdm = zzdm(i);
        int i2 = this.zzbvf[i];
        long j = zzdm & 1048575;
        if (zza((zzwi<T>) t2, i2, i)) {
            Object zzp = zzxs.zzp(t, j);
            Object zzp2 = zzxs.zzp(t2, j);
            if (zzp != null && zzp2 != null) {
                zzxs.zza(t, j, zzuw.zzc(zzp, zzp2));
                zzb((zzwi<T>) t, i2, i);
            } else if (zzp2 != null) {
                zzxs.zza(t, j, zzp2);
                zzb((zzwi<T>) t, i2, i);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final int zzaa(T t) {
        int i;
        int i2;
        long j;
        int zzd;
        int zzc;
        int zzq;
        int zzv;
        int zzt;
        int zzcv;
        int zzcx;
        int zzb;
        int zzt2;
        int zzcv2;
        int zzcx2;
        int i3 = 267386880;
        int i4 = 1;
        if (this.zzbvm) {
            Unsafe unsafe = zzbve;
            int i5 = 0;
            int i6 = 0;
            while (i5 < this.zzbvf.length) {
                int zzdm = zzdm(i5);
                int i7 = (zzdm & i3) >>> 20;
                int i8 = this.zzbvf[i5];
                long j2 = zzdm & 1048575;
                int i9 = (i7 < zzur.zzbrj.m776id() || i7 > zzur.zzbrw.m776id()) ? 0 : this.zzbvf[i5 + 2] & 1048575;
                switch (i7) {
                    case 0:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzb(i8, 0.0d);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 1:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzb(i8, (float) BitmapDescriptorFactory.HUE_RED);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 2:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzd(i8, zzxs.zzl(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 3:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zze(i8, zzxs.zzl(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 4:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzm(i8, zzxs.zzk(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 5:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzg(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 6:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzp(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 7:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzc(i8, true);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 8:
                        if (zza((zzwi<T>) t, i5)) {
                            Object zzp = zzxs.zzp(t, j2);
                            if (zzp instanceof zztn) {
                                zzb = zzue.zzc(i8, (zztn) zzp);
                                break;
                            } else {
                                zzb = zzue.zzc(i8, (String) zzp);
                                break;
                            }
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 9:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzww.zzc(i8, zzxs.zzp(t, j2), zzdj(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 10:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzc(i8, (zztn) zzxs.zzp(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 11:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzn(i8, zzxs.zzk(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 12:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzr(i8, zzxs.zzk(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 13:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzq(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 14:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzh(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 15:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzo(i8, zzxs.zzk(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 16:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzf(i8, zzxs.zzl(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 17:
                        if (zza((zzwi<T>) t, i5)) {
                            zzb = zzue.zzc(i8, (zzwe) zzxs.zzp(t, j2), zzdj(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 18:
                        zzb = zzww.zzw(i8, zze(t, j2), false);
                        break;
                    case 19:
                        zzb = zzww.zzv(i8, zze(t, j2), false);
                        break;
                    case 20:
                        zzb = zzww.zzo(i8, zze(t, j2), false);
                        break;
                    case 21:
                        zzb = zzww.zzp(i8, zze(t, j2), false);
                        break;
                    case 22:
                        zzb = zzww.zzs(i8, zze(t, j2), false);
                        break;
                    case 23:
                        zzb = zzww.zzw(i8, zze(t, j2), false);
                        break;
                    case 24:
                        zzb = zzww.zzv(i8, zze(t, j2), false);
                        break;
                    case 25:
                        zzb = zzww.zzx(i8, zze(t, j2), false);
                        break;
                    case 26:
                        zzb = zzww.zzc(i8, zze(t, j2));
                        break;
                    case 27:
                        zzb = zzww.zzc(i8, zze(t, j2), zzdj(i5));
                        break;
                    case 28:
                        zzb = zzww.zzd(i8, zze(t, j2));
                        break;
                    case 29:
                        zzb = zzww.zzt(i8, zze(t, j2), false);
                        break;
                    case 30:
                        zzb = zzww.zzr(i8, zze(t, j2), false);
                        break;
                    case 31:
                        zzb = zzww.zzv(i8, zze(t, j2), false);
                        break;
                    case 32:
                        zzb = zzww.zzw(i8, zze(t, j2), false);
                        break;
                    case 33:
                        zzb = zzww.zzu(i8, zze(t, j2), false);
                        break;
                    case 34:
                        zzb = zzww.zzq(i8, zze(t, j2), false);
                        break;
                    case 35:
                        zzt2 = zzww.zzt((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 36:
                        zzt2 = zzww.zzs((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 37:
                        zzt2 = zzww.zzl((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 38:
                        zzt2 = zzww.zzm((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 39:
                        zzt2 = zzww.zzp((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 40:
                        zzt2 = zzww.zzt((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 41:
                        zzt2 = zzww.zzs((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 42:
                        zzt2 = zzww.zzu((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 43:
                        zzt2 = zzww.zzq((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 44:
                        zzt2 = zzww.zzo((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 45:
                        zzt2 = zzww.zzs((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 46:
                        zzt2 = zzww.zzt((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 47:
                        zzt2 = zzww.zzr((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 48:
                        zzt2 = zzww.zzn((List) unsafe.getObject(t, j2));
                        if (zzt2 > 0) {
                            if (this.zzbvn) {
                                unsafe.putInt(t, i9, zzt2);
                            }
                            zzcv2 = zzue.zzcv(i8);
                            zzcx2 = zzue.zzcx(zzt2);
                            zzb = zzcv2 + zzcx2 + zzt2;
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 49:
                        zzb = zzww.zzd(i8, zze(t, j2), zzdj(i5));
                        break;
                    case 50:
                        zzb = this.zzbvv.zzd(i8, zzxs.zzp(t, j2), zzdk(i5));
                        break;
                    case 51:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzb(i8, 0.0d);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 52:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzb(i8, (float) BitmapDescriptorFactory.HUE_RED);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 53:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzd(i8, zzi(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 54:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zze(i8, zzi(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 55:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzm(i8, zzh(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 56:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzg(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 57:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzp(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 58:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzc(i8, true);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 59:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            Object zzp2 = zzxs.zzp(t, j2);
                            if (zzp2 instanceof zztn) {
                                zzb = zzue.zzc(i8, (zztn) zzp2);
                                break;
                            } else {
                                zzb = zzue.zzc(i8, (String) zzp2);
                                break;
                            }
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 60:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzww.zzc(i8, zzxs.zzp(t, j2), zzdj(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 61:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzc(i8, (zztn) zzxs.zzp(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 62:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzn(i8, zzh(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 63:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzr(i8, zzh(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 64:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzq(i8, 0);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 65:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzh(i8, 0L);
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 66:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzo(i8, zzh(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 67:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzf(i8, zzi(t, j2));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    case 68:
                        if (zza((zzwi<T>) t, i8, i5)) {
                            zzb = zzue.zzc(i8, (zzwe) zzxs.zzp(t, j2), zzdj(i5));
                            break;
                        } else {
                            continue;
                            i5 += 3;
                            i3 = 267386880;
                        }
                    default:
                        i5 += 3;
                        i3 = 267386880;
                }
                i6 += zzb;
                i5 += 3;
                i3 = 267386880;
            }
            return i6 + zza(this.zzbvt, t);
        }
        Unsafe unsafe2 = zzbve;
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < this.zzbvf.length) {
            int zzdm2 = zzdm(i11);
            int[] iArr = this.zzbvf;
            int i14 = iArr[i11];
            int i15 = (zzdm2 & 267386880) >>> 20;
            if (i15 <= 17) {
                int i16 = iArr[i11 + 2];
                int i17 = i16 & 1048575;
                i2 = i4 << (i16 >>> 20);
                if (i17 != i10) {
                    i13 = unsafe2.getInt(t, i17);
                    i10 = i17;
                }
                i = i16;
            } else {
                i = (!this.zzbvn || i15 < zzur.zzbrj.m776id() || i15 > zzur.zzbrw.m776id()) ? 0 : this.zzbvf[i11 + 2] & 1048575;
                i2 = 0;
            }
            long j3 = zzdm2 & 1048575;
            switch (i15) {
                case 0:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        i12 += zzue.zzb(i14, 0.0d);
                        break;
                    }
                    break;
                case 1:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        i12 += zzue.zzb(i14, (float) BitmapDescriptorFactory.HUE_RED);
                        break;
                    }
                case 2:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        zzd = zzue.zzd(i14, unsafe2.getLong(t, j3));
                        i12 += zzd;
                    }
                    break;
                case 3:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        zzd = zzue.zze(i14, unsafe2.getLong(t, j3));
                        i12 += zzd;
                    }
                    break;
                case 4:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        zzd = zzue.zzm(i14, unsafe2.getInt(t, j3));
                        i12 += zzd;
                    }
                    break;
                case 5:
                    j = 0;
                    if ((i13 & i2) != 0) {
                        zzd = zzue.zzg(i14, 0L);
                        i12 += zzd;
                    }
                    break;
                case 6:
                    if ((i13 & i2) != 0) {
                        i12 += zzue.zzp(i14, 0);
                        j = 0;
                        break;
                    }
                    j = 0;
                case 7:
                    if ((i13 & i2) != 0) {
                        i12 += zzue.zzc(i14, true);
                        j = 0;
                        break;
                    }
                    j = 0;
                case 8:
                    if ((i13 & i2) != 0) {
                        Object object = unsafe2.getObject(t, j3);
                        if (object instanceof zztn) {
                            zzc = zzue.zzc(i14, (zztn) object);
                        } else {
                            zzc = zzue.zzc(i14, (String) object);
                        }
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 9:
                    if ((i13 & i2) != 0) {
                        zzc = zzww.zzc(i14, unsafe2.getObject(t, j3), zzdj(i11));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 10:
                    if ((i13 & i2) != 0) {
                        zzc = zzue.zzc(i14, (zztn) unsafe2.getObject(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 11:
                    if ((i13 & i2) != 0) {
                        zzc = zzue.zzn(i14, unsafe2.getInt(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 12:
                    if ((i13 & i2) != 0) {
                        zzc = zzue.zzr(i14, unsafe2.getInt(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 13:
                    if ((i13 & i2) != 0) {
                        zzq = zzue.zzq(i14, 0);
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 14:
                    if ((i13 & i2) != 0) {
                        zzc = zzue.zzh(i14, 0L);
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 15:
                    if ((i13 & i2) != 0) {
                        zzc = zzue.zzo(i14, unsafe2.getInt(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 16:
                    if ((i13 & i2) != 0) {
                        zzc = zzue.zzf(i14, unsafe2.getLong(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 17:
                    if ((i13 & i2) != 0) {
                        zzc = zzue.zzc(i14, (zzwe) unsafe2.getObject(t, j3), zzdj(i11));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 18:
                    zzc = zzww.zzw(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzc;
                    j = 0;
                    break;
                case 19:
                    zzv = zzww.zzv(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 20:
                    zzv = zzww.zzo(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 21:
                    zzv = zzww.zzp(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 22:
                    zzv = zzww.zzs(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 23:
                    zzv = zzww.zzw(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 24:
                    zzv = zzww.zzv(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 25:
                    zzv = zzww.zzx(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 26:
                    zzc = zzww.zzc(i14, (List) unsafe2.getObject(t, j3));
                    i12 += zzc;
                    j = 0;
                    break;
                case 27:
                    zzc = zzww.zzc(i14, (List<?>) unsafe2.getObject(t, j3), zzdj(i11));
                    i12 += zzc;
                    j = 0;
                    break;
                case 28:
                    zzc = zzww.zzd(i14, (List) unsafe2.getObject(t, j3));
                    i12 += zzc;
                    j = 0;
                    break;
                case 29:
                    zzc = zzww.zzt(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzc;
                    j = 0;
                    break;
                case 30:
                    zzv = zzww.zzr(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 31:
                    zzv = zzww.zzv(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 32:
                    zzv = zzww.zzw(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 33:
                    zzv = zzww.zzu(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 34:
                    zzv = zzww.zzq(i14, (List) unsafe2.getObject(t, j3), false);
                    i12 += zzv;
                    j = 0;
                    break;
                case 35:
                    zzt = zzww.zzt((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 36:
                    zzt = zzww.zzs((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 37:
                    zzt = zzww.zzl((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 38:
                    zzt = zzww.zzm((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 39:
                    zzt = zzww.zzp((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 40:
                    zzt = zzww.zzt((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 41:
                    zzt = zzww.zzs((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 42:
                    zzt = zzww.zzu((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 43:
                    zzt = zzww.zzq((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 44:
                    zzt = zzww.zzo((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 45:
                    zzt = zzww.zzs((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 46:
                    zzt = zzww.zzt((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 47:
                    zzt = zzww.zzr((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 48:
                    zzt = zzww.zzn((List) unsafe2.getObject(t, j3));
                    if (zzt > 0) {
                        if (this.zzbvn) {
                            unsafe2.putInt(t, i, zzt);
                        }
                        zzcv = zzue.zzcv(i14);
                        zzcx = zzue.zzcx(zzt);
                        zzq = zzcv + zzcx + zzt;
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 49:
                    zzc = zzww.zzd(i14, (List) unsafe2.getObject(t, j3), zzdj(i11));
                    i12 += zzc;
                    j = 0;
                    break;
                case 50:
                    zzc = this.zzbvv.zzd(i14, unsafe2.getObject(t, j3), zzdk(i11));
                    i12 += zzc;
                    j = 0;
                    break;
                case 51:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzb(i14, 0.0d);
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 52:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzq = zzue.zzb(i14, (float) BitmapDescriptorFactory.HUE_RED);
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 53:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzd(i14, zzi(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 54:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zze(i14, zzi(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 55:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzm(i14, zzh(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 56:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzg(i14, 0L);
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 57:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzq = zzue.zzp(i14, 0);
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 58:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzq = zzue.zzc(i14, true);
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 59:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        Object object2 = unsafe2.getObject(t, j3);
                        if (object2 instanceof zztn) {
                            zzc = zzue.zzc(i14, (zztn) object2);
                        } else {
                            zzc = zzue.zzc(i14, (String) object2);
                        }
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 60:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzww.zzc(i14, unsafe2.getObject(t, j3), zzdj(i11));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 61:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzc(i14, (zztn) unsafe2.getObject(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 62:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzn(i14, zzh(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 63:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzr(i14, zzh(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 64:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzq = zzue.zzq(i14, 0);
                        i12 += zzq;
                    }
                    j = 0;
                    break;
                case 65:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzh(i14, 0L);
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 66:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzo(i14, zzh(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 67:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzf(i14, zzi(t, j3));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                case 68:
                    if (zza((zzwi<T>) t, i14, i11)) {
                        zzc = zzue.zzc(i14, (zzwe) unsafe2.getObject(t, j3), zzdj(i11));
                        i12 += zzc;
                    }
                    j = 0;
                    break;
                default:
                    j = 0;
                    break;
            }
            i11 += 3;
            i4 = 1;
        }
        int i18 = 0;
        int zza = i12 + zza(this.zzbvt, t);
        if (this.zzbvk) {
            zzum<?> zzo = this.zzbvu.zzo(t);
            for (int i19 = 0; i19 < zzo.zzbpq.zzte(); i19++) {
                Map.Entry<?, Object> zzdq = zzo.zzbpq.zzdq(i19);
                i18 += zzum.zzb((zzuo) zzdq.getKey(), zzdq.getValue());
            }
            for (Map.Entry<?, Object> entry : zzo.zzbpq.zztf()) {
                i18 += zzum.zzb((zzuo) entry.getKey(), entry.getValue());
            }
            return zza + i18;
        }
        return zza;
    }

    private static <UT, UB> int zza(zzxm<UT, UB> zzxmVar, T t) {
        return zzxmVar.zzaa(zzxmVar.zzae(t));
    }

    private static List<?> zze(Object obj, long j) {
        return (List) zzxs.zzp(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0a2a  */
    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r14, com.google.android.gms.internal.firebase_ml.zzyj r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzwi.zza(java.lang.Object, com.google.android.gms.internal.firebase_ml.zzyj):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0496  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r19, com.google.android.gms.internal.firebase_ml.zzyj r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzwi.zzb(java.lang.Object, com.google.android.gms.internal.firebase_ml.zzyj):void");
    }

    private final <K, V> void zza(zzyj zzyjVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzyjVar.zza(i, this.zzbvv.zzv(zzdk(i2)), this.zzbvv.zzw(obj));
        }
    }

    private static <UT, UB> void zza(zzxm<UT, UB> zzxmVar, T t, zzyj zzyjVar) throws IOException {
        zzxmVar.zza(zzxmVar.zzae(t), zzyjVar);
    }

    private static zzxp zzab(Object obj) {
        zzuu zzuuVar = (zzuu) obj;
        zzxp zzxpVar = zzuuVar.zzbso;
        if (zzxpVar == zzxp.zztn()) {
            zzxp zzto = zzxp.zzto();
            zzuuVar.zzbso = zzto;
            return zzto;
        }
        return zzxpVar;
    }

    private static int zza(byte[] bArr, int i, int i2, zzyd zzydVar, Class<?> cls, zztm zztmVar) throws IOException {
        switch (zzwl.zzbpx[zzydVar.ordinal()]) {
            case 1:
                int zzb = zztj.zzb(bArr, i, zztmVar);
                zztmVar.zzbor = Boolean.valueOf(zztmVar.zzboq != 0);
                return zzb;
            case 2:
                return zztj.zze(bArr, i, zztmVar);
            case 3:
                zztmVar.zzbor = Double.valueOf(zztj.zzc(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zztmVar.zzbor = Integer.valueOf(zztj.zza(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zztmVar.zzbor = Long.valueOf(zztj.zzb(bArr, i));
                return i + 8;
            case 8:
                zztmVar.zzbor = Float.valueOf(zztj.zzd(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int zza = zztj.zza(bArr, i, zztmVar);
                zztmVar.zzbor = Integer.valueOf(zztmVar.zzbop);
                return zza;
            case 12:
            case 13:
                int zzb2 = zztj.zzb(bArr, i, zztmVar);
                zztmVar.zzbor = Long.valueOf(zztmVar.zzboq);
                return zzb2;
            case 14:
                return zztj.zza(zzwt.zzsw().zzk(cls), bArr, i, i2, zztmVar);
            case 15:
                int zza2 = zztj.zza(bArr, i, zztmVar);
                zztmVar.zzbor = Integer.valueOf(zztz.zzcq(zztmVar.zzbop));
                return zza2;
            case 16:
                int zzb3 = zztj.zzb(bArr, i, zztmVar);
                zztmVar.zzbor = Long.valueOf(zztz.zzr(zztmVar.zzboq));
                return zzb3;
            case 17:
                return zztj.zzd(bArr, i, zztmVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01e8  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x0233 -> B:116:0x0234). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x016b -> B:67:0x016c). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x01e5 -> B:96:0x01e6). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.android.gms.internal.firebase_ml.zztm r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1126
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzwi.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.firebase_ml.zztm):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zztm zztmVar) throws IOException {
        Unsafe unsafe = zzbve;
        Object zzdk = zzdk(i3);
        Object object = unsafe.getObject(t, j);
        if (this.zzbvv.zzx(object)) {
            Object zzz = this.zzbvv.zzz(zzdk);
            this.zzbvv.zzd(zzz, object);
            unsafe.putObject(t, j, zzz);
            object = zzz;
        }
        zzvz<?, ?> zzv = this.zzbvv.zzv(zzdk);
        Map<?, ?> zzu = this.zzbvv.zzu(object);
        int zza = zztj.zza(bArr, i, zztmVar);
        int i4 = zztmVar.zzbop;
        if (i4 < 0 || i4 > i2 - zza) {
            throw zzve.zzrt();
        }
        int i5 = i4 + zza;
        Object obj = (K) zzv.zzbuy;
        Object obj2 = (V) zzv.zzbva;
        while (zza < i5) {
            int i6 = zza + 1;
            int i7 = bArr[zza];
            if (i7 < 0) {
                i6 = zztj.zza(i7, bArr, i6, zztmVar);
                i7 = zztmVar.zzbop;
            }
            int i8 = i6;
            int i9 = i7 >>> 3;
            int i10 = i7 & 7;
            if (i9 == 1) {
                if (i10 == zzv.zzbux.zztx()) {
                    zza = zza(bArr, i8, i2, zzv.zzbux, (Class<?>) null, zztmVar);
                    obj = (K) zztmVar.zzbor;
                } else {
                    zza = zztj.zza(i7, bArr, i8, i2, zztmVar);
                }
            } else {
                if (i9 == 2 && i10 == zzv.zzbuz.zztx()) {
                    zza = zza(bArr, i8, i2, zzv.zzbuz, zzv.zzbva.getClass(), zztmVar);
                    obj2 = zztmVar.zzbor;
                }
                zza = zztj.zza(i7, bArr, i8, i2, zztmVar);
            }
        }
        if (zza != i5) {
            throw zzve.zzrx();
        }
        zzu.put(obj, obj2);
        return i5;
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zztm zztmVar) throws IOException {
        int zzb;
        Unsafe unsafe = zzbve;
        long j2 = this.zzbvf[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zztj.zzc(bArr, i)));
                    zzb = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zztj.zzd(bArr, i)));
                    zzb = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 53:
            case 54:
                if (i5 == 0) {
                    zzb = zztj.zzb(bArr, i, zztmVar);
                    unsafe.putObject(t, j, Long.valueOf(zztmVar.zzboq));
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 55:
            case 62:
                if (i5 == 0) {
                    zzb = zztj.zza(bArr, i, zztmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zztmVar.zzbop));
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zztj.zzb(bArr, i)));
                    zzb = i + 8;
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zztj.zza(bArr, i)));
                    zzb = i + 4;
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 58:
                if (i5 == 0) {
                    zzb = zztj.zzb(bArr, i, zztmVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zztmVar.zzboq != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 59:
                if (i5 == 2) {
                    int zza = zztj.zza(bArr, i, zztmVar);
                    int i9 = zztmVar.zzbop;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzxv.zzf(bArr, zza, zza + i9)) {
                        throw zzve.zzry();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, zza, i9, zzuw.UTF_8));
                        zza += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    return zza;
                }
                return i;
            case 60:
                if (i5 == 2) {
                    int zza2 = zztj.zza(zzdj(i8), bArr, i, i2, zztmVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zztmVar.zzbor);
                    } else {
                        unsafe.putObject(t, j, zzuw.zzc(object, zztmVar.zzbor));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                return i;
            case 61:
                if (i5 == 2) {
                    zzb = zztj.zze(bArr, i, zztmVar);
                    unsafe.putObject(t, j, zztmVar.zzbor);
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 63:
                if (i5 == 0) {
                    int zza3 = zztj.zza(bArr, i, zztmVar);
                    int i10 = zztmVar.zzbop;
                    zzvb zzdl = zzdl(i8);
                    if (zzdl == null || zzdl.zzb(i10)) {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        zzb = zza3;
                        unsafe.putInt(t, j2, i4);
                        return zzb;
                    }
                    zzab(t).zzb(i3, Long.valueOf(i10));
                    return zza3;
                }
                return i;
            case 66:
                if (i5 == 0) {
                    zzb = zztj.zza(bArr, i, zztmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zztz.zzcq(zztmVar.zzbop)));
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 67:
                if (i5 == 0) {
                    zzb = zztj.zzb(bArr, i, zztmVar);
                    unsafe.putObject(t, j, Long.valueOf(zztz.zzr(zztmVar.zzboq)));
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            case 68:
                if (i5 == 3) {
                    zzb = zztj.zza(zzdj(i8), bArr, i, i2, (i3 & (-8)) | 4, zztmVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zztmVar.zzbor);
                    } else {
                        unsafe.putObject(t, j, zzuw.zzc(object2, zztmVar.zzbor));
                    }
                    unsafe.putInt(t, j2, i4);
                    return zzb;
                }
                return i;
            default:
                return i;
        }
    }

    private final zzwu zzdj(int i) {
        int i2 = (i / 3) << 1;
        zzwu zzwuVar = (zzwu) this.zzbvg[i2];
        if (zzwuVar != null) {
            return zzwuVar;
        }
        zzwu<T> zzk = zzwt.zzsw().zzk((Class) this.zzbvg[i2 + 1]);
        this.zzbvg[i2] = zzk;
        return zzk;
    }

    private final Object zzdk(int i) {
        return this.zzbvg[(i / 3) << 1];
    }

    private final zzvb zzdl(int i) {
        return (zzvb) this.zzbvg[((i / 3) << 1) + 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zza(T t, byte[] bArr, int i, int i2, int i3, zztm zztmVar) throws IOException {
        Unsafe unsafe;
        int i4;
        T t2;
        zzwi<T> zzwiVar;
        int i5;
        int i6;
        int i7;
        int i8;
        zzvb zzdl;
        byte b;
        int i9;
        int zzdo;
        int i10;
        int i11;
        int i12;
        T t3;
        zztm zztmVar2;
        int i13;
        int i14;
        int i15;
        zztm zztmVar3;
        int i16;
        zztm zztmVar4;
        int i17;
        int i18;
        zztm zztmVar5;
        int i19;
        int i20;
        int i21;
        zzwi<T> zzwiVar2 = this;
        T t4 = t;
        byte[] bArr2 = bArr;
        int i22 = i2;
        int i23 = i3;
        zztm zztmVar6 = zztmVar;
        Unsafe unsafe2 = zzbve;
        int i24 = i;
        int i25 = -1;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = -1;
        while (true) {
            if (i24 < i22) {
                int i30 = i24 + 1;
                byte b2 = bArr2[i24];
                if (b2 < 0) {
                    i9 = zztj.zza(b2, bArr2, i30, zztmVar6);
                    b = zztmVar6.zzbop;
                } else {
                    b = b2;
                    i9 = i30;
                }
                int i31 = b >>> 3;
                int i32 = b & 7;
                if (i31 > i25) {
                    zzdo = zzwiVar2.zzv(i31, i26 / 3);
                } else {
                    zzdo = zzwiVar2.zzdo(i31);
                }
                int i33 = zzdo;
                if (i33 == -1) {
                    i10 = i31;
                    i11 = i9;
                    i6 = b;
                    unsafe = unsafe2;
                    i4 = i23;
                    i12 = 0;
                } else {
                    int[] iArr = zzwiVar2.zzbvf;
                    int i34 = iArr[i33 + 1];
                    int i35 = (i34 & 267386880) >>> 20;
                    int i36 = b;
                    long j = i34 & 1048575;
                    if (i35 <= 17) {
                        int i37 = iArr[i33 + 2];
                        int i38 = 1 << (i37 >>> 20);
                        int i39 = i37 & 1048575;
                        if (i39 != i29) {
                            if (i29 != -1) {
                                unsafe2.putInt(t4, i29, i28);
                            }
                            i28 = unsafe2.getInt(t4, i39);
                            i29 = i39;
                        }
                        switch (i35) {
                            case 0:
                                i13 = i33;
                                i14 = i31;
                                i16 = i29;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar4 = zztmVar;
                                i17 = i9;
                                if (i32 == 1) {
                                    zzxs.zza(t4, j, zztj.zzc(bArr2, i17));
                                    i24 = i17 + 8;
                                    i28 |= i38;
                                    i29 = i16;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar4;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 1:
                                i13 = i33;
                                i14 = i31;
                                i16 = i29;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar4 = zztmVar;
                                i17 = i9;
                                if (i32 == 5) {
                                    zzxs.zza((Object) t4, j, zztj.zzd(bArr2, i17));
                                    i24 = i17 + 4;
                                    i28 |= i38;
                                    i29 = i16;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar4;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 2:
                            case 3:
                                i13 = i33;
                                i14 = i31;
                                i16 = i29;
                                i15 = i36;
                                bArr2 = bArr;
                                i17 = i9;
                                if (i32 == 0) {
                                    int zzb = zztj.zzb(bArr2, i17, zztmVar);
                                    unsafe2.putLong(t, j, zztmVar.zzboq);
                                    i28 |= i38;
                                    i24 = zzb;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar;
                                    i29 = i16;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 4:
                            case 11:
                                i13 = i33;
                                i14 = i31;
                                i16 = i29;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar4 = zztmVar;
                                i17 = i9;
                                if (i32 == 0) {
                                    i24 = zztj.zza(bArr2, i17, zztmVar4);
                                    unsafe2.putInt(t4, j, zztmVar4.zzbop);
                                    i28 |= i38;
                                    i29 = i16;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar4;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 5:
                            case 14:
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar4 = zztmVar;
                                if (i32 == 1) {
                                    i16 = i29;
                                    i17 = i9;
                                    unsafe2.putLong(t, j, zztj.zzb(bArr2, i9));
                                    i24 = i17 + 8;
                                    i28 |= i38;
                                    i29 = i16;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar4;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 6:
                            case 13:
                                i18 = i2;
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar5 = zztmVar;
                                if (i32 == 5) {
                                    unsafe2.putInt(t4, j, zztj.zza(bArr2, i9));
                                    i24 = i9 + 4;
                                    i28 |= i38;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar5;
                                    i23 = i3;
                                    i22 = i18;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 7:
                                i18 = i2;
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar5 = zztmVar;
                                if (i32 == 0) {
                                    int zzb2 = zztj.zzb(bArr2, i9, zztmVar5);
                                    zzxs.zza(t4, j, zztmVar5.zzboq != 0);
                                    i28 |= i38;
                                    i24 = zzb2;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar5;
                                    i23 = i3;
                                    i22 = i18;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 8:
                                i18 = i2;
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar5 = zztmVar;
                                if (i32 == 2) {
                                    if ((i34 & 536870912) == 0) {
                                        i24 = zztj.zzc(bArr2, i9, zztmVar5);
                                    } else {
                                        i24 = zztj.zzd(bArr2, i9, zztmVar5);
                                    }
                                    unsafe2.putObject(t4, j, zztmVar5.zzbor);
                                    i28 |= i38;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar5;
                                    i23 = i3;
                                    i22 = i18;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 9:
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar5 = zztmVar;
                                if (i32 == 2) {
                                    i18 = i2;
                                    i24 = zztj.zza(zzwiVar2.zzdj(i13), bArr2, i9, i18, zztmVar5);
                                    if ((i28 & i38) == 0) {
                                        unsafe2.putObject(t4, j, zztmVar5.zzbor);
                                    } else {
                                        unsafe2.putObject(t4, j, zzuw.zzc(unsafe2.getObject(t4, j), zztmVar5.zzbor));
                                    }
                                    i28 |= i38;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar5;
                                    i23 = i3;
                                    i22 = i18;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 10:
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar4 = zztmVar;
                                if (i32 == 2) {
                                    i24 = zztj.zze(bArr2, i9, zztmVar4);
                                    unsafe2.putObject(t4, j, zztmVar4.zzbor);
                                    i28 |= i38;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar4;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 12:
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar4 = zztmVar;
                                if (i32 != 0) {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                } else {
                                    i24 = zztj.zza(bArr2, i9, zztmVar4);
                                    int i40 = zztmVar4.zzbop;
                                    zzvb zzdl2 = zzwiVar2.zzdl(i13);
                                    if (zzdl2 == null || zzdl2.zzb(i40)) {
                                        unsafe2.putInt(t4, j, i40);
                                        i28 |= i38;
                                        i27 = i15;
                                        i26 = i13;
                                        i25 = i14;
                                        zztmVar6 = zztmVar4;
                                        i22 = i2;
                                        i23 = i3;
                                        break;
                                    } else {
                                        zzab(t).zzb(i15, Long.valueOf(i40));
                                        i27 = i15;
                                        i26 = i13;
                                        i25 = i14;
                                        zztmVar6 = zztmVar4;
                                        i22 = i2;
                                        i23 = i3;
                                    }
                                }
                                break;
                            case 15:
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                bArr2 = bArr;
                                zztmVar4 = zztmVar;
                                if (i32 == 0) {
                                    i24 = zztj.zza(bArr2, i9, zztmVar4);
                                    unsafe2.putInt(t4, j, zztz.zzcq(zztmVar4.zzbop));
                                    i28 |= i38;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar4;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 16:
                                i13 = i33;
                                i14 = i31;
                                i15 = i36;
                                if (i32 == 0) {
                                    bArr2 = bArr;
                                    int zzb3 = zztj.zzb(bArr2, i9, zztmVar);
                                    zztmVar4 = zztmVar;
                                    unsafe2.putLong(t, j, zztz.zzr(zztmVar.zzboq));
                                    i28 |= i38;
                                    i24 = zzb3;
                                    i27 = i15;
                                    i26 = i13;
                                    i25 = i14;
                                    zztmVar6 = zztmVar4;
                                    i22 = i2;
                                    i23 = i3;
                                    break;
                                } else {
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            case 17:
                                if (i32 == 3) {
                                    i24 = zztj.zza(zzwiVar2.zzdj(i33), bArr, i9, i2, (i31 << 3) | 4, zztmVar);
                                    if ((i28 & i38) == 0) {
                                        zztmVar3 = zztmVar;
                                        unsafe2.putObject(t4, j, zztmVar3.zzbor);
                                    } else {
                                        zztmVar3 = zztmVar;
                                        unsafe2.putObject(t4, j, zzuw.zzc(unsafe2.getObject(t4, j), zztmVar3.zzbor));
                                    }
                                    i28 |= i38;
                                    bArr2 = bArr;
                                    i22 = i2;
                                    i27 = i36;
                                    i26 = i33;
                                    i25 = i31;
                                    i23 = i3;
                                    zztmVar6 = zztmVar3;
                                    break;
                                } else {
                                    i13 = i33;
                                    i14 = i31;
                                    i15 = i36;
                                    i16 = i29;
                                    i17 = i9;
                                    i11 = i17;
                                    i12 = i13;
                                    unsafe = unsafe2;
                                    i10 = i14;
                                    i29 = i16;
                                    i6 = i15;
                                    i4 = i3;
                                    break;
                                }
                            default:
                                i13 = i33;
                                i14 = i31;
                                i16 = i29;
                                i15 = i36;
                                i17 = i9;
                                i11 = i17;
                                i12 = i13;
                                unsafe = unsafe2;
                                i10 = i14;
                                i29 = i16;
                                i6 = i15;
                                i4 = i3;
                                break;
                        }
                    } else {
                        int i41 = i29;
                        int i42 = i9;
                        bArr2 = bArr;
                        zztm zztmVar7 = zztmVar6;
                        if (i35 != 27) {
                            i19 = i28;
                            if (i35 <= 49) {
                                i10 = i31;
                                i21 = i36;
                                i12 = i33;
                                unsafe = unsafe2;
                                i24 = zza((zzwi<T>) t, bArr, i42, i2, i36, i31, i32, i33, i34, i35, j, zztmVar);
                                if (i24 == i42) {
                                    i4 = i3;
                                    i11 = i24;
                                } else {
                                    zzwiVar2 = this;
                                    t4 = t;
                                    bArr2 = bArr;
                                    i22 = i2;
                                    i23 = i3;
                                    zztmVar6 = zztmVar;
                                    i29 = i41;
                                    i26 = i12;
                                    i28 = i19;
                                    i25 = i10;
                                    i27 = i21;
                                    unsafe2 = unsafe;
                                }
                            } else {
                                i10 = i31;
                                i20 = i42;
                                i21 = i36;
                                i12 = i33;
                                unsafe = unsafe2;
                                if (i35 != 50) {
                                    i24 = zza((zzwi<T>) t, bArr, i20, i2, i21, i10, i32, i34, i35, j, i12, zztmVar);
                                    if (i24 != i20) {
                                        zzwiVar2 = this;
                                        t4 = t;
                                        i22 = i2;
                                        i23 = i3;
                                        i27 = i21;
                                        i25 = i10;
                                        i29 = i41;
                                        i26 = i12;
                                        i28 = i19;
                                        unsafe2 = unsafe;
                                        bArr2 = bArr;
                                        zztmVar6 = zztmVar;
                                    }
                                } else if (i32 == 2) {
                                    i24 = zza((zzwi<T>) t, bArr, i20, i2, i12, j, zztmVar);
                                    if (i24 != i20) {
                                        zzwiVar2 = this;
                                        t4 = t;
                                        bArr2 = bArr;
                                        i22 = i2;
                                        i23 = i3;
                                        zztmVar6 = zztmVar;
                                        i29 = i41;
                                        i26 = i12;
                                        i28 = i19;
                                        i25 = i10;
                                        i27 = i21;
                                        unsafe2 = unsafe;
                                    }
                                } else {
                                    i4 = i3;
                                    i11 = i20;
                                }
                                i4 = i3;
                                i11 = i24;
                            }
                        } else if (i32 == 2) {
                            zzvf zzvfVar = (zzvf) unsafe2.getObject(t4, j);
                            if (!zzvfVar.zzpz()) {
                                int size = zzvfVar.size();
                                zzvfVar = zzvfVar.zzcl(size == 0 ? 10 : size << 1);
                                unsafe2.putObject(t4, j, zzvfVar);
                            }
                            i24 = zztj.zza(zzwiVar2.zzdj(i33), i36, bArr, i42, i2, zzvfVar, zztmVar);
                            i23 = i3;
                            i25 = i31;
                            i27 = i36;
                            i26 = i33;
                            zztmVar6 = zztmVar7;
                            i29 = i41;
                            i28 = i28;
                            i22 = i2;
                        } else {
                            i19 = i28;
                            i10 = i31;
                            i20 = i42;
                            i21 = i36;
                            i12 = i33;
                            unsafe = unsafe2;
                            i4 = i3;
                            i11 = i20;
                        }
                        i29 = i41;
                        i28 = i19;
                        i6 = i21;
                    }
                }
                if (i6 != i4 || i4 == 0) {
                    if (this.zzbvk) {
                        zztmVar2 = zztmVar;
                        if (zztmVar2.zzih != zzuj.zzqs()) {
                            int i43 = i10;
                            if (zztmVar2.zzih.zza(this.zzbvj, i43) == null) {
                                i24 = zztj.zza(i6, bArr, i11, i2, zzab(t), zztmVar);
                                t4 = t;
                                i22 = i2;
                                i27 = i6;
                                zzwiVar2 = this;
                                zztmVar6 = zztmVar2;
                                i25 = i43;
                                i26 = i12;
                                unsafe2 = unsafe;
                                bArr2 = bArr;
                                i23 = i4;
                            } else {
                                zzuu.zzc zzcVar = (zzuu.zzc) t;
                                zzcVar.zzrr();
                                zzum<Object> zzumVar = zzcVar.zzbsv;
                                throw new NoSuchMethodError();
                            }
                        } else {
                            t3 = t;
                        }
                    } else {
                        t3 = t;
                        zztmVar2 = zztmVar;
                    }
                    i24 = zztj.zza(i6, bArr, i11, i2, zzab(t), zztmVar);
                    i27 = i6;
                    zzwiVar2 = this;
                    zztmVar6 = zztmVar2;
                    i25 = i10;
                    t4 = t3;
                    i26 = i12;
                    unsafe2 = unsafe;
                    bArr2 = bArr;
                    i22 = i2;
                    i23 = i4;
                } else {
                    zzwiVar = this;
                    t2 = t;
                    i7 = i29;
                    i8 = -1;
                    i5 = i11;
                }
            } else {
                int i44 = i29;
                unsafe = unsafe2;
                i4 = i23;
                t2 = t4;
                zzwiVar = zzwiVar2;
                i5 = i24;
                i6 = i27;
                i7 = i44;
                i8 = -1;
            }
        }
        if (i7 != i8) {
            unsafe.putInt(t2, i7, i28);
        }
        Object obj = null;
        for (int i45 = zzwiVar.zzbvp; i45 < zzwiVar.zzbvq; i45++) {
            int i46 = zzwiVar.zzbvo[i45];
            zzxm zzxmVar = zzwiVar.zzbvt;
            int i47 = zzwiVar.zzbvf[i46];
            Object zzp = zzxs.zzp(t2, zzwiVar.zzdm(i46) & 1048575);
            if (zzp != null && (zzdl = zzwiVar.zzdl(i46)) != null) {
                obj = zza(i46, i47, zzwiVar.zzbvv.zzu(zzp), zzdl, (zzvb) obj, (zzxm<UT, zzvb>) zzxmVar);
            }
            obj = (zzxp) obj;
        }
        if (obj != null) {
            zzwiVar.zzbvt.zzh(t2, obj);
        }
        if (i4 == 0) {
            if (i5 != i2) {
                throw zzve.zzrx();
            }
        } else if (i5 > i2 || i6 != i4) {
            throw zzve.zzrx();
        }
        return i5;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x022e, code lost:
        if (r0 == r15) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0230, code lost:
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01e2, code lost:
        if (r0 == r15) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x020f, code lost:
        if (r0 == r15) goto L96;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [int] */
    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r28, byte[] r29, int r30, int r31, com.google.android.gms.internal.firebase_ml.zztm r32) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzwi.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.firebase_ml.zztm):void");
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final void zzq(T t) {
        int i;
        int i2 = this.zzbvp;
        while (true) {
            i = this.zzbvq;
            if (i2 >= i) {
                break;
            }
            long zzdm = zzdm(this.zzbvo[i2]) & 1048575;
            Object zzp = zzxs.zzp(t, zzdm);
            if (zzp != null) {
                zzxs.zza(t, zzdm, this.zzbvv.zzy(zzp));
            }
            i2++;
        }
        int length = this.zzbvo.length;
        while (i < length) {
            this.zzbvs.zzb(t, this.zzbvo[i]);
            i++;
        }
        this.zzbvt.zzq(t);
        if (this.zzbvk) {
            this.zzbvu.zzq(t);
        }
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzvb zzvbVar, UB ub, zzxm<UT, UB> zzxmVar) {
        zzvz<?, ?> zzv = this.zzbvv.zzv(zzdk(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzvbVar.zzb(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzxmVar.zztm();
                }
                zztv zzco = zztn.zzco(zzvw.zza(zzv, next.getKey(), next.getValue()));
                try {
                    zzvw.zza(zzco.zzqj(), zzv, next.getKey(), next.getValue());
                    zzxmVar.zza((zzxm<UT, UB>) ub, i2, zzco.zzqi());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v14, types: [com.google.android.gms.internal.firebase_ml.zzwu] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.internal.firebase_ml.zzwu] */
    @Override // com.google.android.gms.internal.firebase_ml.zzwu
    public final boolean zzac(T t) {
        int i;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.zzbvp) {
                return !this.zzbvk || this.zzbvu.zzo(t).isInitialized();
            }
            int i5 = this.zzbvo[i3];
            int i6 = this.zzbvf[i5];
            int zzdm = zzdm(i5);
            if (this.zzbvm) {
                i = 0;
            } else {
                int i7 = this.zzbvf[i5 + 2];
                int i8 = i7 & 1048575;
                i = 1 << (i7 >>> 20);
                if (i8 != i2) {
                    i4 = zzbve.getInt(t, i8);
                    i2 = i8;
                }
            }
            if (((268435456 & zzdm) != 0) && !zza((zzwi<T>) t, i5, i4, i)) {
                return false;
            }
            int i9 = (267386880 & zzdm) >>> 20;
            if (i9 == 9 || i9 == 17) {
                if (zza((zzwi<T>) t, i5, i4, i) && !zza(t, zzdm, zzdj(i5))) {
                    return false;
                }
            } else {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (zza((zzwi<T>) t, i6, i5) && !zza(t, zzdm, zzdj(i5))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzw = this.zzbvv.zzw(zzxs.zzp(t, zzdm & 1048575));
                            if (!zzw.isEmpty()) {
                                if (this.zzbvv.zzv(zzdk(i5)).zzbuz.zztw() == zzyg.MESSAGE) {
                                    zzwu<T> zzwuVar = 0;
                                    Iterator<?> it = zzw.values().iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        if (zzwuVar == null) {
                                            zzwuVar = zzwt.zzsw().zzk(next.getClass());
                                        }
                                        boolean zzac = zzwuVar.zzac(next);
                                        zzwuVar = zzwuVar;
                                        if (!zzac) {
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
                List list = (List) zzxs.zzp(t, zzdm & 1048575);
                if (!list.isEmpty()) {
                    ?? zzdj = zzdj(i5);
                    int i10 = 0;
                    while (true) {
                        if (i10 >= list.size()) {
                            break;
                        } else if (!zzdj.zzac(list.get(i10))) {
                            z = false;
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                if (!z) {
                    return false;
                }
            }
            i3++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzwu zzwuVar) {
        return zzwuVar.zzac(zzxs.zzp(obj, i & 1048575));
    }

    private static void zza(int i, Object obj, zzyj zzyjVar) throws IOException {
        if (obj instanceof String) {
            zzyjVar.zzb(i, (String) obj);
        } else {
            zzyjVar.zza(i, (zztn) obj);
        }
    }

    private final int zzdm(int i) {
        return this.zzbvf[i + 1];
    }

    private final int zzdn(int i) {
        return this.zzbvf[i + 2];
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzxs.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzxs.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzxs.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzxs.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzxs.zzp(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzwi<T>) t, i) == zza((zzwi<T>) t2, i);
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        if (this.zzbvm) {
            return zza((zzwi<T>) t, i);
        }
        return (i2 & i3) != 0;
    }

    private final boolean zza(T t, int i) {
        if (this.zzbvm) {
            int zzdm = zzdm(i);
            long j = zzdm & 1048575;
            switch ((zzdm & 267386880) >>> 20) {
                case 0:
                    return zzxs.zzo(t, j) != 0.0d;
                case 1:
                    return zzxs.zzn(t, j) != BitmapDescriptorFactory.HUE_RED;
                case 2:
                    return zzxs.zzl(t, j) != 0;
                case 3:
                    return zzxs.zzl(t, j) != 0;
                case 4:
                    return zzxs.zzk(t, j) != 0;
                case 5:
                    return zzxs.zzl(t, j) != 0;
                case 6:
                    return zzxs.zzk(t, j) != 0;
                case 7:
                    return zzxs.zzm(t, j);
                case 8:
                    Object zzp = zzxs.zzp(t, j);
                    if (zzp instanceof String) {
                        return !((String) zzp).isEmpty();
                    } else if (zzp instanceof zztn) {
                        return !zztn.zzbos.equals(zzp);
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    return zzxs.zzp(t, j) != null;
                case 10:
                    return !zztn.zzbos.equals(zzxs.zzp(t, j));
                case 11:
                    return zzxs.zzk(t, j) != 0;
                case 12:
                    return zzxs.zzk(t, j) != 0;
                case 13:
                    return zzxs.zzk(t, j) != 0;
                case 14:
                    return zzxs.zzl(t, j) != 0;
                case 15:
                    return zzxs.zzk(t, j) != 0;
                case 16:
                    return zzxs.zzl(t, j) != 0;
                case 17:
                    return zzxs.zzp(t, j) != null;
                default:
                    throw new IllegalArgumentException();
            }
        }
        int zzdn = zzdn(i);
        return (zzxs.zzk(t, (long) (zzdn & 1048575)) & (1 << (zzdn >>> 20))) != 0;
    }

    private final void zzb(T t, int i) {
        if (this.zzbvm) {
            return;
        }
        int zzdn = zzdn(i);
        long j = zzdn & 1048575;
        zzxs.zza((Object) t, j, zzxs.zzk(t, j) | (1 << (zzdn >>> 20)));
    }

    private final boolean zza(T t, int i, int i2) {
        return zzxs.zzk(t, (long) (zzdn(i2) & 1048575)) == i;
    }

    private final void zzb(T t, int i, int i2) {
        zzxs.zza((Object) t, zzdn(i2) & 1048575, i);
    }

    private final int zzdo(int i) {
        if (i < this.zzbvh || i > this.zzbvi) {
            return -1;
        }
        return zzw(i, 0);
    }

    private final int zzv(int i, int i2) {
        if (i < this.zzbvh || i > this.zzbvi) {
            return -1;
        }
        return zzw(i, i2);
    }

    private final int zzw(int i, int i2) {
        int length = (this.zzbvf.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzbvf[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }
}
