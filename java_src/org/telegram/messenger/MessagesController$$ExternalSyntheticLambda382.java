package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda382 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda382 INSTANCE = new MessagesController$$ExternalSyntheticLambda382();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda382() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$deleteUserPhoto$102(tLObject, tLRPC$TL_error);
    }
}
