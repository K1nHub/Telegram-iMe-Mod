package com.smedialink.domain.contacts;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.MessagesController;
import org.telegram.tgnet.TLRPC$TL_contact;
import org.telegram.tgnet.TLRPC$User;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredContactsByNameDelegate.kt */
/* loaded from: classes3.dex */
public final class FilteredContactsByNameDelegate$onlineContactsArr$2 extends Lambda implements Function0<ArrayList<String>> {
    final /* synthetic */ FilteredContactsByNameDelegate this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredContactsByNameDelegate$onlineContactsArr$2(FilteredContactsByNameDelegate filteredContactsByNameDelegate) {
        super(0);
        this.this$0 = filteredContactsByNameDelegate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FilteredContactsByNameDelegate.kt */
    /* renamed from: com.smedialink.domain.contacts.FilteredContactsByNameDelegate$onlineContactsArr$2$1 */
    /* loaded from: classes3.dex */
    public static final class C14461 extends Lambda implements Function1<TLRPC$TL_contact, Boolean> {
        final /* synthetic */ FilteredContactsByNameDelegate this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14461(FilteredContactsByNameDelegate filteredContactsByNameDelegate) {
            super(1);
            this.this$0 = filteredContactsByNameDelegate;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(TLRPC$TL_contact it) {
            long j;
            boolean z;
            MessagesController messagesController;
            boolean userIsOnline;
            Intrinsics.checkNotNullParameter(it, "it");
            long j2 = it.user_id;
            j = this.this$0.selfId;
            if (j2 != j) {
                FilteredContactsByNameDelegate filteredContactsByNameDelegate = this.this$0;
                messagesController = filteredContactsByNameDelegate.getMessagesController();
                TLRPC$User user = messagesController.getUser(Long.valueOf(it.user_id));
                Intrinsics.checkNotNullExpressionValue(user, "messagesController.getUser(it.user_id)");
                userIsOnline = filteredContactsByNameDelegate.userIsOnline(user);
                if (userIsOnline) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final ArrayList<String> invoke() {
        ArrayList<String> arrCharsByPredicate;
        FilteredContactsByNameDelegate filteredContactsByNameDelegate = this.this$0;
        arrCharsByPredicate = filteredContactsByNameDelegate.getArrCharsByPredicate(new C14461(filteredContactsByNameDelegate));
        return arrCharsByPredicate;
    }
}
