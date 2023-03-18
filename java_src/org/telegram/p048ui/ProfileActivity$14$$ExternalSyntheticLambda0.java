package org.telegram.p048ui;

import org.telegram.p048ui.ProfileActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.ProfileActivity$14$$ExternalSyntheticLambda0 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ProfileActivity$14$$ExternalSyntheticLambda0 implements RequestDelegate {
    public static final /* synthetic */ ProfileActivity$14$$ExternalSyntheticLambda0 INSTANCE = new ProfileActivity$14$$ExternalSyntheticLambda0();

    private /* synthetic */ ProfileActivity$14$$ExternalSyntheticLambda0() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ProfileActivity.DialogInterface$OnClickListenerC627214.lambda$onClick$0(tLObject, tLRPC$TL_error);
    }
}
