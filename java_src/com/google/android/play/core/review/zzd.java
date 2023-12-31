package com.google.android.play.core.review;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;
import com.google.android.play.core.tasks.Task;
import com.google.android.play.core.tasks.Tasks;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
public final class zzd implements ReviewManager {
    private final zzi zza;
    private final Handler zzb = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzi zziVar) {
        this.zza = zziVar;
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public final Task<Void> launchReviewFlow(Activity activity, ReviewInfo reviewInfo) {
        if (reviewInfo.zzb()) {
            return Tasks.zzb(null);
        }
        Intent intent = new Intent(activity, PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", reviewInfo.zza());
        intent.putExtra("window_flags", activity.getWindow().getDecorView().getWindowSystemUiVisibility());
        com.google.android.play.core.tasks.zzi zziVar = new com.google.android.play.core.tasks.zzi();
        intent.putExtra("result_receiver", new zzc(this, this.zzb, zziVar));
        activity.startActivity(intent);
        return zziVar.zza();
    }

    @Override // com.google.android.play.core.review.ReviewManager
    public final Task<ReviewInfo> requestReviewFlow() {
        return this.zza.zzb();
    }
}
