package org.solovyev.android.checkout;

import android.app.Activity;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import org.solovyev.android.checkout.Billing;
import org.solovyev.android.checkout.Inventory;
/* loaded from: classes4.dex */
public class Checkout {
    protected final Billing mBilling;
    private Billing.Requests mRequests;
    private final Object mTag;
    final Object mLock = new Object();
    private final OnLoadExecutor mOnLoadExecutor = new OnLoadExecutor();
    private State mState = State.INITIAL;

    /* loaded from: classes4.dex */
    public static abstract class EmptyListener implements Listener {
        @Override // org.solovyev.android.checkout.Checkout.Listener
        public void onReady(BillingRequests billingRequests) {
        }

        @Override // org.solovyev.android.checkout.Checkout.Listener
        public void onReady(BillingRequests billingRequests, String str, boolean z) {
        }
    }

    /* loaded from: classes4.dex */
    public interface Listener {
        void onReady(BillingRequests billingRequests);

        void onReady(BillingRequests billingRequests, String str, boolean z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum State {
        INITIAL,
        STARTED,
        STOPPED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Checkout(Object obj, Billing billing) {
        this.mTag = obj;
        this.mBilling = billing;
    }

    public static ActivityCheckout forActivity(Activity activity, Billing billing) {
        return new ActivityCheckout(activity, billing);
    }

    public void start() {
        start(null);
    }

    public void start(Listener listener) {
        synchronized (this.mLock) {
            State state = this.mState;
            this.mState = State.STARTED;
            this.mBilling.onCheckoutStarted();
            this.mRequests = this.mBilling.getRequests(this.mTag);
        }
        if (listener == null) {
            listener = new EmptyListener(this) { // from class: org.solovyev.android.checkout.Checkout.1
            };
        }
        whenReady(listener);
    }

    public void whenReady(final Listener listener) {
        synchronized (this.mLock) {
            final Billing.Requests requests = this.mRequests;
            List<String> list = ProductTypes.ALL;
            final HashSet hashSet = new HashSet(list);
            for (final String str : list) {
                requests.isBillingSupported(str, new RequestListener<Object>(this) { // from class: org.solovyev.android.checkout.Checkout.2
                    private void onBillingSupported(boolean z) {
                        listener.onReady(requests, str, z);
                        hashSet.remove(str);
                        if (hashSet.isEmpty()) {
                            listener.onReady(requests);
                        }
                    }

                    @Override // org.solovyev.android.checkout.RequestListener
                    public void onSuccess(Object obj) {
                        onBillingSupported(true);
                    }

                    @Override // org.solovyev.android.checkout.RequestListener
                    public void onError(int i, Exception exc) {
                        onBillingSupported(false);
                    }
                });
            }
        }
    }

    private void checkIsNotStopped() {
        State state = State.STOPPED;
    }

    public Inventory loadInventory(Inventory.Request request, Inventory.Callback callback) {
        Inventory makeInventory = makeInventory();
        makeInventory.load(request, callback);
        return makeInventory;
    }

    public Inventory makeInventory() {
        synchronized (this.mLock) {
            checkIsNotStopped();
        }
        Inventory fallbackInventory = this.mBilling.getConfiguration().getFallbackInventory(this, this.mOnLoadExecutor);
        if (fallbackInventory == null) {
            return new CheckoutInventory(this);
        }
        return new FallingBackInventory(this, fallbackInventory);
    }

    public void stop() {
        synchronized (this.mLock) {
            if (this.mState != State.INITIAL) {
                this.mState = State.STOPPED;
            }
            Billing.Requests requests = this.mRequests;
            if (requests != null) {
                requests.cancelAll();
                this.mRequests = null;
            }
            if (this.mState == State.STOPPED) {
                this.mBilling.onCheckoutStopped();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class OnLoadExecutor implements Executor {
        private OnLoadExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            Executor deliveryExecutor;
            synchronized (Checkout.this.mLock) {
                deliveryExecutor = Checkout.this.mRequests != null ? Checkout.this.mRequests.getDeliveryExecutor() : null;
            }
            if (deliveryExecutor != null) {
                deliveryExecutor.execute(runnable);
            } else {
                Billing.error("Trying to deliver result on a stopped checkout.");
            }
        }
    }
}
