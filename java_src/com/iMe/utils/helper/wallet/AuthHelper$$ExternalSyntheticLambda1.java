package com.iMe.utils.helper.wallet;

import com.iMe.fork.utils.Callbacks$Callback1;
import org.telegram.tgnet.TLRPC$User;
/* loaded from: classes4.dex */
public final /* synthetic */ class AuthHelper$$ExternalSyntheticLambda1 implements Callbacks$Callback1 {
    public static final /* synthetic */ AuthHelper$$ExternalSyntheticLambda1 INSTANCE = new AuthHelper$$ExternalSyntheticLambda1();

    private /* synthetic */ AuthHelper$$ExternalSyntheticLambda1() {
    }

    @Override // com.iMe.fork.utils.Callbacks$Callback1
    public final void invoke(Object obj) {
        AuthHelper.prepareAndStartAuthFlow$lambda$5((TLRPC$User) obj);
    }
}
