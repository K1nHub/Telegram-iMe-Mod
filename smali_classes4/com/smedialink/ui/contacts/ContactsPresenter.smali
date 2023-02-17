.class public final Lcom/smedialink/ui/contacts/ContactsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "ContactsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/contacts/ContactsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactsPresenter.kt\ncom/smedialink/ui/contacts/ContactsPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,80:1\n1547#2:81\n1618#2,3:82\n1849#2,2:92\n67#3,6:85\n72#3:91\n*S KotlinDebug\n*F\n+ 1 ContactsPresenter.kt\ncom/smedialink/ui/contacts/ContactsPresenter\n*L\n22#1:81\n22#1:82,3\n60#1:92,2\n24#1:85,6\n33#1:91\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final contactInteractor:Lcom/smedialink/domain/contacts/ContactsInteractor;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/domain/contacts/ContactsInteractor;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 15
    iput-object p2, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->contactInteractor:Lcom/smedialink/domain/contacts/ContactsInteractor;

    return-void
.end method

.method public static final synthetic access$deleteAction(Lcom/smedialink/ui/contacts/ContactsPresenter;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/smedialink/ui/contacts/ContactsPresenter;->deleteAction()V

    return-void
.end method

.method private final deleteAction()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/domain/contacts/ContactSelectAction;

    .line 56
    sget-object v1, Lcom/smedialink/domain/contacts/ContactSelectAction$ClearSelectedContacts;->INSTANCE:Lcom/smedialink/domain/contacts/ContactSelectAction$ClearSelectedContacts;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;->INSTANCE:Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/contacts/ContactsPresenter;->executeActions(Ljava/util/List;)V

    return-void
.end method

.method private final executeActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/domain/contacts/ContactSelectAction;",
            ">;)V"
        }
    .end annotation

    .line 1849
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/domain/contacts/ContactSelectAction;

    .line 62
    instance-of v1, v0, Lcom/smedialink/domain/contacts/ContactSelectAction$OpenActionMode;

    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/contacts/ContactsView;

    invoke-interface {v0}, Lcom/smedialink/ui/contacts/ContactsView;->openActionMode()V

    goto :goto_0

    .line 65
    :cond_1
    instance-of v1, v0, Lcom/smedialink/domain/contacts/ContactSelectAction$CloseActionMode;

    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/contacts/ContactsView;

    invoke-interface {v0}, Lcom/smedialink/ui/contacts/ContactsView;->closeActionMode()V

    goto :goto_0

    .line 68
    :cond_2
    instance-of v1, v0, Lcom/smedialink/domain/contacts/ContactSelectAction$ClearSelectedContacts;

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/contacts/ContactsView;

    invoke-interface {v0}, Lcom/smedialink/ui/contacts/ContactsView;->clearSelectedContacts()V

    goto :goto_0

    .line 71
    :cond_3
    instance-of v1, v0, Lcom/smedialink/domain/contacts/ContactSelectAction$ChangeSelectedQty;

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/contacts/ContactsView;

    check-cast v0, Lcom/smedialink/domain/contacts/ContactSelectAction$ChangeSelectedQty;

    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/ContactSelectAction$ChangeSelectedQty;->getNewQty()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/smedialink/ui/contacts/ContactsView;->onSelectedQtyChange(I)V

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final addOrRemoveSelectedContact(J)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->contactInteractor:Lcom/smedialink/domain/contacts/ContactsInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/domain/contacts/ContactsInteractor;->addOrRemoveSelectedContact(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/contacts/ContactsPresenter;->executeActions(Ljava/util/List;)V

    return-void
.end method

.method public final closeActionMode()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->contactInteractor:Lcom/smedialink/domain/contacts/ContactsInteractor;

    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/ContactsInteractor;->closeActionMode()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smedialink/ui/contacts/ContactsPresenter;->executeActions(Ljava/util/List;)V

    return-void
.end method

.method public final deleteSelectedContacts()V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->contactInteractor:Lcom/smedialink/domain/contacts/ContactsInteractor;

    .line 30
    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/ContactsInteractor;->deleteSelectedContacts()Lio/reactivex/Completable;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "contactInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Completable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Completable;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 72
    new-instance v2, Lcom/smedialink/ui/contacts/ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/contacts/ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$1;-><init>(Lcom/smedialink/ui/contacts/ContactsPresenter;)V

    new-instance v3, Lcom/smedialink/ui/contacts/ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$2;

    invoke-direct {v3, v1, p0}, Lcom/smedialink/ui/contacts/ContactsPresenter$deleteSelectedContacts$$inlined$subscribeWithErrorHandle$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Lcom/smedialink/ui/contacts/ContactsPresenter;)V

    invoke-virtual {v0, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 36
    invoke-static {p0, v0, v4, v1, v4}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getSelectedContacts()Landroidx/collection/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->contactInteractor:Lcom/smedialink/domain/contacts/ContactsInteractor;

    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/ContactsInteractor;->getSelectedContacts()Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public final indexOfSelectedId(J)I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/contacts/ContactsPresenter;->contactInteractor:Lcom/smedialink/domain/contacts/ContactsInteractor;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/domain/contacts/ContactsInteractor;->indexOfSelectedId(J)I

    move-result p1

    return p1
.end method
