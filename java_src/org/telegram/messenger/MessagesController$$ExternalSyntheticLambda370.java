package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda370 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda370 INSTANCE = new MessagesController$$ExternalSyntheticLambda370();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda370() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$removeSuggestion$29(tLObject, tLRPC$TL_error);
    }
}
