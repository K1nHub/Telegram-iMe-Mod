package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$TL_contact;
/* loaded from: classes4.dex */
public final /* synthetic */ class ContactsController$$ExternalSyntheticLambda54 implements Comparator {
    public static final /* synthetic */ ContactsController$$ExternalSyntheticLambda54 INSTANCE = new ContactsController$$ExternalSyntheticLambda54();

    private /* synthetic */ ContactsController$$ExternalSyntheticLambda54() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$getContactsHash$29;
        lambda$getContactsHash$29 = ContactsController.lambda$getContactsHash$29((TLRPC$TL_contact) obj, (TLRPC$TL_contact) obj2);
        return lambda$getContactsHash$29;
    }
}
