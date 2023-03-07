package org.telegram.p048ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.SessionsActivity$$ExternalSyntheticLambda19 */
/* loaded from: classes5.dex */
public final /* synthetic */ class SessionsActivity$$ExternalSyntheticLambda19 implements RequestDelegate {
    public static final /* synthetic */ SessionsActivity$$ExternalSyntheticLambda19 INSTANCE = new SessionsActivity$$ExternalSyntheticLambda19();

    private /* synthetic */ SessionsActivity$$ExternalSyntheticLambda19() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        SessionsActivity.lambda$createView$0(tLObject, tLRPC$TL_error);
    }
}
