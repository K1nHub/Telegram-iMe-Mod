package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final class zznq implements Runnable {
    private final /* synthetic */ Callable val$callable;
    private final /* synthetic */ TaskCompletionSource zzasy;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zznq(zznn zznnVar, Callable callable, TaskCompletionSource taskCompletionSource) {
        this.val$callable = callable;
        this.zzasy = taskCompletionSource;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznn.zza(this.val$callable, this.zzasy);
    }
}
