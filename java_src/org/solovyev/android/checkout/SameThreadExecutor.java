package org.solovyev.android.checkout;
/* loaded from: classes6.dex */
class SameThreadExecutor implements CancellableExecutor {
    public static final SameThreadExecutor INSTANCE = new SameThreadExecutor();

    @Override // org.solovyev.android.checkout.CancellableExecutor
    public void cancel(Runnable runnable) {
    }

    private SameThreadExecutor() {
    }

    @Override // org.solovyev.android.checkout.CancellableExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
