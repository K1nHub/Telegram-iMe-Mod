package com.smedialink.domain.contacts;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$TL_contact;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredByOnlineContactsDelegate.kt */
/* loaded from: classes3.dex */
public final class FilteredByOnlineContactsDelegate$blockedContacts$2 extends Lambda implements Function0<ArrayList<TLRPC$TL_contact>> {
    final /* synthetic */ FilteredByOnlineContactsDelegate this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredByOnlineContactsDelegate$blockedContacts$2(FilteredByOnlineContactsDelegate filteredByOnlineContactsDelegate) {
        super(0);
        this.this$0 = filteredByOnlineContactsDelegate;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0011 A[SYNTHETIC] */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList<org.telegram.tgnet.TLRPC$TL_contact> invoke() {
        /*
            r10 = this;
            com.smedialink.domain.contacts.FilteredByOnlineContactsDelegate r0 = r10.this$0
            java.util.ArrayList r0 = com.smedialink.domain.contacts.FilteredByOnlineContactsDelegate.access$getContacts$p(r0)
            com.smedialink.domain.contacts.FilteredByOnlineContactsDelegate r1 = r10.this$0
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r0 = r0.iterator()
        L11:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L37
            java.lang.Object r3 = r0.next()
            r4 = r3
            org.telegram.tgnet.TLRPC$TL_contact r4 = (org.telegram.tgnet.TLRPC$TL_contact) r4
            long r5 = r4.user_id
            long r7 = com.smedialink.domain.contacts.FilteredByOnlineContactsDelegate.access$getSelfId$p(r1)
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 == 0) goto L30
            boolean r4 = com.smedialink.domain.contacts.FilteredByOnlineContactsDelegate.access$userIsBlocked(r1, r4)
            if (r4 == 0) goto L30
            r4 = 1
            goto L31
        L30:
            r4 = 0
        L31:
            if (r4 == 0) goto L11
            r2.add(r3)
            goto L11
        L37:
            java.util.ArrayList r0 = org.fork.utils.CollectionsUtilsKt.toArrayList(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.domain.contacts.FilteredByOnlineContactsDelegate$blockedContacts$2.invoke():java.util.ArrayList");
    }
}
