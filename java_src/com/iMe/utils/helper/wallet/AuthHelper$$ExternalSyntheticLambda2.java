package com.iMe.utils.helper.wallet;

import com.iMe.fork.utils.Callbacks$Callback2;
import org.telegram.tgnet.TLRPC$TL_messages_requestUrlAuth;
/* loaded from: classes4.dex */
public final /* synthetic */ class AuthHelper$$ExternalSyntheticLambda2 implements Callbacks$Callback2 {
    public static final /* synthetic */ AuthHelper$$ExternalSyntheticLambda2 INSTANCE = new AuthHelper$$ExternalSyntheticLambda2();

    private /* synthetic */ AuthHelper$$ExternalSyntheticLambda2() {
    }

    @Override // com.iMe.fork.utils.Callbacks$Callback2
    public final void invoke(Object obj, Object obj2) {
        AuthHelper.didReceivedNotification$lambda$2((String) obj, (TLRPC$TL_messages_requestUrlAuth) obj2);
    }
}
