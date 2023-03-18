package com.smedialink.domain.contacts;

import com.smedialink.manager.TelegramApi;
import io.reactivex.CompletableSource;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.utils.CollectionsUtilsKt;
import org.telegram.tgnet.TLRPC$User;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContactsInteractor.kt */
/* loaded from: classes3.dex */
public final class ContactsInteractor$deleteUsersById$2 extends Lambda implements Function1<List<? extends TLRPC$User>, CompletableSource> {
    final /* synthetic */ ContactsInteractor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactsInteractor$deleteUsersById$2(ContactsInteractor contactsInteractor) {
        super(1);
        this.this$0 = contactsInteractor;
    }

    @Override // kotlin.jvm.functions.Function1
    public final CompletableSource invoke(List<? extends TLRPC$User> it) {
        TelegramApi telegramApi;
        Intrinsics.checkNotNullParameter(it, "it");
        telegramApi = this.this$0.telegramApi;
        return telegramApi.deleteUsers(CollectionsUtilsKt.toArrayList(it));
    }
}
