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
public final class FilteredContactsByNameDelegate$mutualContacts$2 extends Lambda implements Function0<HashMap<String, ArrayList<TLRPC$TL_contact>>> {
    final /* synthetic */ FilteredContactsByNameDelegate this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredContactsByNameDelegate$mutualContacts$2(FilteredContactsByNameDelegate filteredContactsByNameDelegate) {
        super(0);
        this.this$0 = filteredContactsByNameDelegate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FilteredContactsByNameDelegate.kt */
    /* renamed from: com.iMe.domain.contacts.FilteredContactsByNameDelegate$mutualContacts$2$1 */
    /* loaded from: classes3.dex */
    public static final class C14261 extends Lambda implements Function1<TLRPC$TL_contact, Boolean> {
        public static final C14261 INSTANCE = new C14261();

        C14261() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(TLRPC$TL_contact it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(it.mutual);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final HashMap<String, ArrayList<TLRPC$TL_contact>> invoke() {
        HashMap<String, ArrayList<TLRPC$TL_contact>> usersByPredicate;
        usersByPredicate = this.this$0.getUsersByPredicate(C14261.INSTANCE);
        return usersByPredicate;
    }
}
