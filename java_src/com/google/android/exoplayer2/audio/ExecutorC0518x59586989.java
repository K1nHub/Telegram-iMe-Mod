package com.google.android.exoplayer2.audio;

import android.os.Handler;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC0518x59586989 implements Executor {
    public final /* synthetic */ Handler f$0;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f$0.post(runnable);
    }
}
