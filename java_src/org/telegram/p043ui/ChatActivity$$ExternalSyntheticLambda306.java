package org.telegram.p043ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda306 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda306 implements RequestDelegate {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda306 INSTANCE = new ChatActivity$$ExternalSyntheticLambda306();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda306() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ChatActivity.lambda$markSponsoredAsRead$322(tLObject, tLRPC$TL_error);
    }
}
