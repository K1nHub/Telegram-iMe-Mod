package org.solovyev.android.checkout;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public interface CancellableExecutor extends Executor {
    void cancel(Runnable runnable);

    @Override // java.util.concurrent.Executor
    void execute(Runnable runnable);
}
