package org.solovyev.android.checkout;
/* loaded from: classes6.dex */
public final class BillingException extends Exception {
    private final int mResponse;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BillingException(int i) {
        super("An error occurred while performing billing request: " + ResponseCodes.toString(i));
        this.mResponse = i;
    }

    public int getResponse() {
        return this.mResponse;
    }
}
