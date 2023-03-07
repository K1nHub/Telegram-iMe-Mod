package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes3.dex */
public final class zzel extends zzgp {
    private char zza;
    private long zzb;
    private String zzc;
    private final zzej zzd;
    private final zzej zze;
    private final zzej zzf;
    private final zzej zzg;
    private final zzej zzh;
    private final zzej zzi;
    private final zzej zzj;
    private final zzej zzk;
    private final zzej zzl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzel(zzfv zzfvVar) {
        super(zzfvVar);
        this.zza = (char) 0;
        this.zzb = -1L;
        this.zzd = new zzej(this, 6, false, false);
        this.zze = new zzej(this, 6, true, false);
        this.zzf = new zzej(this, 6, false, true);
        this.zzg = new zzej(this, 5, false, false);
        this.zzh = new zzej(this, 5, true, false);
        this.zzi = new zzej(this, 5, false, true);
        this.zzj = new zzej(this, 4, false, false);
        this.zzk = new zzej(this, 3, false, false);
        this.zzl = new zzej(this, 2, false, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Object zzn(String str) {
        if (str == null) {
            return null;
        }
        return new zzek(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzo(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String zzp = zzp(z, obj);
        String zzp2 = zzp(z, obj2);
        String zzp3 = zzp(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(zzp)) {
            sb.append(str2);
            sb.append(zzp);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(zzp2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(zzp2);
        }
        if (!TextUtils.isEmpty(zzp3)) {
            sb.append(str3);
            sb.append(zzp3);
        }
        return sb.toString();
    }

    @VisibleForTesting
    static String zzp(boolean z, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str2 = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            long round = Math.round(Math.pow(10.0d, valueOf.length() - 1));
            long round2 = Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
            StringBuilder sb = new StringBuilder(str2.length() + 43 + str2.length());
            sb.append(str2);
            sb.append(round);
            sb.append("...");
            sb.append(str2);
            sb.append(round2);
            return sb.toString();
        } else if (obj instanceof Boolean) {
            return String.valueOf(obj);
        } else {
            if (obj instanceof Throwable) {
                Throwable th = (Throwable) obj;
                StringBuilder sb2 = new StringBuilder(z ? th.getClass().getName() : th.toString());
                String zzy = zzy(zzfv.class.getCanonicalName());
                StackTraceElement[] stackTrace = th.getStackTrace();
                int length = stackTrace.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    StackTraceElement stackTraceElement = stackTrace[i];
                    if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && zzy(className).equals(zzy)) {
                        sb2.append(": ");
                        sb2.append(stackTraceElement);
                        break;
                    }
                    i++;
                }
                return sb2.toString();
            } else if (!(obj instanceof zzek)) {
                return z ? "-" : String.valueOf(obj);
            } else {
                str = ((zzek) obj).zza;
                return str;
            }
        }
    }

    private static String zzy(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? str : str.substring(0, lastIndexOf);
    }

    public final zzej zzc() {
        return this.zzk;
    }

    public final zzej zzd() {
        return this.zzd;
    }

    public final zzej zze() {
        return this.zzf;
    }

    @Override // com.google.android.gms.measurement.internal.zzgp
    protected final boolean zzf() {
        return false;
    }

    public final zzej zzh() {
        return this.zze;
    }

    public final zzej zzi() {
        return this.zzj;
    }

    public final zzej zzj() {
        return this.zzl;
    }

    public final zzej zzk() {
        return this.zzg;
    }

    public final zzej zzl() {
        return this.zzi;
    }

    public final zzej zzm() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public final String zzq() {
        String str;
        synchronized (this) {
            if (this.zzc == null) {
                if (this.zzs.zzy() == null) {
                    this.zzc = this.zzs.zzf().zzn();
                } else {
                    this.zzc = this.zzs.zzy();
                }
            }
            Preconditions.checkNotNull(this.zzc);
            str = this.zzc;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzt(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && Log.isLoggable(zzq(), i)) {
            Log.println(i, zzq(), zzo(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        Preconditions.checkNotNull(str);
        zzfs zzo = this.zzs.zzo();
        if (zzo == null) {
            Log.println(6, zzq(), "Scheduler not set. Not logging error/warn");
        } else if (!zzo.zzx()) {
            Log.println(6, zzq(), "Scheduler not initialized. Not logging error/warn");
        } else {
            zzo.zzp(new zzei(this, i >= 9 ? 8 : i, str, obj, obj2, obj3));
        }
    }
}
