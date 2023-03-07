package org.telegram.p048ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda309 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda309 implements RequestDelegate {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda309 INSTANCE = new ChatActivity$$ExternalSyntheticLambda309();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda309() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ChatActivity.lambda$markSponsoredAsRead$322(tLObject, tLRPC$TL_error);
    }
}
