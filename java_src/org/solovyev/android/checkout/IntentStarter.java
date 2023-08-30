package org.solovyev.android.checkout;

import android.content.Intent;
import android.content.IntentSender;
/* loaded from: classes4.dex */
public interface IntentStarter {
    void startForResult(IntentSender intentSender, int i, Intent intent) throws IntentSender.SendIntentException;
}
