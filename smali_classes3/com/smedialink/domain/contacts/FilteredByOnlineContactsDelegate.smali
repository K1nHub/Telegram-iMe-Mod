.class public final Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;
.super Lorg/telegram/messenger/BaseController;
.source "FilteredByOnlineContactsDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$WhenMappings;
    }
.end annotation


# instance fields
.field private final allContacts$delegate:Lkotlin/Lazy;

.field private final blockedContacts$delegate:Lkotlin/Lazy;

.field private final contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field private final mutualContacts$delegate:Lkotlin/Lazy;

.field private final notMutualContacts$delegate:Lkotlin/Lazy;

.field private final onlineContacts$delegate:Lkotlin/Lazy;

.field private final selfId:J


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contacts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 12
    iput-object p2, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->contacts:Ljava/util/ArrayList;

    .line 15
    new-instance p2, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$allContacts$2;

    invoke-direct {p2, p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$allContacts$2;-><init>(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->allContacts$delegate:Lkotlin/Lazy;

    .line 19
    new-instance p2, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$onlineContacts$2;

    invoke-direct {p2, p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$onlineContacts$2;-><init>(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->onlineContacts$delegate:Lkotlin/Lazy;

    .line 22
    new-instance p2, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$mutualContacts$2;

    invoke-direct {p2, p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$mutualContacts$2;-><init>(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p2, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;

    invoke-direct {p2, p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;-><init>(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

    .line 30
    new-instance p2, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$blockedContacts$2;

    invoke-direct {p2, p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$blockedContacts$2;-><init>(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->blockedContacts$delegate:Lkotlin/Lazy;

    .line 34
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide p1, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->selfId:J

    return-void
.end method

.method public static final synthetic access$getContacts$p(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)Ljava/util/ArrayList;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMessagesController(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelfId$p(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;)J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->selfId:J

    return-wide v0
.end method

.method public static final synthetic access$userIsBlocked(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$userIsOnline(Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->userIsOnline(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    return p0
.end method

.method private final userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 3

    .line 57
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

    .line 61
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
.method public final getAllContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->allContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getBlockedContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->blockedContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContactsByFilter(Lcom/smedialink/model/contacts/ContactsFilter;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/contacts/ContactsFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->getAllContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->getBlockedContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->getNotMutualContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->getMutualContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->getOnlineContacts()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getMutualContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNotMutualContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getOnlineContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->onlineContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
