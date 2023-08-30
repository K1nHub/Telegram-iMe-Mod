package com.google.android.gms.internal.mlkit_common;

import java.util.concurrent.Executor;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
enum zzam implements Executor {
    INSTANCE;

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }
}
