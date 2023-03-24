package org.telegram.p048ui;

import org.telegram.messenger.CallReceiver;
/* renamed from: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33 */
/* loaded from: classes5.dex */
public final /* synthetic */ class LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33 implements Runnable {
    public static final /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33 INSTANCE = new LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33();

    private /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CallReceiver.checkLastReceivedCall();
    }
}
