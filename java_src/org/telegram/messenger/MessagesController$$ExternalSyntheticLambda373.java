package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda373 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda373 INSTANCE = new MessagesController$$ExternalSyntheticLambda373();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda373() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$completeReadTask$204(tLObject, tLRPC$TL_error);
    }
}
