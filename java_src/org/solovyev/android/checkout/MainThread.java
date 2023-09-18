package org.solovyev.android.checkout;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes6.dex */
final class MainThread implements CancellableExecutor {
    private final Handler mHandler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MainThread(Handler handler) {
        handler.getLooper();
        Looper.getMainLooper();
        this.mHandler = handler;
    }

    static boolean isMainThread() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    @Override // org.solovyev.android.checkout.CancellableExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (isMainThread()) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    @Override // org.solovyev.android.checkout.CancellableExecutor
    public void cancel(Runnable runnable) {
        this.mHandler.removeCallbacks(runnable);
    }
}
