package com.smedialink.domain.contacts;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.CollectionsUtilsKt;
import org.telegram.tgnet.TLRPC$TL_contact;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredByOnlineContactsDelegate.kt */
/* loaded from: classes3.dex */
public final class FilteredByOnlineContactsDelegate$allContacts$2 extends Lambda implements Function0<ArrayList<TLRPC$TL_contact>> {
    final /* synthetic */ FilteredByOnlineContactsDelegate this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredByOnlineContactsDelegate$allContacts$2(FilteredByOnlineContactsDelegate filteredByOnlineContactsDelegate) {
        super(0);
        this.this$0 = filteredByOnlineContactsDelegate;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ArrayList<TLRPC$TL_contact> invoke() {
        ArrayList arrayList;
        long j;
        arrayList = this.this$0.contacts;
        FilteredByOnlineContactsDelegate filteredByOnlineContactsDelegate = this.this$0;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            long j2 = ((TLRPC$TL_contact) obj).user_id;
            j = filteredByOnlineContactsDelegate.selfId;
            if (j2 != j) {
                arrayList2.add(obj);
            }
        }
        return CollectionsUtilsKt.toArrayList(arrayList2);
    }
}
