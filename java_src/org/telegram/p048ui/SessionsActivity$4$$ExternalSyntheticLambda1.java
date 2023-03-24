package org.telegram.p048ui;

import org.telegram.p048ui.SessionsActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.SessionsActivity$4$$ExternalSyntheticLambda1 */
/* loaded from: classes5.dex */
public final /* synthetic */ class SessionsActivity$4$$ExternalSyntheticLambda1 implements RequestDelegate {
    public static final /* synthetic */ SessionsActivity$4$$ExternalSyntheticLambda1 INSTANCE = new SessionsActivity$4$$ExternalSyntheticLambda1();

    private /* synthetic */ SessionsActivity$4$$ExternalSyntheticLambda1() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        SessionsActivity.C64734.lambda$onSessionTerminated$1(tLObject, tLRPC$TL_error);
    }
}
