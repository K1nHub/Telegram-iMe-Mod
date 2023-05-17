package com.iMe.domain.contacts;

import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$TL_contact;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredContactsByNameDelegate.kt */
/* loaded from: classes3.dex */
public final class FilteredContactsByNameDelegate$blockedUsers$2 extends Lambda implements Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>> {
    final /* synthetic */ FilteredContactsByNameDelegate this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredContactsByNameDelegate$blockedUsers$2(FilteredContactsByNameDelegate filteredContactsByNameDelegate) {
        super(0);
        this.this$0 = filteredContactsByNameDelegate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FilteredContactsByNameDelegate.kt */
    /* renamed from: com.iMe.domain.contacts.FilteredContactsByNameDelegate$blockedUsers$2$1 */
    /* loaded from: classes3.dex */
    public static final class C14241 extends Lambda implements Function1<TLRPC$TL_contact, Boolean> {
        final /* synthetic */ FilteredContactsByNameDelegate this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C14241(FilteredContactsByNameDelegate filteredContactsByNameDelegate) {
            super(1);
            this.this$0 = filteredContactsByNameDelegate;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(TLRPC$TL_contact it) {
            long j;
            boolean z;
            boolean userIsBlocked;
            Intrinsics.checkNotNullParameter(it, "it");
            long j2 = it.user_id;
            j = this.this$0.selfId;
            if (j2 != j) {
                userIsBlocked = this.this$0.userIsBlocked(it);
                if (userIsBlocked) {
                    z = true;
                    return Boolean.valueOf(z);
                }
            }
            z = false;
            return Boolean.valueOf(z);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
        HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
        FilteredContactsByNameDelegate filteredContactsByNameDelegate = this.this$0;
        usersByPredicate = filteredContactsByNameDelegate.getUsersByPredicate(new C14241(filteredContactsByNameDelegate));
        return usersByPredicate;
    }
}
