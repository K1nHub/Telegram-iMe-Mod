package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda384 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda384 INSTANCE = new MessagesController$$ExternalSyntheticLambda384();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda384() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$saveTheme$105(tLObject, tLRPC$TL_error);
    }
}
