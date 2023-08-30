package com.google.android.gms.internal.firebase_ml;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
enum zznp implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Handler handler;
        handler = zznn.zzlk().handler;
        handler.post(runnable);
    }
}
