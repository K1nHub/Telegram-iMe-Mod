package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda380 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda380 INSTANCE = new MessagesController$$ExternalSyntheticLambda380();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda380() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$installTheme$106(tLObject, tLRPC$TL_error);
    }
}
