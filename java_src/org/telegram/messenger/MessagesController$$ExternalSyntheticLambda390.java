package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MessagesController$$ExternalSyntheticLambda390 implements RequestDelegate {
    public static final /* synthetic */ MessagesController$$ExternalSyntheticLambda390 INSTANCE = new MessagesController$$ExternalSyntheticLambda390();

    private /* synthetic */ MessagesController$$ExternalSyntheticLambda390() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MessagesController.lambda$hidePromoDialog$118(tLObject, tLRPC$TL_error);
    }
}
