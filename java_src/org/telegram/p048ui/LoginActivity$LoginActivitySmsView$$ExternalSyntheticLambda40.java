package org.telegram.p048ui;

import org.telegram.p048ui.LoginActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40 */
/* loaded from: classes5.dex */
public final /* synthetic */ class LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40 implements RequestDelegate {
    public static final /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40 INSTANCE = new LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40();

    private /* synthetic */ LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        LoginActivity.LoginActivitySmsView.lambda$onBackPressed$41(tLObject, tLRPC$TL_error);
    }
}
