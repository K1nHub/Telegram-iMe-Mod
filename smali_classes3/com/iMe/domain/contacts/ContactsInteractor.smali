.class public final Lcom/iMe/domain/contacts/ContactsInteractor;
.super Ljava/lang/Object;
.source "ContactsInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactsInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactsInteractor.kt\ncom/iMe/domain/contacts/ContactsInteractor\n+ 2 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,75:1\n20#2:76\n20#2:77\n*S KotlinDebug\n*F\n+ 1 ContactsInteractor.kt\ncom/iMe/domain/contacts/ContactsInteractor\n*L\n24#1:76\n27#1:77\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;


# direct methods
.method public static synthetic $r8$lambda$4UNXdzsGakKRvuvmv_W84hrlsnU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/domain/contacts/ContactsInteractor;->deleteUsersById$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jwh_OeUC9woWZs8poLjnVROnCfs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/domain/contacts/ContactsInteractor;->deleteUsersById$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/manager/contacts/SelectedContactsDataStore;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;Lcom/iMe/gateway/TelegramControllersGateway;)V
    .locals 1

    const-string v0, "selectedContactsDataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramApi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    .line 14
    iput-object p2, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 15
    iput-object p3, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 16
    iput-object p4, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    return-void
.end method

.method public static final synthetic access$getTelegramApi$p(Lcom/iMe/domain/contacts/ContactsInteractor;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->telegramApi:Lcom/iMe/manager/TelegramApi;

    return-object p0
.end method

.method public static final synthetic access$toUser(Lcom/iMe/domain/contacts/ContactsInteractor;J)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/iMe/domain/contacts/ContactsInteractor;->toUser(J)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    return-object p0
.end method

.method private final deleteUsersById(Lio/reactivex/Single;)Lio/reactivex/Completable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/iMe/domain/contacts/ContactsInteractor$deleteUsersById$1;

    invoke-direct {v0, p0}, Lcom/iMe/domain/contacts/ContactsInteractor$deleteUsersById$1;-><init>(Lcom/iMe/domain/contacts/ContactsInteractor;)V

    new-instance v1, Lcom/iMe/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/iMe/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 49
    new-instance v0, Lcom/iMe/domain/contacts/ContactsInteractor$deleteUsersById$2;

    invoke-direct {v0, p0}, Lcom/iMe/domain/contacts/ContactsInteractor$deleteUsersById$2;-><init>(Lcom/iMe/domain/contacts/ContactsInteractor;)V

    new-instance v1, Lcom/iMe/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/domain/contacts/ContactsInteractor$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->flatMapCompletable(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "private fun Single<List<\u2026Users(it.toArrayList()) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final deleteUsersById$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final deleteUsersById$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/CompletableSource;

    return-object p0
.end method

.method private final processAddOrRemoveSelectedContact(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/iMe/domain/contacts/ContactSelectAction;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    .line 55
    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->addSelectedContactId(J)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p1, v3, [Lcom/iMe/domain/contacts/ContactSelectAction;

    .line 56
    sget-object p2, Lcom/iMe/domain/contacts/ContactSelectAction$OpenActionMode;->INSTANCE:Lcom/iMe/domain/contacts/ContactSelectAction$OpenActionMode;

    aput-object p2, p1, v2

    new-instance p2, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;-><init>(I)V

    aput-object p2, p1, v4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->addSelectedContactId(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance p1, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->size()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;-><init>(I)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->removeSelectedContactId(J)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p1, v3, [Lcom/iMe/domain/contacts/ContactSelectAction;

    .line 62
    new-instance p2, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;-><init>(I)V

    aput-object p2, p1, v2

    sget-object p2, Lcom/iMe/domain/contacts/ContactSelectAction$CloseActionMode;->INSTANCE:Lcom/iMe/domain/contacts/ContactSelectAction$CloseActionMode;

    aput-object p2, p1, v4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->removeSelectedContactId(J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 65
    new-instance p1, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->size()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;-><init>(I)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-array p1, v3, [Lcom/iMe/domain/contacts/ContactSelectAction;

    .line 68
    sget-object p2, Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;->INSTANCE:Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;

    aput-object p2, p1, v2

    new-instance p2, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->size()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/iMe/domain/contacts/ContactSelectAction$ChangeSelectedQty;-><init>(I)V

    aput-object p2, p1, v4

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final toUser(J)Lorg/telegram/tgnet/TLRPC$User;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addOrRemoveSelectedContact(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/iMe/domain/contacts/ContactSelectAction;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/iMe/domain/contacts/ContactsInteractor;->processAddOrRemoveSelectedContact(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final closeActionMode()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/domain/contacts/ContactSelectAction;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->clear()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/domain/contacts/ContactSelectAction;

    .line 34
    sget-object v1, Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;->INSTANCE:Lcom/iMe/domain/contacts/ContactSelectAction$ClearSelectedContacts;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/domain/contacts/ContactSelectAction$CloseActionMode;->INSTANCE:Lcom/iMe/domain/contacts/ContactSelectAction$CloseActionMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final deleteSelectedContacts()Lio/reactivex/Completable;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->getSelectedIdsAsList()Ljava/util/List;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-virtual {v1}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->clear()V

    .line 20
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "just(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, v0}, Lcom/iMe/domain/contacts/ContactsInteractor;->deleteUsersById(Lio/reactivex/Single;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
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

    .line 39
    iget-object v0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-virtual {v0}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->getSelectedContactsId()Landroidx/collection/LongSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public final indexOfSelectedId(J)I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/domain/contacts/ContactsInteractor;->selectedContactsDataStore:Lcom/iMe/manager/contacts/SelectedContactsDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/contacts/SelectedContactsDataStore;->indexOfSelectedId(J)I

    move-result p1

    return p1
.end method
