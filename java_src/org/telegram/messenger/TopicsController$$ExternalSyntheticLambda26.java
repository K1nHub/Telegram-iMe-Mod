package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class TopicsController$$ExternalSyntheticLambda26 implements RequestDelegate {
    public static final /* synthetic */ TopicsController$$ExternalSyntheticLambda26 INSTANCE = new TopicsController$$ExternalSyntheticLambda26();

    private /* synthetic */ TopicsController$$ExternalSyntheticLambda26() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        TopicsController.lambda$toggleShowTopic$14(tLObject, tLRPC$TL_error);
    }
}
