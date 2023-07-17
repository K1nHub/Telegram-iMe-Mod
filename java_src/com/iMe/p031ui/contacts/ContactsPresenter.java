package com.iMe.p031ui.contacts;

import androidx.collection.LongSparseArray;
import com.iMe.domain.contacts.ContactSelectAction;
import com.iMe.domain.contacts.ContactsInteractor;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Completable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: ContactsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.contacts.ContactsPresenter */
/* loaded from: classes3.dex */
public final class ContactsPresenter extends BasePresenter<ContactsView> {
    private final ContactsInteractor contactInteractor;
    private final SchedulersProvider schedulersProvider;

    public ContactsPresenter(SchedulersProvider schedulersProvider, ContactsInteractor contactInteractor) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(contactInteractor, "contactInteractor");
        this.schedulersProvider = schedulersProvider;
        this.contactInteractor = contactInteractor;
    }

    public final void deleteSelectedContacts() {
        Completable observeOn = this.contactInteractor.deleteSelectedContacts().observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "contactInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new Action() { // from class: com.iMe.ui.contacts.ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$1
            @Override // io.reactivex.functions.Action
            public final void run() {
                ContactsPresenter.this.deleteAction();
            }
        }, new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2043x3873914f((BaseView) getViewState(), this)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void addOrRemoveSelectedContact(long j) {
        executeActions(this.contactInteractor.addOrRemoveSelectedContact(j));
    }

    public final void closeActionMode() {
        executeActions(this.contactInteractor.closeActionMode());
    }

    public final LongSparseArray<Void> getSelectedContacts() {
        return this.contactInteractor.getSelectedContacts();
    }

    public final int indexOfSelectedId(long j) {
        return this.contactInteractor.indexOfSelectedId(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void deleteAction() {
        List<? extends ContactSelectAction> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ContactSelectAction[]{ContactSelectAction.ClearSelectedContacts.INSTANCE, ContactSelectAction.CloseActionMode.INSTANCE});
        executeActions(listOf);
    }

    private final void executeActions(List<? extends ContactSelectAction> list) {
        for (ContactSelectAction contactSelectAction : list) {
            if (contactSelectAction instanceof ContactSelectAction.OpenActionMode) {
                ((ContactsView) getViewState()).openActionMode();
            } else if (contactSelectAction instanceof ContactSelectAction.CloseActionMode) {
                ((ContactsView) getViewState()).closeActionMode();
            } else if (contactSelectAction instanceof ContactSelectAction.ClearSelectedContacts) {
                ((ContactsView) getViewState()).clearSelectedContacts();
            } else if (contactSelectAction instanceof ContactSelectAction.ChangeSelectedQty) {
                ((ContactsView) getViewState()).onSelectedQtyChange(((ContactSelectAction.ChangeSelectedQty) contactSelectAction).getNewQty());
            }
        }
    }
}
