package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda387 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda387 INSTANCE = new MessagesController$$ExternalSyntheticLambda387();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda387() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$markMessageContentAsRead$200(tLObject, tLRPC$TL_error);
    }
}
