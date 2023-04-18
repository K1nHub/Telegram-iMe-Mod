package org.telegram.p044ui;

import org.telegram.messenger.CallReceiver;
/* renamed from: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36 */
/* loaded from: classes5.dex */
public final /* synthetic */ class LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36 implements Runnable {
    public static final /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36 INSTANCE = new LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36();

    private /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CallReceiver.checkLastReceivedCall();
    }
}
