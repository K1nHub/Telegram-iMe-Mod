package com.smedialink.domain.contacts;

import androidx.collection.LongSparseArray;
import com.smedialink.domain.contacts.ContactSelectAction;
import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.manager.TelegramApi;
import com.smedialink.manager.contacts.SelectedContactsDataStore;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.CollectionsUtilsKt;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: ContactsInteractor.kt */
/* loaded from: classes3.dex */
public final class ContactsInteractor {
    private final SchedulersProvider schedulersProvider;
    private final SelectedContactsDataStore selectedContactsDataStore;
    private final TelegramApi telegramApi;
    private final TelegramControllersGateway telegramControllersGateway;

    public ContactsInteractor(SelectedContactsDataStore selectedContactsDataStore, SchedulersProvider schedulersProvider, TelegramApi telegramApi, TelegramControllersGateway telegramControllersGateway) {
        Intrinsics.checkNotNullParameter(selectedContactsDataStore, "selectedContactsDataStore");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramApi, "telegramApi");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        this.selectedContactsDataStore = selectedContactsDataStore;
        this.schedulersProvider = schedulersProvider;
        this.telegramApi = telegramApi;
        this.telegramControllersGateway = telegramControllersGateway;
    }

    public final Completable deleteSelectedContacts() {
        List<Long> selectedIdsAsList = this.selectedContactsDataStore.getSelectedIdsAsList();
        this.selectedContactsDataStore.clear();
        Single<List<Long>> just = Single.just(selectedIdsAsList);
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return deleteUsersById(just);
    }

    public final List<ContactSelectAction> addOrRemoveSelectedContact(long j) {
        return processAddOrRemoveSelectedContact(j);
    }

    public final List<ContactSelectAction> closeActionMode() {
        List<ContactSelectAction> listOf;
        this.selectedContactsDataStore.clear();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ContactSelectAction[]{ContactSelectAction.ClearSelectedContacts.INSTANCE, ContactSelectAction.CloseActionMode.INSTANCE});
        return listOf;
    }

    public final int indexOfSelectedId(long j) {
        return this.selectedContactsDataStore.indexOfSelectedId(j);
    }

    public final LongSparseArray<Void> getSelectedContacts() {
        return this.selectedContactsDataStore.getSelectedContactsId();
    }

    private final Completable deleteUsersById(Single<List<Long>> single) {
        Completable flatMapCompletable = single.map(new Function() { // from class: com.smedialink.domain.contacts.ContactsInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List m1234deleteUsersById$lambda1;
                m1234deleteUsersById$lambda1 = ContactsInteractor.m1234deleteUsersById$lambda1(ContactsInteractor.this, (List) obj);
                return m1234deleteUsersById$lambda1;
            }
        }).subscribeOn(this.schedulersProvider.mo708io()).flatMapCompletable(new Function() { // from class: com.smedialink.domain.contacts.ContactsInteractor$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                CompletableSource m1235deleteUsersById$lambda2;
                m1235deleteUsersById$lambda2 = ContactsInteractor.m1235deleteUsersById$lambda2(ContactsInteractor.this, (List) obj);
                return m1235deleteUsersById$lambda2;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMapCompletable, "this\n                   …Users(it.toArrayList()) }");
        return flatMapCompletable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteUsersById$lambda-2  reason: not valid java name */
    public static final CompletableSource m1235deleteUsersById$lambda2(ContactsInteractor this$0, List it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        return this$0.telegramApi.deleteUsers(CollectionsUtilsKt.toArrayList(it));
    }

    private final TLRPC$User toUser(long j) {
        return TelegramControllersGateway.DefaultImpls.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(Long.valueOf(j));
    }

    private final List<ContactSelectAction> processAddOrRemoveSelectedContact(long j) {
        List<ContactSelectAction> listOf;
        List<ContactSelectAction> listOf2;
        List<ContactSelectAction> listOf3;
        List<ContactSelectAction> listOf4;
        List<ContactSelectAction> listOf5;
        SelectedContactsDataStore selectedContactsDataStore = this.selectedContactsDataStore;
        if (selectedContactsDataStore.size() == 0 && selectedContactsDataStore.addSelectedContactId(j)) {
            listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new ContactSelectAction[]{ContactSelectAction.OpenActionMode.INSTANCE, new ContactSelectAction.ChangeSelectedQty(selectedContactsDataStore.size())});
            return listOf5;
        } else if (selectedContactsDataStore.addSelectedContactId(j)) {
            listOf4 = CollectionsKt__CollectionsJVMKt.listOf(new ContactSelectAction.ChangeSelectedQty(selectedContactsDataStore.size()));
            return listOf4;
        } else if (selectedContactsDataStore.size() == 1 && selectedContactsDataStore.removeSelectedContactId(j)) {
            listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new ContactSelectAction[]{new ContactSelectAction.ChangeSelectedQty(selectedContactsDataStore.size()), ContactSelectAction.CloseActionMode.INSTANCE});
            return listOf3;
        } else if (selectedContactsDataStore.removeSelectedContactId(j)) {
            listOf2 = CollectionsKt__CollectionsJVMKt.listOf(new ContactSelectAction.ChangeSelectedQty(selectedContactsDataStore.size()));
            return listOf2;
        } else {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ContactSelectAction[]{ContactSelectAction.ClearSelectedContacts.INSTANCE, new ContactSelectAction.ChangeSelectedQty(selectedContactsDataStore.size())});
            return listOf;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: deleteUsersById$lambda-1  reason: not valid java name */
    public static final List m1234deleteUsersById$lambda1(ContactsInteractor this$0, List ids) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(ids, "ids");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(ids, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = ids.iterator();
        while (it.hasNext()) {
            arrayList.add(this$0.toUser(((Number) it.next()).longValue()));
        }
        return arrayList;
    }
}
