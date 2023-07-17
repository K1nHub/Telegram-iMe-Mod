package org.telegram.p043ui;

import java.util.Comparator;
import org.telegram.messenger.ContactsController;
/* renamed from: org.telegram.ui.InviteContactsActivity$$ExternalSyntheticLambda1 */
/* loaded from: classes5.dex */
public final /* synthetic */ class InviteContactsActivity$$ExternalSyntheticLambda1 implements Comparator {
    public static final /* synthetic */ InviteContactsActivity$$ExternalSyntheticLambda1 INSTANCE = new InviteContactsActivity$$ExternalSyntheticLambda1();

    private /* synthetic */ InviteContactsActivity$$ExternalSyntheticLambda1() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$fetchContacts$2;
        lambda$fetchContacts$2 = InviteContactsActivity.lambda$fetchContacts$2((ContactsController.Contact) obj, (ContactsController.Contact) obj2);
        return lambda$fetchContacts$2;
    }
}
