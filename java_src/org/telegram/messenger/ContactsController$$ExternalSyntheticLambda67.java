package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class ContactsController$$ExternalSyntheticLambda67 implements RequestDelegate {
    public static final /* synthetic */ ContactsController$$ExternalSyntheticLambda67 INSTANCE = new ContactsController$$ExternalSyntheticLambda67();

    private /* synthetic */ ContactsController$$ExternalSyntheticLambda67() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ContactsController.lambda$resetImportedContacts$14(tLObject, tLRPC$TL_error);
    }
}
