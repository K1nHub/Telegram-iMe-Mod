package org.solovyev.android.checkout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class MainThreadRequestListener<R> extends RequestListenerWrapper<R> {
    private Runnable mErrorRunnable;
    private final CancellableExecutor mMainThread;
    private Runnable mSuccessRunnable;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MainThreadRequestListener(CancellableExecutor cancellableExecutor, RequestListener<R> requestListener) {
        super(requestListener);
        this.mMainThread = cancellableExecutor;
    }

    @Override // org.solovyev.android.checkout.RequestListenerWrapper, org.solovyev.android.checkout.RequestListener
    public void onSuccess(final R r) {
        Runnable runnable = new Runnable() { // from class: org.solovyev.android.checkout.MainThreadRequestListener.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                MainThreadRequestListener.this.mListener.onSuccess(r);
            }
        };
        this.mSuccessRunnable = runnable;
        this.mMainThread.execute(runnable);
    }

    @Override // org.solovyev.android.checkout.RequestListenerWrapper, org.solovyev.android.checkout.RequestListener
    public void onError(final int i, final Exception exc) {
        Runnable runnable = new Runnable() { // from class: org.solovyev.android.checkout.MainThreadRequestListener.2
            @Override // java.lang.Runnable
            public void run() {
                MainThreadRequestListener.this.mListener.onError(i, exc);
            }
        };
        this.mErrorRunnable = runnable;
        this.mMainThread.execute(runnable);
    }

    @Override // org.solovyev.android.checkout.RequestListenerWrapper
    public void onCancel() {
        Runnable runnable = this.mSuccessRunnable;
        if (runnable != null) {
            this.mMainThread.cancel(runnable);
            this.mSuccessRunnable = null;
        }
        Runnable runnable2 = this.mErrorRunnable;
        if (runnable2 != null) {
            this.mMainThread.cancel(runnable2);
            this.mErrorRunnable = null;
        }
    }
}
