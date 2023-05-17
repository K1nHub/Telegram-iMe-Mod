package org.telegram.p044ui;

import org.telegram.p044ui.PassportActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.PassportActivity$PhoneConfirmationView$$ExternalSyntheticLambda10 */
/* loaded from: classes5.dex */
public final /* synthetic */ class C6097x3891375b implements RequestDelegate {
    public static final /* synthetic */ C6097x3891375b INSTANCE = new C6097x3891375b();

    private /* synthetic */ C6097x3891375b() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        PassportActivity.PhoneConfirmationView.lambda$onBackPressed$9(tLObject, tLRPC$TL_error);
    }
}
