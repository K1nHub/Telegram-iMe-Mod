package com.google.android.gms.vision.clearcut;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.internal.vision.zzfe;
import com.google.android.gms.internal.vision.zzfi;
import com.google.android.gms.internal.vision.zzio;
import com.google.android.gms.vision.C0722L;
/* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
@Keep
/* loaded from: classes3.dex */
public class VisionClearcutLogger {
    private final ClearcutLogger zza;
    private boolean zzb = true;

    public VisionClearcutLogger(@RecentlyNonNull Context context) {
        this.zza = new ClearcutLogger(context, "VISION", null);
    }

    public final void zza(int i, zzfi.zzo zzoVar) {
        byte[] zzh = zzoVar.zzh();
        if (i < 0 || i > 3) {
            C0722L.m1067i("Illegal event code: %d", Integer.valueOf(i));
            return;
        }
        try {
            if (this.zzb) {
                this.zza.newEvent(zzh).setEventCode(i).log();
                return;
            }
            zzfi.zzo.zza zza = zzfi.zzo.zza();
            try {
                zza.zza(zzh, 0, zzh.length, zzio.zzc());
                C0722L.m1069e("Would have logged:\n%s", zza.toString());
            } catch (Exception e) {
                C0722L.m1068e(e, "Parsing error", new Object[0]);
            }
        } catch (Exception e2) {
            zzfe.zza(e2);
            C0722L.m1068e(e2, "Failed to log", new Object[0]);
        }
    }
}
