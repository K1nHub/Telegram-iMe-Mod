package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda375 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda375 INSTANCE = new MessagesController$$ExternalSyntheticLambda375();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda375() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$markMentionMessageAsRead$201(tLObject, tLRPC$TL_error);
    }
}
