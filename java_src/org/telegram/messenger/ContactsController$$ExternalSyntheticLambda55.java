package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.tgnet.TLRPC$TL_contact;
/* loaded from: classes4.dex */
public final /* synthetic */ class ContactsController$$ExternalSyntheticLambda55 implements Comparator {
    public static final /* synthetic */ ContactsController$$ExternalSyntheticLambda55 INSTANCE = new ContactsController$$ExternalSyntheticLambda55();

    private /* synthetic */ ContactsController$$ExternalSyntheticLambda55() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$getContactsHash$30;
        lambda$getContactsHash$30 = ContactsController.lambda$getContactsHash$30((TLRPC$TL_contact) obj, (TLRPC$TL_contact) obj2);
        return lambda$getContactsHash$30;
    }
}
