package com.google.android.gms.internal.firebase_ml;

import android.os.SystemClock;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.LinkedList;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class zzqk {
    private static final GmsLogger zzass = new GmsLogger("StreamingFormatChecker", "");
    private final LinkedList<Long> zzbbd = new LinkedList<>();
    private long zzbbe = -1;

    public final void zzb(zzqp zzqpVar) {
        if (zzqpVar.zzbay.getBitmap() == null) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.zzbbd.add(Long.valueOf(elapsedRealtime));
        if (this.zzbbd.size() > 5) {
            this.zzbbd.removeFirst();
        }
        if (this.zzbbd.size() != 5 || elapsedRealtime - this.zzbbd.peekFirst().longValue() >= 5000) {
            return;
        }
        long j = this.zzbbe;
        if (j == -1 || elapsedRealtime - j >= TimeUnit.SECONDS.toMillis(5L)) {
            this.zzbbe = elapsedRealtime;
            zzass.m1091w("StreamingFormatChecker", "ML Kit has detected that you seem to pass camera frames to the detector as a Bitmap object. This is inefficient. Please use YUV_420_888 format for camera2 API or NV21 format for (legacy) camera API and directly pass down the byte array to ML Kit.");
        }
    }
}
