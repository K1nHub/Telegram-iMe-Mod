package com.google.android.gms.internal.firebase_ml;

import com.google.android.exoplayer2.DefaultLoadControl;
import java.io.IOException;
/* loaded from: classes.dex */
final class zzqj implements zzfm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqj(zzqf zzqfVar) {
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfm
    public final void zza(zzfk zzfkVar) throws IOException {
        zzfkVar.zzx(10000);
        zzfkVar.zzw(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
    }
}
