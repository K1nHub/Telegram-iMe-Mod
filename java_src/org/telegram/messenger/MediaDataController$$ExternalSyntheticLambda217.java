package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class MediaDataController$$ExternalSyntheticLambda217 implements RequestDelegate {
    public static final /* synthetic */ MediaDataController$$ExternalSyntheticLambda217 INSTANCE = new MediaDataController$$ExternalSyntheticLambda217();

    private /* synthetic */ MediaDataController$$ExternalSyntheticLambda217() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        MediaDataController.lambda$saveDraft$175(tLObject, tLRPC$TL_error);
    }
}
