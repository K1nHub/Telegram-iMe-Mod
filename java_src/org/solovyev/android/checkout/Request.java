package org.solovyev.android.checkout;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.android.vending.billing.IInAppBillingService;
import java.util.concurrent.atomic.AtomicInteger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public abstract class Request<R> {
    private static final AtomicInteger sCounter = new AtomicInteger(0);
    protected final int mApiVersion;
    private final int mId;
    private RequestListener<R> mListener;
    private boolean mListenerCalled;
    private Object mTag;
    private final RequestType mType;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String getCacheKey();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void start(IInAppBillingService iInAppBillingService, String str) throws RemoteException, RequestException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request(RequestType requestType) {
        this(requestType, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request(RequestType requestType, int i) {
        this.mType = requestType;
        this.mApiVersion = i;
        this.mId = sCounter.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Request(Request<R> request) {
        this.mType = request.mType;
        this.mId = request.mId;
        this.mApiVersion = request.mApiVersion;
        synchronized (request) {
            this.mListener = request.mListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getId() {
        return this.mId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getTag() {
        return this.mTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTag(Object obj) {
        this.mTag = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestType getType() {
        return this.mType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cancel() {
        synchronized (this) {
            RequestListener<R> requestListener = this.mListener;
            if (requestListener != null) {
                Billing.cancel(requestListener);
            }
            this.mListener = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onSuccess(R r) {
        RequestListener<R> listener = getListener();
        if (listener == null || checkListenerCalled()) {
            return;
        }
        listener.onSuccess(r);
    }

    private boolean checkListenerCalled() {
        synchronized (this) {
            if (this.mListenerCalled) {
                return true;
            }
            this.mListenerCalled = true;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onError(int i) {
        String responseCodes = ResponseCodes.toString(i);
        Billing.error("Error response: " + responseCodes + " in " + this + " request");
        onError(i, new BillingException(i));
    }

    public void onError(Exception exc) {
        boolean z = exc instanceof BillingException;
        Billing.error("Exception in " + this + " request: ", exc);
        onError(10001, exc);
    }

    private void onError(int i, Exception exc) {
        RequestListener<R> listener = getListener();
        if (listener == null || checkListenerCalled()) {
            return;
        }
        listener.onError(i, exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean handleError(Bundle bundle) {
        return handleError(bundle != null ? bundle.getInt("RESPONSE_CODE") : 6);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean handleError(int i) {
        if (i != 0) {
            onError(i);
            return true;
        }
        return false;
    }

    RequestListener<R> getListener() {
        RequestListener<R> requestListener;
        synchronized (this) {
            requestListener = this.mListener;
        }
        return requestListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListener(RequestListener<R> requestListener) {
        synchronized (this) {
            this.mListener = requestListener;
        }
    }

    public String toString() {
        String cacheKey = getCacheKey();
        if (!TextUtils.isEmpty(cacheKey)) {
            return getClass().getSimpleName() + "(" + cacheKey + ")";
        }
        return getClass().getSimpleName();
    }
}
