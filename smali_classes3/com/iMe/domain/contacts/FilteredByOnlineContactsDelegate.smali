.class public final Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;
.super Lorg/telegram/messenger/BaseController;
.source "FilteredByOnlineContactsDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$WhenMappings;
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

.field private final premiumContacts$delegate:Lkotlin/Lazy;

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

    .line 14
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 13
    iput-object p2, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->contacts:Ljava/util/ArrayList;

    .line 16
    new-instance p2, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$allContacts$2;

    invoke-direct {p2, p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$allContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->allContacts$delegate:Lkotlin/Lazy;

    .line 20
    new-instance p2, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$onlineContacts$2;

    invoke-direct {p2, p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$onlineContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->onlineContacts$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p2, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$premiumContacts$2;

    invoke-direct {p2, p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$premiumContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->premiumContacts$delegate:Lkotlin/Lazy;

    .line 28
    new-instance p2, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$mutualContacts$2;

    invoke-direct {p2, p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$mutualContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

    .line 32
    new-instance p2, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;

    invoke-direct {p2, p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$notMutualContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p2, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$blockedContacts$2;

    invoke-direct {p2, p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$blockedContacts$2;-><init>(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->blockedContacts$delegate:Lkotlin/Lazy;

    .line 40
    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide p1, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->selfId:J

    return-void
.end method

.method public static final synthetic access$getContacts$p(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)Ljava/util/ArrayList;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getMessagesController(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelfId$p(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;)J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->selfId:J

    return-wide v0
.end method

.method public static final synthetic access$userIsBlocked(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$userIsOnline(Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;Lorg/telegram/tgnet/TLRPC$User;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->userIsOnline(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p0

    return p0
.end method

.method private final userIsBlocked(Lorg/telegram/tgnet/TLRPC$TL_contact;)Z
    .locals 3

    .line 56
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

    .line 58
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

    .line 16
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->allContacts$delegate:Lkotlin/Lazy;

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

    .line 36
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->blockedContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getContactsByFilter(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/contacts/ContactsFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 53
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getAllContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getBlockedContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getNotMutualContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 47
    :pswitch_3
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getMutualContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 45
    :pswitch_4
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getPremiumContacts()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 43
    :pswitch_5
    invoke-virtual {p0}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getOnlineContacts()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 28
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->mutualContacts$delegate:Lkotlin/Lazy;

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

    .line 32
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->notMutualContacts$delegate:Lkotlin/Lazy;

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

    .line 20
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->onlineContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPremiumContacts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->premiumContacts$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
