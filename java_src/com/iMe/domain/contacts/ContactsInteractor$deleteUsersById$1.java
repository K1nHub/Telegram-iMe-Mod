package com.iMe.domain.contacts;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$User;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContactsInteractor.kt */
/* loaded from: classes3.dex */
public final class ContactsInteractor$deleteUsersById$1 extends Lambda implements Function1<List<? extends Long>, List<? extends TLRPC$User>> {
    final /* synthetic */ ContactsInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactsInteractor$deleteUsersById$1(ContactsInteractor contactsInteractor) {
        super(1);
        this.this$0 = contactsInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends TLRPC$User> invoke(List<? extends Long> list) {
        return invoke2((List<Long>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<TLRPC$User> invoke2(List<Long> ids) {
        int collectionSizeOrDefault;
        TLRPC$User user;
        Intrinsics.checkNotNullParameter(ids, "ids");
        ContactsInteractor contactsInteractor = this.this$0;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(ids, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : ids) {
            user = contactsInteractor.toUser(number.longValue());
            arrayList.add(user);
        }
        return arrayList;
    }
}
