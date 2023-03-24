package org.telegram.p048ui;

import org.telegram.p048ui.DialogsActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.DialogsActivity$28$$ExternalSyntheticLambda5 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogsActivity$28$$ExternalSyntheticLambda5 implements RequestDelegate {
    public static final /* synthetic */ DialogsActivity$28$$ExternalSyntheticLambda5 INSTANCE = new DialogsActivity$28$$ExternalSyntheticLambda5();

    private /* synthetic */ DialogsActivity$28$$ExternalSyntheticLambda5() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        DialogsActivity.C552228.lambda$clearTopPeers$0(tLObject, tLRPC$TL_error);
    }
}
