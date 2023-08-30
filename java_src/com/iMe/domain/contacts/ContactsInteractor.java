package com.iMe.domain.contacts;

import androidx.collection.LongSparseArray;
import com.iMe.domain.contacts.ContactSelectAction;
import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.manager.TelegramApi;
import com.iMe.manager.contacts.SelectedContactsDataStore;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Completable;
import io.reactivex.CompletableSource;
import io.reactivex.Single;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
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
        final Function1<List<? extends Long>, List<? extends TLRPC$User>> function1 = new Function1<List<? extends Long>, List<? extends TLRPC$User>>() { // from class: com.iMe.domain.contacts.ContactsInteractor$deleteUsersById$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
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
                ContactsInteractor contactsInteractor = ContactsInteractor.this;
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(ids, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (Number number : ids) {
                    user = contactsInteractor.toUser(number.longValue());
                    arrayList.add(user);
                }
                return arrayList;
            }
        };
        Single subscribeOn = single.map(new Function() { // from class: com.iMe.domain.contacts.ContactsInteractor$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List deleteUsersById$lambda$0;
                deleteUsersById$lambda$0 = ContactsInteractor.deleteUsersById$lambda$0(Function1.this, obj);
                return deleteUsersById$lambda$0;
            }
        }).subscribeOn(this.schedulersProvider.mo717io());
        final Function1<List<? extends TLRPC$User>, CompletableSource> function12 = new Function1<List<? extends TLRPC$User>, CompletableSource>() { // from class: com.iMe.domain.contacts.ContactsInteractor$deleteUsersById$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CompletableSource invoke(List<? extends TLRPC$User> it) {
                TelegramApi telegramApi;
                Intrinsics.checkNotNullParameter(it, "it");
                telegramApi = ContactsInteractor.this.telegramApi;
                return telegramApi.deleteUsers(CollectionsUtilsKt.toArrayList(it));
            }
        };
        Completable flatMapCompletable = subscribeOn.flatMapCompletable(new Function() { // from class: com.iMe.domain.contacts.ContactsInteractor$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                CompletableSource deleteUsersById$lambda$1;
                deleteUsersById$lambda$1 = ContactsInteractor.deleteUsersById$lambda$1(Function1.this, obj);
                return deleteUsersById$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMapCompletable, "private fun Single<List<…Users(it.toArrayList()) }");
        return flatMapCompletable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List deleteUsersById$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CompletableSource deleteUsersById$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (CompletableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TLRPC$User toUser(long j) {
        return TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(Long.valueOf(j));
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
}
