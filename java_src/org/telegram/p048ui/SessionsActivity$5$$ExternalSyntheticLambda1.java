package org.telegram.p048ui;

import org.telegram.p048ui.SessionsActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.SessionsActivity$5$$ExternalSyntheticLambda1 */
/* loaded from: classes5.dex */
public final /* synthetic */ class SessionsActivity$5$$ExternalSyntheticLambda1 implements RequestDelegate {
    public static final /* synthetic */ SessionsActivity$5$$ExternalSyntheticLambda1 INSTANCE = new SessionsActivity$5$$ExternalSyntheticLambda1();

    private /* synthetic */ SessionsActivity$5$$ExternalSyntheticLambda1() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        SessionsActivity.C64975.lambda$onSessionTerminated$1(tLObject, tLRPC$TL_error);
    }
}
