package org.telegram.p043ui;

import org.telegram.messenger.CallReceiver;
/* renamed from: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35 */
/* loaded from: classes5.dex */
public final /* synthetic */ class LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35 implements Runnable {
    public static final /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35 INSTANCE = new LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35();

    private /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CallReceiver.checkLastReceivedCall();
    }
}
