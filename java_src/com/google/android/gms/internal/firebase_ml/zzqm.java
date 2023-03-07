package com.google.android.gms.internal.firebase_ml;

import android.os.Build;
import com.google.android.gms.internal.firebase_ml.zzlu;
/* loaded from: classes.dex */
public final class zzqm {
    public static int zzbn(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return 270;
                    }
                    StringBuilder sb = new StringBuilder(29);
                    sb.append("Invalid rotation: ");
                    sb.append(i);
                    throw new IllegalArgumentException(sb.toString());
                }
                return 180;
            }
            return 90;
        }
        return 0;
    }

    public static int zzbo(int i) {
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            StringBuilder sb = new StringBuilder(34);
            sb.append("Invalid landmark type: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return 0;
    }

    public static int zzbp(int i) {
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            StringBuilder sb = new StringBuilder(30);
            sb.append("Invalid mode type: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return 0;
    }

    public static int zzbq(int i) {
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            StringBuilder sb = new StringBuilder(40);
            sb.append("Invalid classification type: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        return 0;
    }

    public static zzlu.zzt zzc(zzqp zzqpVar) {
        zzlu.zzt.zzb zzbVar;
        int capacity;
        if (zzqpVar.zzbay.getBitmap() != null) {
            zzbVar = zzlu.zzt.zzb.BITMAP;
            if (Build.VERSION.SDK_INT >= 19) {
                capacity = zzqpVar.zzbay.getBitmap().getAllocationByteCount();
            } else {
                capacity = zzqpVar.zzbay.getBitmap().getByteCount();
            }
        } else {
            int format = zzqpVar.zzbay.getMetadata().getFormat();
            if (format == 16) {
                zzbVar = zzlu.zzt.zzb.NV16;
            } else if (format == 17) {
                zzbVar = zzlu.zzt.zzb.NV21;
            } else if (format == 842094169) {
                zzbVar = zzlu.zzt.zzb.YV12;
            } else {
                zzbVar = zzlu.zzt.zzb.UNKNOWN_FORMAT;
            }
            capacity = zzqpVar.zzbay.getGrayscaleImageData().capacity();
        }
        return (zzlu.zzt) ((zzuu) zzlu.zzt.zzjn().zza(zzbVar).zzaq(capacity).zzrq());
    }
}
