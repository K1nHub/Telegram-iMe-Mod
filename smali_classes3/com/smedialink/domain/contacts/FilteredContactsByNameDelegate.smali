.class public final Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;
.super Lorg/telegram/messenger/BaseController;
.source "FilteredContactsByNameDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilteredContactsByNameDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilteredContactsByNameDelegate.kt\ncom/smedialink/domain/contacts/FilteredContactsByNameDelegate\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,79:1\n511#2:80\n496#2,2:81\n498#2,4:86\n1741#3,3:83\n1043#3:90\n764#3:92\n855#3,2:93\n211#4:91\n212#4:95\n*S KotlinDebug\n*F\n+ 1 FilteredContactsByNameDelegate.kt\ncom/smedialink/domain/contacts/FilteredContactsByNameDelegate\n*L\n60#1:80\n60#1:81,2\n60#1:86,4\n61#1:83,3\n62#1:90\n70#1:92\n70#1:93,2\n69#1:91\n69#1:95\n*E\n"
.end annotation


# instance fields
.field private final blockedUsers$delegate:Lkotlin/Lazy;

.field private final blockedUsersArr$delegate:Lkotlin/Lazy;

.field private final mutualContacts$delegate:Lkotlin/Lazy;

.field private final mutualContactsArr$delegate:Lkotlin/Lazy;

.field private final notMutualContacts$delegate:Lkotlin/Lazy;

.field private final notMutualContactsArr$delegate:Lkotlin/Lazy;

.field private final onlineContactsArr$delegate:Lkotlin/Lazy;

.field private final onlineContactsDictionary$delegate:Lkotlin/Lazy;

.field private final selfId:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 13
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsDictionary$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$onlineContactsArr$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$onlineContactsArr$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsArr$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

    .line 28
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$mutualContactsArr$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$mutualContactsArr$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->mutualContactsArr$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$notMutualContacts$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$notMutualContacts$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$notMutualContactsArr$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$notMutualContactsArr$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->notMutualContactsArr$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$blockedUsers$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$blockedUsers$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->blockedUsers$delegate:Lkotlin/Lazy;

    .line 43
    new-instance p1, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;

    invoke-direct {p1, p0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;-><init>(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->blockedUsersArr$delegate:Lkotlin/Lazy;

    .line 47
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->selfId:J

    return-void
.end method

.method public static final synthetic access$getArrCharsByPredicate(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getArrCharsByPredicate(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMessagesController(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelfId$p(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;)J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->selfId:J

    return-wide v0
.end method

.method public static final synthetic access$getUsersByPredicate(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;Lkotlin/jvm/functions/Function1;)Ljava/util/HashMap;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getUsersByPredicate(Lkotlin/jvm/functions/Function1;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$userIsBlocked(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$userIsOnline(Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->userIsOnline(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    return p0
.end method

.method private final getArrCharsByPredicate(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    const-string v1, "contactsController.usersSectionsDict"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 496
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "entry.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 1741
    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1742
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    const-string v6, "it"

    .line 61
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 498
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1043
    new-instance v0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$getArrCharsByPredicate$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate$getArrCharsByPredicate$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private final getUsersByPredicate(Lkotlin/jvm/functions/Function1;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    const-string v2, "contactsController.usersSectionsDict"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "entry.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 764
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_contact;

    const-string v7, "it"

    .line 70
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "entry.key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 3

    .line 55
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final userIsOnline(Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 3

    .line 51
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final getBlockedUsers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->blockedUsers$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final getBlockedUsersArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->blockedUsersArr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMutualContacts()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMutualContactsArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->mutualContactsArr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNotMutualContacts()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final getNotMutualContactsArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->notMutualContactsArr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOnlineContactsArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsArr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOnlineContactsDictionary()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsDictionary$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method
