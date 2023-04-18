package org.telegram.messenger;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* loaded from: classes4.dex */
public final /* synthetic */ class ContactsController$$ExternalSyntheticLambda66 implements RequestDelegate {
    public static final /* synthetic */ ContactsController$$ExternalSyntheticLambda66 INSTANCE = new ContactsController$$ExternalSyntheticLambda66();

    private /* synthetic */ ContactsController$$ExternalSyntheticLambda66() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ContactsController.lambda$resetImportedContacts$13(tLObject, tLRPC$TL_error);
    }
}
