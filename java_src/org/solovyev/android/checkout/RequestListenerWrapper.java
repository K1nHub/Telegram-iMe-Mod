package org.solovyev.android.checkout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class RequestListenerWrapper<R> implements CancellableRequestListener<R> {
    protected final RequestListener<R> mListener;

    protected void onCancel() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestListenerWrapper(RequestListener<R> requestListener) {
        this.mListener = requestListener;
    }

    @Override // org.solovyev.android.checkout.RequestListener
    public void onSuccess(R r) {
        this.mListener.onSuccess(r);
    }

    @Override // org.solovyev.android.checkout.RequestListener
    public void onError(int i, Exception exc) {
        this.mListener.onError(i, exc);
    }

    @Override // org.solovyev.android.checkout.CancellableRequestListener
    public final void cancel() {
        onCancel();
        Billing.cancel(this.mListener);
    }
}
