.class public final Lcom/iMe/fork/controller/ToolsController;
.super Lorg/telegram/messenger/BaseController;
.source "ToolsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/ToolsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToolsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolsController.kt\ncom/iMe/fork/controller/ToolsController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,243:1\n9496#2,2:244\n9646#2,4:246\n215#3,2:250\n766#4:252\n857#4,2:253\n1179#4,2:255\n1253#4,4:257\n1045#4:261\n1549#4:262\n1620#4,3:263\n1549#4:266\n1620#4,3:267\n1179#4,2:270\n1253#4,4:272\n*S KotlinDebug\n*F\n+ 1 ToolsController.kt\ncom/iMe/fork/controller/ToolsController\n*L\n83#1:244,2\n83#1:246,4\n142#1:250,2\n190#1:252\n190#1:253,2\n191#1:255,2\n191#1:257,4\n221#1:261\n222#1:262\n222#1:263,3\n225#1:266\n225#1:267,3\n229#1:270,2\n229#1:272,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/ToolsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isChannelWidePostsEnabled:Z

.field private isMessagePopupAggregatorEnabled:Z

.field private isRememberLastDialogEnabled:Z

.field private isShowChannelBottomPanel:Z

.field private isSilentSendingEnabled:Z

.field private isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

.field private isSwipeToGoToNextUnreadDialogEnabled:Z

.field private rememberLastDialogId:J

.field private rememberLastDialogTopicId:J

.field private selectedChatAttachAlertButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/iMe/fork/enums/DialogType;",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagePopupItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/MessagePopupItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedSentMessageFont:Lcom/iMe/fork/enums/SentMessageFont;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/ToolsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/ToolsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    .line 237
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/ToolsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 15
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 18
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSilentSendingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    .line 19
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ToolsController;->selectedSentMessageFont:Lcom/iMe/fork/enums/SentMessageFont;

    .line 21
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRememberLastDialogEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    .line 22
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogId:J

    .line 23
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogTopicId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogTopicId:J

    .line 26
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    .line 28
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    .line 29
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    .line 30
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowChannelBottomPanel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    .line 32
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    .line 33
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    .line 35
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isMessagePopupAggregatorEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    .line 36
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isChannelWidePostsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 15
    sget-object v0, Lcom/iMe/fork/controller/ToolsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/ToolsController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/ToolsController;->Companion:Lcom/iMe/fork/controller/ToolsController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/ToolsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getChatAttachAlertButtonsBackupData()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    .line 1179
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1254
    check-cast v1, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/iMe/fork/enums/ChatAttachAlertButton;->Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v4, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMessagePopupItemBackupData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/fork/enums/MessagePopupItem;

    .line 225
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRememberLastDialogId()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogId:J

    return-wide v0
.end method

.method public final getRememberLastDialogTopicId()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogTopicId:J

    return-wide v0
.end method

.method public final getSelectedChatAttachAlertButtons()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/iMe/fork/enums/DialogType;",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
            ">;>;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    return-object v0
.end method

.method public final getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedMessagePopupItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/MessagePopupItem;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedSentMessageFont:Lcom/iMe/fork/enums/SentMessageFont;

    return-object v0
.end method

.method public final getSwipeToGoToNextUnreadDialogTypeNames()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    .line 1045
    new-instance v1, Lcom/iMe/fork/controller/ToolsController$getSwipeToGoToNextUnreadDialogTypeNames$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/iMe/fork/controller/ToolsController$getSwipeToGoToNextUnreadDialogTypeNames$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/fork/enums/DialogType;

    .line 222
    invoke-virtual {v2}, Lcom/iMe/fork/enums/DialogType;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final isChannelWidePostsEnabled()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    return v0
.end method

.method public final isMessagePopupAggregatorEnabled()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    return v0
.end method

.method public final isRememberLastDialogEnabled()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    return v0
.end method

.method public final isShowChannelBottomPanel()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    return v0
.end method

.method public final isSilentSendingEnabled()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    return v0
.end method

.method public final isSilentSendingEnabledForDialog(J)Z
    .locals 4

    .line 212
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const-string v3, "messagesController"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/iMe/fork/enums/DialogType$Companion;->getDialogType(JLorg/telegram/messenger/MessagesController;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p1

    .line 216
    sget-object p2, Lcom/iMe/fork/enums/DialogType;->CHAT:Lcom/iMe/fork/enums/DialogType;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/iMe/fork/enums/DialogType;->GROUP:Lcom/iMe/fork/enums/DialogType;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    return v0
.end method

.method public final isSwipeToGoToNextUnreadDialogEnabled()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 8

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSilentSendingEnabled()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSilentSendingEnabled()Z

    move-result v1

    .line 42
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    .line 46
    sget-object v0, Lcom/iMe/fork/enums/SentMessageFont;->Companion:Lcom/iMe/fork/enums/SentMessageFont$Companion;

    .line 48
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedSentMessageFont()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedSentMessageFont()Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/SentMessageFont$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedSentMessageFont:Lcom/iMe/fork/enums/SentMessageFont;

    .line 53
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRememberLastDialogEnabled()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRememberLastDialogEnabled()Z

    move-result v1

    .line 52
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    .line 57
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->rememberLastDialogId()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogId()J

    move-result-wide v1

    .line 56
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogId:J

    .line 61
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->rememberLastDialogTopicId()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogTopicId()J

    move-result-wide v1

    .line 60
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogTopicId:J

    .line 66
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v1

    .line 65
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    .line 70
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v1

    .line 69
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    .line 73
    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    .line 75
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v2

    .line 74
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    .line 80
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowChannelBottomPanel()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowChannelBottomPanel()Z

    move-result v1

    .line 79
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    .line 83
    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v0

    .line 9496
    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9646
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 84
    sget-object v5, Lcom/iMe/fork/enums/ChatAttachAlertButton;->Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    .line 86
    invoke-static {v4}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildEnabledChatAttachAlertButtonsKey(Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v4}, Lcom/iMe/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 85
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 9647
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    .line 93
    sget-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->Companion:Lcom/iMe/fork/enums/MessagePopupItem$Companion;

    .line 95
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedMessagePopupItems()Ljava/util/Set;

    move-result-object v2

    .line 94
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/MessagePopupItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    .line 100
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMessagePopupAggregatorEnabled()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isMessagePopupAggregatorEnabled()Z

    move-result v1

    .line 99
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    .line 104
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isChannelWidePostsEnabled()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isChannelWidePostsEnabled()Z

    move-result v1

    .line 103
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 5

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSilentSendingEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedSentMessageFont()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/iMe/fork/enums/SentMessageFont;->Companion:Lcom/iMe/fork/enums/SentMessageFont$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedSentMessageFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/SentMessageFont$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/SentMessageFont;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedSentMessageFont:Lcom/iMe/fork/enums/SentMessageFont;

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRememberLastDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    .line 177
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 179
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 178
    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    .line 181
    :cond_4
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSwipeToGoToNextUnreadDialogTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 183
    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSwipeToGoToNextUnreadDialogTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    .line 185
    :cond_5
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 186
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isShowChannelBottomPanel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    .line 188
    :cond_6
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 189
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 190
    sget-object v4, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    .line 1179
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1254
    check-cast v1, Ljava/util/Map$Entry;

    .line 192
    sget-object v3, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/DialogType;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.iMe.fork.enums.DialogType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/iMe/fork/enums/ChatAttachAlertButton;->Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 192
    invoke-virtual {v4, v1}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 196
    :cond_a
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 189
    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    .line 198
    :cond_b
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 200
    sget-object v0, Lcom/iMe/fork/enums/MessagePopupItem;->Companion:Lcom/iMe/fork/enums/MessagePopupItem$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/MessagePopupItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/iMe/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    .line 202
    :cond_c
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 203
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    .line 205
    :cond_d
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 206
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChannelWidePostsEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    .line 208
    :cond_e
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ToolsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 5

    .line 111
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSilentSendingEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedSentMessageFont()Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/iMe/fork/controller/ToolsController;->selectedSentMessageFont:Lcom/iMe/fork/enums/SentMessageFont;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRememberLastDialogEnabled()Ljava/lang/String;

    move-result-object v1

    .line 119
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    .line 117
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->rememberLastDialogId()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->rememberLastDialogTopicId()Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-wide v2, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogTopicId:J

    .line 122
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    .line 126
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    .line 130
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v2, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 134
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowChannelBottomPanel()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    .line 138
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v1, p0, Lcom/iMe/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    .line 215
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/fork/enums/DialogType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 144
    invoke-static {v3}, Lcom/iMe/common/TelegramPreferenceKeys$User;->buildEnabledChatAttachAlertButtonsKey(Lcom/iMe/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v3

    .line 146
    sget-object v4, Lcom/iMe/fork/enums/ChatAttachAlertButton;->Companion:Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;

    invoke-virtual {v4, v2}, Lcom/iMe/fork/enums/ChatAttachAlertButton$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 143
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v1

    .line 151
    sget-object v2, Lcom/iMe/fork/enums/MessagePopupItem;->Companion:Lcom/iMe/fork/enums/MessagePopupItem$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/MessagePopupItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 149
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isMessagePopupAggregatorEnabled()Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    .line 153
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isChannelWidePostsEnabled()Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    .line 157
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setChannelWidePostsEnabled(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    return-void
.end method

.method public final setMessagePopupAggregatorEnabled(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    return-void
.end method

.method public final setRememberLastDialogEnabled(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    return-void
.end method

.method public final setRememberLastDialogId(J)V
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogId:J

    return-void
.end method

.method public final setRememberLastDialogTopicId(J)V
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/iMe/fork/controller/ToolsController;->rememberLastDialogTopicId:J

    return-void
.end method

.method public final setSelectedSentMessageFont(Lcom/iMe/fork/enums/SentMessageFont;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/iMe/fork/controller/ToolsController;->selectedSentMessageFont:Lcom/iMe/fork/enums/SentMessageFont;

    return-void
.end method

.method public final setShowChannelBottomPanel(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    return-void
.end method

.method public final setSilentSendingEnabled(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    return-void
.end method

.method public final setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    return-void
.end method

.method public final setSwipeToGoToNextUnreadDialogEnabled(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    return-void
.end method
