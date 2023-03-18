package org.telegram.p048ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.ChatActivity$$ExternalSyntheticLambda311 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ChatActivity$$ExternalSyntheticLambda311 implements RequestDelegate {
    public static final /* synthetic */ ChatActivity$$ExternalSyntheticLambda311 INSTANCE = new ChatActivity$$ExternalSyntheticLambda311();

    private /* synthetic */ ChatActivity$$ExternalSyntheticLambda311() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ChatActivity.lambda$markSponsoredAsRead$324(tLObject, tLRPC$TL_error);
    }
}
