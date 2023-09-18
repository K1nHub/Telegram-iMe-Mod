package org.solovyev.android.checkout;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
/* loaded from: classes6.dex */
public final class ActivityCheckout extends UiCheckout {
    private final Activity mActivity;
    private final IntentStarter mIntentStarter;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ActivityCheckout(Activity activity, Billing billing) {
        super(activity, billing);
        this.mIntentStarter = new IntentStarter() { // from class: org.solovyev.android.checkout.ActivityCheckout.1
            @Override // org.solovyev.android.checkout.IntentStarter
            public void startForResult(IntentSender intentSender, int i, Intent intent) throws IntentSender.SendIntentException {
                ActivityCheckout.this.mActivity.startIntentSenderForResult(intentSender, i, intent, 0, 0, 0);
            }
        };
        this.mActivity = activity;
    }

    @Override // org.solovyev.android.checkout.UiCheckout
    protected IntentStarter makeIntentStarter() {
        return this.mIntentStarter;
    }
}
