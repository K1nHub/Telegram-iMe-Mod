package org.telegram.messenger;

import java.util.Comparator;
import org.telegram.messenger.ContactsController;
/* loaded from: classes4.dex */
public final /* synthetic */ class ContactsController$$ExternalSyntheticLambda52 implements Comparator {
    public static final /* synthetic */ ContactsController$$ExternalSyntheticLambda52 INSTANCE = new ContactsController$$ExternalSyntheticLambda52();

    private /* synthetic */ ContactsController$$ExternalSyntheticLambda52() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$updateUnregisteredContacts$47;
        lambda$updateUnregisteredContacts$47 = ContactsController.lambda$updateUnregisteredContacts$47((ContactsController.Contact) obj, (ContactsController.Contact) obj2);
        return lambda$updateUnregisteredContacts$47;
    }
}
