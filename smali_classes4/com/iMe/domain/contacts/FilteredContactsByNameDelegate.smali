.class public final Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;
.super Lorg/telegram/messenger/BaseController;
.source "FilteredContactsByNameDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilteredContactsByNameDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilteredContactsByNameDelegate.kt\ncom/iMe/domain/contacts/FilteredContactsByNameDelegate\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,86:1\n515#2:87\n500#2,2:88\n502#2,4:93\n1747#3,3:90\n1045#3:97\n766#3:99\n857#3,2:100\n215#4:98\n216#4:102\n*S KotlinDebug\n*F\n+ 1 FilteredContactsByNameDelegate.kt\ncom/iMe/domain/contacts/FilteredContactsByNameDelegate\n*L\n68#1:87\n68#1:88,2\n68#1:93,4\n69#1:90,3\n70#1:97\n77#1:99\n77#1:100,2\n76#1:98\n76#1:102\n*E\n"
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

.field private final premiumContacts$delegate:Lkotlin/Lazy;

.field private final premiumContactsArr$delegate:Lkotlin/Lazy;

.field private final selfId:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 10
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 12
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsDictionary$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsDictionary$delegate:Lkotlin/Lazy;

    .line 19
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsArr$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$onlineContactsArr$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsArr$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$premiumContactsArr$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$premiumContactsArr$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->premiumContactsArr$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$premiumContacts$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$premiumContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->premiumContacts$delegate:Lkotlin/Lazy;

    .line 33
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContactsArr$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$mutualContactsArr$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->mutualContactsArr$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$notMutualContacts$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$notMutualContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$notMutualContactsArr$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$notMutualContactsArr$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->notMutualContactsArr$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsers$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsers$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->blockedUsers$delegate:Lkotlin/Lazy;

    .line 52
    new-instance p1, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;

    invoke-direct {p1, p0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$blockedUsersArr$2;-><init>(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->blockedUsersArr$delegate:Lkotlin/Lazy;

    .line 56
    iget p1, p0, Lorg/telegram/messenger/BaseController;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide v0, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->selfId:J

    return-void
.end method

.method public static final synthetic access$getArrCharsByPredicate(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getArrCharsByPredicate(Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMessagesController(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelfId$p(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;)J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->selfId:J

    return-wide v0
.end method

.method public static final synthetic access$getUsersByPredicate(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;Lkotlin/jvm/functions/Function1;)Ljava/util/HashMap;
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getUsersByPredicate(Lkotlin/jvm/functions/Function1;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$userIsBlocked(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$userIsOnline(Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->userIsOnline(Lorg/telegram/tgnet/TLRPC$User;)Z

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

    .line 68
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    const-string v1, "contactsController.usersSectionsDict"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 500
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

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "entry.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 1747
    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1748
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

    .line 69
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

    .line 502
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 70
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 1045
    new-instance v0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$getArrCharsByPredicate$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate$getArrCharsByPredicate$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 67
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

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    const-string v2, "contactsController.usersSectionsDict"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
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

    .line 77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "entry.value"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 766
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 857
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

    .line 77
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 857
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "entry.key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 3

    .line 64
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

    .line 59
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

    .line 60
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 59
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

    .line 49
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->blockedUsers$delegate:Lkotlin/Lazy;

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

    .line 52
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->blockedUsersArr$delegate:Lkotlin/Lazy;

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

    .line 33
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

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

    .line 37
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->mutualContactsArr$delegate:Lkotlin/Lazy;

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

    .line 41
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

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

    .line 45
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->notMutualContactsArr$delegate:Lkotlin/Lazy;

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

    .line 19
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsArr$delegate:Lkotlin/Lazy;

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

    .line 12
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->onlineContactsDictionary$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final getPremiumContacts()Ljava/util/HashMap;
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

    .line 29
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->premiumContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public final getPremiumContactsArr()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->premiumContactsArr$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
