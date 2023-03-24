package org.telegram.p048ui;

import org.telegram.p048ui.DialogsActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.DialogsActivity$12$$ExternalSyntheticLambda3 */
/* loaded from: classes5.dex */
public final /* synthetic */ class DialogsActivity$12$$ExternalSyntheticLambda3 implements RequestDelegate {
    public static final /* synthetic */ DialogsActivity$12$$ExternalSyntheticLambda3 INSTANCE = new DialogsActivity$12$$ExternalSyntheticLambda3();

    private /* synthetic */ DialogsActivity$12$$ExternalSyntheticLambda3() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        DialogsActivity.C550112.lambda$showDeleteAlert$1(tLObject, tLRPC$TL_error);
    }
}
