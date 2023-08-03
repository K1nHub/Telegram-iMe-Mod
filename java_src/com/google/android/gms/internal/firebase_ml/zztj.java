package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import org.telegram.messenger.MessagesStorage;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zztj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i, zztm zztmVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zztmVar.zzbop = b;
            return i2;
        }
        return zza(b, bArr, i2, zztmVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, byte[] bArr, int i2, zztm zztmVar) {
        int i3 = i & MessagesStorage.LAST_DB_VERSION;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zztmVar.zzbop = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zztmVar.zzbop = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zztmVar.zzbop = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zztmVar.zzbop = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zztmVar.zzbop = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(byte[] bArr, int i, zztm zztmVar) {
        byte b;
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zztmVar.zzboq = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b2 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (b & Byte.MAX_VALUE) << i4;
            b2 = bArr[i3];
            i3 = i5;
        }
        zztmVar.zzboq = j2;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzb(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double zzc(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzb(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float zzd(byte[] bArr, int i) {
        return Float.intBitsToFloat(zza(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(byte[] bArr, int i, zztm zztmVar) throws zzve {
        int zza = zza(bArr, i, zztmVar);
        int i2 = zztmVar.zzbop;
        if (i2 >= 0) {
            if (i2 == 0) {
                zztmVar.zzbor = "";
                return zza;
            }
            zztmVar.zzbor = new String(bArr, zza, i2, zzuw.UTF_8);
            return zza + i2;
        }
        throw zzve.zzru();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(byte[] bArr, int i, zztm zztmVar) throws zzve {
        int zza = zza(bArr, i, zztmVar);
        int i2 = zztmVar.zzbop;
        if (i2 >= 0) {
            if (i2 == 0) {
                zztmVar.zzbor = "";
                return zza;
            }
            zztmVar.zzbor = zzxv.zzh(bArr, zza, i2);
            return zza + i2;
        }
        throw zzve.zzru();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(byte[] bArr, int i, zztm zztmVar) throws zzve {
        int zza = zza(bArr, i, zztmVar);
        int i2 = zztmVar.zzbop;
        if (i2 < 0) {
            throw zzve.zzru();
        }
        if (i2 <= bArr.length - zza) {
            if (i2 == 0) {
                zztmVar.zzbor = zztn.zzbos;
                return zza;
            }
            zztmVar.zzbor = zztn.zzb(bArr, zza, i2);
            return zza + i2;
        }
        throw zzve.zzrt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzwu zzwuVar, byte[] bArr, int i, int i2, zztm zztmVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zza(i4, bArr, i3, zztmVar);
            i4 = zztmVar.zzbop;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw zzve.zzrt();
        }
        Object newInstance = zzwuVar.newInstance();
        int i6 = i4 + i5;
        zzwuVar.zza(newInstance, bArr, i5, i6, zztmVar);
        zzwuVar.zzq(newInstance);
        zztmVar.zzbor = newInstance;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzwu zzwuVar, byte[] bArr, int i, int i2, int i3, zztm zztmVar) throws IOException {
        zzwi zzwiVar = (zzwi) zzwuVar;
        Object newInstance = zzwiVar.newInstance();
        int zza = zzwiVar.zza((zzwi) newInstance, bArr, i, i2, i3, zztmVar);
        zzwiVar.zzq(newInstance);
        zztmVar.zzbor = newInstance;
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, byte[] bArr, int i2, int i3, zzvf<?> zzvfVar, zztm zztmVar) {
        zzux zzuxVar = (zzux) zzvfVar;
        int zza = zza(bArr, i2, zztmVar);
        zzuxVar.zzdi(zztmVar.zzbop);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zztmVar);
            if (i != zztmVar.zzbop) {
                break;
            }
            zza = zza(bArr, zza2, zztmVar);
            zzuxVar.zzdi(zztmVar.zzbop);
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i, zzvf<?> zzvfVar, zztm zztmVar) throws IOException {
        zzux zzuxVar = (zzux) zzvfVar;
        int zza = zza(bArr, i, zztmVar);
        int i2 = zztmVar.zzbop + zza;
        while (zza < i2) {
            zza = zza(bArr, zza, zztmVar);
            zzuxVar.zzdi(zztmVar.zzbop);
        }
        if (zza == i2) {
            return zza;
        }
        throw zzve.zzrt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzwu<?> zzwuVar, int i, byte[] bArr, int i2, int i3, zzvf<?> zzvfVar, zztm zztmVar) throws IOException {
        int zza = zza(zzwuVar, bArr, i2, i3, zztmVar);
        zzvfVar.add(zztmVar.zzbor);
        while (zza < i3) {
            int zza2 = zza(bArr, zza, zztmVar);
            if (i != zztmVar.zzbop) {
                break;
            }
            zza = zza(zzwuVar, bArr, zza2, i3, zztmVar);
            zzvfVar.add(zztmVar.zzbor);
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, byte[] bArr, int i2, int i3, zzxp zzxpVar, zztm zztmVar) throws zzve {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 == 0) {
                int zzb = zzb(bArr, i2, zztmVar);
                zzxpVar.zzb(i, Long.valueOf(zztmVar.zzboq));
                return zzb;
            } else if (i4 == 1) {
                zzxpVar.zzb(i, Long.valueOf(zzb(bArr, i2)));
                return i2 + 8;
            } else if (i4 == 2) {
                int zza = zza(bArr, i2, zztmVar);
                int i5 = zztmVar.zzbop;
                if (i5 < 0) {
                    throw zzve.zzru();
                }
                if (i5 <= bArr.length - zza) {
                    if (i5 == 0) {
                        zzxpVar.zzb(i, zztn.zzbos);
                    } else {
                        zzxpVar.zzb(i, zztn.zzb(bArr, zza, i5));
                    }
                    return zza + i5;
                }
                throw zzve.zzrt();
            } else if (i4 != 3) {
                if (i4 == 5) {
                    zzxpVar.zzb(i, Integer.valueOf(zza(bArr, i2)));
                    return i2 + 4;
                }
                throw zzve.zzrv();
            } else {
                zzxp zzto = zzxp.zzto();
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    if (i2 >= i3) {
                        break;
                    }
                    int zza2 = zza(bArr, i2, zztmVar);
                    int i8 = zztmVar.zzbop;
                    i7 = i8;
                    if (i8 == i6) {
                        i2 = zza2;
                        break;
                    }
                    int zza3 = zza(i7, bArr, zza2, i3, zzto, zztmVar);
                    i7 = i8;
                    i2 = zza3;
                }
                if (i2 > i3 || i7 != i6) {
                    throw zzve.zzrx();
                }
                zzxpVar.zzb(i, zzto);
                return i2;
            }
        }
        throw zzve.zzrv();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i, byte[] bArr, int i2, int i3, zztm zztmVar) throws zzve {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 == 5) {
                                return i2 + 4;
                            }
                            throw zzve.zzrv();
                        }
                        int i5 = (i & (-8)) | 4;
                        int i6 = 0;
                        while (i2 < i3) {
                            i2 = zza(bArr, i2, zztmVar);
                            i6 = zztmVar.zzbop;
                            if (i6 == i5) {
                                break;
                            }
                            i2 = zza(i6, bArr, i2, i3, zztmVar);
                        }
                        if (i2 > i3 || i6 != i5) {
                            throw zzve.zzrx();
                        }
                        return i2;
                    }
                    return zza(bArr, i2, zztmVar) + zztmVar.zzbop;
                }
                return i2 + 8;
            }
            return zzb(bArr, i2, zztmVar);
        }
        throw zzve.zzrv();
    }
}
