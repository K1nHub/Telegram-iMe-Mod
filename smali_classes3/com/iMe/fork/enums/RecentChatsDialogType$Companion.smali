.class public final Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;
.super Ljava/lang/Object;
.source "RecentChatsDialogType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/enums/RecentChatsDialogType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentChatsDialogType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentChatsDialogType.kt\ncom/iMe/fork/enums/RecentChatsDialogType$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1549#2:52\n1620#2,3:53\n1549#2:56\n1620#2,3:57\n*S KotlinDebug\n*F\n+ 1 RecentChatsDialogType.kt\ncom/iMe/fork/enums/RecentChatsDialogType$Companion\n*L\n28#1:52\n28#1:53,3\n32#1:56\n32#1:57,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/enums/RecentChatsDialogType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDialogType(Lorg/telegram/tgnet/TLObject;J)Lcom/iMe/fork/enums/RecentChatsDialogType;
    .locals 1

    .line 37
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 38
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/iMe/fork/enums/RecentChatsDialogType;->BOT:Lcom/iMe/fork/enums/RecentChatsDialogType;

    goto :goto_1

    .line 39
    :cond_0
    sget-object p1, Lcom/iMe/fork/enums/RecentChatsDialogType;->CHAT:Lcom/iMe/fork/enums/RecentChatsDialogType;

    goto :goto_1

    .line 42
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_5

    .line 43
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 44
    :cond_2
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/ChatObject;->isForum(IJ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/iMe/fork/enums/RecentChatsDialogType;->FORUM:Lcom/iMe/fork/enums/RecentChatsDialogType;

    goto :goto_1

    .line 45
    :cond_3
    sget-object p1, Lcom/iMe/fork/enums/RecentChatsDialogType;->CHANNEL:Lcom/iMe/fork/enums/RecentChatsDialogType;

    goto :goto_1

    .line 43
    :cond_4
    :goto_0
    sget-object p1, Lcom/iMe/fork/enums/RecentChatsDialogType;->GROUP:Lcom/iMe/fork/enums/RecentChatsDialogType;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/fork/enums/RecentChatsDialogType;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "enums"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/fork/enums/RecentChatsDialogType;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/RecentChatsDialogType;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-static {v1}, Lcom/iMe/fork/enums/RecentChatsDialogType;->valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/RecentChatsDialogType;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    .line 28
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
