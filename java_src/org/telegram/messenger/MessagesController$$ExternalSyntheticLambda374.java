package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda374 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda374 INSTANCE = new MessagesController$$ExternalSyntheticLambda374();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda374() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$completeReadTask$205(tLObject, tLRPC$TL_error);
    }
}
