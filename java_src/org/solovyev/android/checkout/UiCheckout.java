package org.solovyev.android.checkout;

import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import org.solovyev.android.checkout.Checkout;
/* loaded from: classes6.dex */
public abstract class UiCheckout extends Checkout {
    private final SparseArray<PurchaseFlow> mFlows;

    protected abstract IntentStarter makeIntentStarter();

    /* JADX INFO: Access modifiers changed from: protected */
    public UiCheckout(Object obj, Billing billing) {
        super(obj, billing);
        this.mFlows = new SparseArray<>();
    }

    @Override // org.solovyev.android.checkout.Checkout
    public void stop() {
        this.mFlows.clear();
        super.stop();
    }

    public void destroyPurchaseFlow() {
        destroyPurchaseFlow(51966);
    }

    public void destroyPurchaseFlow(int i) {
        PurchaseFlow purchaseFlow = this.mFlows.get(i);
        if (purchaseFlow == null) {
            return;
        }
        this.mFlows.delete(i);
        purchaseFlow.cancel();
    }

    public PurchaseFlow getPurchaseFlow() {
        return getPurchaseFlow(51966);
    }

    public PurchaseFlow getPurchaseFlow(int i) {
        PurchaseFlow purchaseFlow = this.mFlows.get(i);
        if (purchaseFlow != null) {
            return purchaseFlow;
        }
        throw new IllegalArgumentException("Purchase flow doesn't exist. Have you forgotten to create it?");
    }

    public PurchaseFlow createOneShotPurchaseFlow(RequestListener<Purchase> requestListener) {
        return createOneShotPurchaseFlow(51966, requestListener);
    }

    public PurchaseFlow createOneShotPurchaseFlow(int i, RequestListener<Purchase> requestListener) {
        return createPurchaseFlow(i, requestListener, true);
    }

    private PurchaseFlow createPurchaseFlow(int i, RequestListener<Purchase> requestListener, boolean z) {
        if (this.mFlows.get(i) != null) {
            throw new IllegalArgumentException("Purchase flow associated with requestCode=" + i + " already exists");
        }
        if (z) {
            requestListener = new OneShotRequestListener(requestListener, i);
        }
        PurchaseFlow createPurchaseFlow = this.mBilling.createPurchaseFlow(makeIntentStarter(), i, requestListener);
        this.mFlows.append(i, createPurchaseFlow);
        return createPurchaseFlow;
    }

    public void startPurchaseFlow(String str, String str2, String str3, RequestListener<Purchase> requestListener) {
        startPurchaseFlow(str, str2, str3, null, requestListener);
    }

    public void startPurchaseFlow(final String str, final String str2, final String str3, final Bundle bundle, RequestListener<Purchase> requestListener) {
        createOneShotPurchaseFlow(requestListener);
        whenReady(new Checkout.EmptyListener() { // from class: org.solovyev.android.checkout.UiCheckout.1
            @Override // org.solovyev.android.checkout.Checkout.EmptyListener, org.solovyev.android.checkout.Checkout.Listener
            public void onReady(BillingRequests billingRequests) {
                billingRequests.purchase(str, str2, str3, bundle, UiCheckout.this.getPurchaseFlow());
            }
        });
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        PurchaseFlow purchaseFlow = this.mFlows.get(i);
        if (purchaseFlow == null) {
            Billing.warning("Purchase flow doesn't exist for requestCode=" + i + ". Have you forgotten to create it?");
            return false;
        }
        purchaseFlow.onActivityResult(i, i2, intent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class OneShotRequestListener extends RequestListenerWrapper<Purchase> {
        private final int mRequestCode;

        public OneShotRequestListener(RequestListener<Purchase> requestListener, int i) {
            super(requestListener);
            this.mRequestCode = i;
        }

        @Override // org.solovyev.android.checkout.RequestListenerWrapper, org.solovyev.android.checkout.RequestListener
        public void onError(int i, Exception exc) {
            UiCheckout.this.destroyPurchaseFlow(this.mRequestCode);
            super.onError(i, exc);
        }

        @Override // org.solovyev.android.checkout.RequestListenerWrapper
        public void onCancel() {
            UiCheckout.this.destroyPurchaseFlow(this.mRequestCode);
        }

        @Override // org.solovyev.android.checkout.RequestListenerWrapper, org.solovyev.android.checkout.RequestListener
        public void onSuccess(Purchase purchase) {
            UiCheckout.this.destroyPurchaseFlow(this.mRequestCode);
            super.onSuccess((OneShotRequestListener) purchase);
        }
    }
}
