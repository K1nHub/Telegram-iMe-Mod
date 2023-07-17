package com.iMe.domain.contacts;

import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$TL_contact;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilteredContactsByNameDelegate.kt */
/* loaded from: classes3.dex */
public final class FilteredContactsByNameDelegate$notMutualContactsArr$2 extends Lambda implements Function0<ArrayList<String>> {
    final /* synthetic */ FilteredContactsByNameDelegate this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilteredContactsByNameDelegate$notMutualContactsArr$2(FilteredContactsByNameDelegate filteredContactsByNameDelegate) {
        super(0);
        this.this$0 = filteredContactsByNameDelegate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FilteredContactsByNameDelegate.kt */
    /* renamed from: com.iMe.domain.contacts.FilteredContactsByNameDelegate$notMutualContactsArr$2$1 */
    /* loaded from: classes3.dex */
    public static final class C14401 extends Lambda implements Function1<TLRPC$TL_contact, Boolean> {
        public static final C14401 INSTANCE = new C14401();

        C14401() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(TLRPC$TL_contact it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.valueOf(!it.mutual);
        }
    }

    @Override // kotlin.jvm.functions.Function0
    public final ArrayList<String> invoke() {
        ArrayList<String> arrCharsByPredicate;
        arrCharsByPredicate = this.this$0.getArrCharsByPredicate(C14401.INSTANCE);
        return arrCharsByPredicate;
    }
}
