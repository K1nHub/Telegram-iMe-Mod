package org.telegram.p044ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda304 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda304 implements RequestDelegate {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda304 INSTANCE = new ChatActivity$$ExternalSyntheticLambda304();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda304() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ChatActivity.lambda$markSponsoredAsRead$319(tLObject, tLRPC$TL_error);
    }
}
