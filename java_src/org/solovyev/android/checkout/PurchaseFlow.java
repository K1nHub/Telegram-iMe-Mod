package org.solovyev.android.checkout;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.telegram.messenger.XiaomiUtilities;
/* loaded from: classes6.dex */
public final class PurchaseFlow implements CancellableRequestListener<PendingIntent> {
    private final IntentStarter mIntentStarter;
    private RequestListener<Purchase> mListener;
    private final int mRequestCode;
    private final PurchaseVerifier mVerifier;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PurchaseFlow(IntentStarter intentStarter, int i, RequestListener<Purchase> requestListener, PurchaseVerifier purchaseVerifier) {
        this.mIntentStarter = intentStarter;
        this.mRequestCode = i;
        this.mListener = requestListener;
        this.mVerifier = purchaseVerifier;
    }

    @Override // org.solovyev.android.checkout.RequestListener
    public void onSuccess(PendingIntent pendingIntent) {
        if (this.mListener == null) {
            return;
        }
        try {
            this.mIntentStarter.startForResult(pendingIntent.getIntentSender(), this.mRequestCode, new Intent());
        } catch (IntentSender.SendIntentException | RuntimeException e) {
            handleError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityResult(int i, int i2, Intent intent) {
        try {
            if (intent == null) {
                handleError(XiaomiUtilities.OP_DATA_CONNECT_CHANGE);
                return;
            }
            int intExtra = intent.getIntExtra("RESPONSE_CODE", 0);
            if (i2 == -1 && intExtra == 0) {
                this.mVerifier.verify(Collections.singletonList(Purchase.fromJson(intent.getStringExtra("INAPP_PURCHASE_DATA"), intent.getStringExtra("INAPP_DATA_SIGNATURE"))), new VerificationListener());
                return;
            }
            handleError(intExtra);
        } catch (RuntimeException | JSONException e) {
            handleError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleError(int i) {
        Billing.error("Error response: " + i + " in Purchase/ChangePurchase request");
        onError(i, new BillingException(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleError(Exception exc) {
        Billing.error("Exception in Purchase/ChangePurchase request: ", exc);
        onError(10001, exc);
    }

    @Override // org.solovyev.android.checkout.RequestListener
    public void onError(int i, Exception exc) {
        RequestListener<Purchase> requestListener = this.mListener;
        if (requestListener == null) {
            return;
        }
        requestListener.onError(i, exc);
    }

    @Override // org.solovyev.android.checkout.CancellableRequestListener
    public void cancel() {
        RequestListener<Purchase> requestListener = this.mListener;
        if (requestListener == null) {
            return;
        }
        Billing.cancel(requestListener);
        this.mListener = null;
    }

    /* loaded from: classes6.dex */
    private class VerificationListener implements RequestListener<List<Purchase>> {
        private VerificationListener() {
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onSuccess(List<Purchase> list) {
            if (list.isEmpty()) {
                PurchaseFlow.this.handleError((int) XiaomiUtilities.OP_BLUETOOTH_CHANGE);
            } else if (PurchaseFlow.this.mListener == null) {
            } else {
                PurchaseFlow.this.mListener.onSuccess(list.get(0));
            }
        }

        @Override // org.solovyev.android.checkout.RequestListener
        public void onError(int i, Exception exc) {
            if (i == 10001) {
                PurchaseFlow.this.handleError(exc);
            } else {
                PurchaseFlow.this.handleError(i);
            }
        }
    }
}
