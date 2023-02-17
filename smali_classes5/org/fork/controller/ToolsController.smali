.class public final Lorg/fork/controller/ToolsController;
.super Lorg/telegram/messenger/BaseController;
.source "ToolsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/controller/ToolsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToolsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ToolsController.kt\norg/fork/controller/ToolsController\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n9489#2,2:149\n9639#2,4:151\n211#3,2:155\n764#4:157\n855#4,2:158\n1177#4,2:160\n1251#4,4:162\n1043#4:166\n1547#4:167\n1618#4,3:168\n1547#4:171\n1618#4,3:172\n1177#4,2:175\n1251#4,4:177\n*S KotlinDebug\n*F\n+ 1 ToolsController.kt\norg/fork/controller/ToolsController\n*L\n45#1:149,2\n45#1:151,4\n66#1:155,2\n100#1:157\n100#1:158,2\n101#1:160,2\n101#1:162,4\n128#1:166\n129#1:167\n129#1:168,3\n132#1:171\n132#1:172,3\n136#1:175,2\n136#1:177,4\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/fork/controller/ToolsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/fork/controller/ToolsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isChannelWidePostsEnabled:Z

.field private isMessagePopupAggregatorEnabled:Z

.field private isRememberLastDialogEnabled:Z

.field private isRevokeByDefault:Z

.field private isShowChannelBottomPanel:Z

.field private isSilentSendingEnabled:Z

.field private isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

.field private isSwipeToGoToNextUnreadDialogEnabled:Z

.field private rememberLastDialogId:J

.field private rememberLastDialogTopicId:I

.field private selectedChatAttachAlertButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/fork/enums/DialogType;",
            "Ljava/util/Set<",
            "Lorg/fork/enums/ChatAttachAlertButton;",
            ">;>;"
        }
    .end annotation
.end field

.field private selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fork/enums/DialogType;",
            ">;"
        }
    .end annotation
.end field

.field private selectedMessagePopupItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/fork/enums/MessagePopupItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedSentMessageFont:Lorg/fork/enums/SentMessageFont;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/fork/controller/ToolsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/controller/ToolsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    .line 143
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/fork/controller/ToolsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 15
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSilentSendingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    .line 16
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedSentMessageFont()Lorg/fork/enums/SentMessageFont;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedSentMessageFont:Lorg/fork/enums/SentMessageFont;

    .line 17
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isRememberLastDialogEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    .line 18
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/fork/controller/ToolsController;->rememberLastDialogId:J

    .line 19
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogTopicId()I

    move-result p1

    iput p1, p0, Lorg/fork/controller/ToolsController;->rememberLastDialogTopicId:I

    .line 21
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    .line 22
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    .line 23
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    .line 24
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isShowChannelBottomPanel()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    .line 25
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    .line 26
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    .line 27
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isMessagePopupAggregatorEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    .line 28
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isChannelWidePostsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    .line 29
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isRevokeByDefault()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isRevokeByDefault:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 12
    sget-object v0, Lorg/fork/controller/ToolsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lorg/fork/controller/ToolsController;
    .locals 1

    sget-object v0, Lorg/fork/controller/ToolsController;->Companion:Lorg/fork/controller/ToolsController$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/controller/ToolsController$Companion;->getInstance(I)Lorg/fork/controller/ToolsController;

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

    .line 135
    iget-object v0, p0, Lorg/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    .line 1177
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1178
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1251
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1252
    check-cast v1, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/enums/DialogType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/fork/enums/ChatAttachAlertButton;->Companion:Lorg/fork/enums/ChatAttachAlertButton$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v4, v1}, Lorg/fork/enums/ChatAttachAlertButton$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
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

    .line 131
    iget-object v0, p0, Lorg/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lorg/fork/enums/MessagePopupItem;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getRememberLastDialogId()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lorg/fork/controller/ToolsController;->rememberLastDialogId:J

    return-wide v0
.end method

.method public final getRememberLastDialogTopicId()I
    .locals 1

    .line 19
    iget v0, p0, Lorg/fork/controller/ToolsController;->rememberLastDialogTopicId:I

    return v0
.end method

.method public final getSelectedChatAttachAlertButtons()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/fork/enums/DialogType;",
            "Ljava/util/Set<",
            "Lorg/fork/enums/ChatAttachAlertButton;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    return-object v0
.end method

.method public final getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/fork/enums/DialogType;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedMessagePopupItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/fork/enums/MessagePopupItem;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedSentMessageFont()Lorg/fork/enums/SentMessageFont;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/fork/controller/ToolsController;->selectedSentMessageFont:Lorg/fork/enums/SentMessageFont;

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

    .line 127
    iget-object v0, p0, Lorg/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    .line 1043
    new-instance v1, Lorg/fork/controller/ToolsController$getSwipeToGoToNextUnreadDialogTypeNames$$inlined$sortedBy$1;

    invoke-direct {v1}, Lorg/fork/controller/ToolsController$getSwipeToGoToNextUnreadDialogTypeNames$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lorg/fork/enums/DialogType;

    .line 129
    invoke-virtual {v2}, Lorg/fork/enums/DialogType;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final isChannelWidePostsEnabled()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    return v0
.end method

.method public final isMessagePopupAggregatorEnabled()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    return v0
.end method

.method public final isRememberLastDialogEnabled()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    return v0
.end method

.method public final isRevokeByDefault()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isRevokeByDefault:Z

    return v0
.end method

.method public final isShowChannelBottomPanel()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    return v0
.end method

.method public final isSilentSendingEnabled()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    return v0
.end method

.method public final isSilentSendingEnabledForDialog(J)Z
    .locals 4

    .line 120
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    const-string v3, "messagesController"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v2}, Lorg/fork/enums/DialogType$Companion;->getDialogType(JLorg/telegram/messenger/MessagesController;)Lorg/fork/enums/DialogType;

    move-result-object p1

    .line 124
    sget-object p2, Lorg/fork/enums/DialogType;->CHAT:Lorg/fork/enums/DialogType;

    if-eq p1, p2, :cond_1

    sget-object p2, Lorg/fork/enums/DialogType;->GROUP:Lorg/fork/enums/DialogType;

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    return v0
.end method

.method public final isSwipeToGoToNextUnreadDialogEnabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 8

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSilentSendingEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSilentSendingEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setSilentSendingEnabled(Z)V

    .line 36
    sget-object v0, Lorg/fork/enums/SentMessageFont;->Companion:Lorg/fork/enums/SentMessageFont$Companion;

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedSentMessageFont()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedSentMessageFont()Lorg/fork/enums/SentMessageFont;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/SentMessageFont$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/SentMessageFont;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setSelectedSentMessageFont(Lorg/fork/enums/SentMessageFont;)V

    .line 37
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isRememberLastDialogEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isRememberLastDialogEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setRememberLastDialogEnabled(Z)V

    .line 38
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->rememberLastDialogId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/fork/controller/ToolsController;->setRememberLastDialogId(J)V

    .line 39
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->rememberLastDialogTopicId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->rememberLastDialogTopicId()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setRememberLastDialogTopicId(I)V

    .line 41
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogEnabled(Z)V

    .line 42
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(Z)V

    .line 43
    sget-object v0, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setSelectedDialogTypesForSwipeToGoToNextUnreadDialog(Ljava/util/Set;)V

    .line 44
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isShowChannelBottomPanel()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isShowChannelBottomPanel()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setShowChannelBottomPanel(Z)V

    .line 45
    invoke-static {}, Lorg/fork/enums/DialogType;->values()[Lorg/fork/enums/DialogType;

    move-result-object v0

    .line 9489
    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v2, v0

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9639
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 46
    sget-object v5, Lorg/fork/enums/ChatAttachAlertButton;->Companion:Lorg/fork/enums/ChatAttachAlertButton$Companion;

    invoke-static {v4}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildEnabledChatAttachAlertButtonsKey(Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/fork/enums/DialogType;->getChatAttachAlertButtons()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/fork/enums/ChatAttachAlertButton$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/fork/enums/ChatAttachAlertButton$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setSelectedChatAttachAlertButtons(Ljava/util/Map;)V

    .line 48
    sget-object v0, Lorg/fork/enums/MessagePopupItem;->Companion:Lorg/fork/enums/MessagePopupItem$Companion;

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->selectedMessagePopupItems()Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/MessagePopupItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setSelectedMessagePopupItems(Ljava/util/Set;)V

    .line 49
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isMessagePopupAggregatorEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isMessagePopupAggregatorEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setMessagePopupAggregatorEnabled(Z)V

    .line 50
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isChannelWidePostsEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isChannelWidePostsEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/fork/controller/ToolsController;->setChannelWidePostsEnabled(Z)V

    .line 51
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isRevokeByDefault()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isRevokeByDefault()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/fork/controller/ToolsController;->setRevokeByDefault(Z)V

    return-void
.end method

.method public final restoreBackup(Lorg/fork/models/backup/Backup;)V
    .locals 5

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSilentSendingEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSilentSendingEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    .line 80
    :cond_0
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedSentMessageFont()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lorg/fork/enums/SentMessageFont;->Companion:Lorg/fork/enums/SentMessageFont$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSelectedSentMessageFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/SentMessageFont$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/SentMessageFont;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/controller/ToolsController;->selectedSentMessageFont:Lorg/fork/enums/SentMessageFont;

    .line 83
    :cond_1
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRememberLastDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRememberLastDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    .line 86
    :cond_2
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    .line 89
    :cond_3
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    .line 92
    :cond_4
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSwipeToGoToNextUnreadDialogTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 93
    sget-object v0, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getSwipeToGoToNextUnreadDialogTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    .line 95
    :cond_5
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isShowChannelBottomPanel()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 96
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isShowChannelBottomPanel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    .line 98
    :cond_6
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 99
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    .line 100
    sget-object v4, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/fork/enums/DialogType$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/DialogType;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_9
    const/16 v0, 0xa

    .line 1177
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1178
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1251
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1252
    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    sget-object v3, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/fork/enums/DialogType$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/DialogType;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type org.fork.enums.DialogType"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v4, Lorg/fork/enums/ChatAttachAlertButton;->Companion:Lorg/fork/enums/ChatAttachAlertButton$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v4, v1}, Lorg/fork/enums/ChatAttachAlertButton$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 102
    :cond_a
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 99
    iput-object v0, p0, Lorg/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    .line 104
    :cond_b
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 105
    sget-object v0, Lorg/fork/enums/MessagePopupItem;->Companion:Lorg/fork/enums/MessagePopupItem$Companion;

    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->getMessagePopupItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/fork/enums/MessagePopupItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    .line 107
    :cond_c
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 108
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isMessagePopupAggregatorEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    .line 110
    :cond_d
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isChannelWidePostsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 111
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isChannelWidePostsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    .line 113
    :cond_e
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRevokeByDefault()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 114
    invoke-virtual {p1}, Lorg/fork/models/backup/Backup;->isRevokeByDefault()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isRevokeByDefault:Z

    .line 116
    :cond_f
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 5

    .line 56
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSilentSendingEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isSilentSendingEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedSentMessageFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->getSelectedSentMessageFont()Lorg/fork/enums/SentMessageFont;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isRememberLastDialogEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->rememberLastDialogId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->getRememberLastDialogId()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->rememberLastDialogTopicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->getRememberLastDialogTopicId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/fork/enums/DialogType;->Companion:Lorg/fork/enums/DialogType$Companion;

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->getSelectedDialogTypesForSwipeToGoToNextUnreadDialog()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isShowChannelBottomPanel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->getSelectedChatAttachAlertButtons()Ljava/util/Map;

    move-result-object v1

    .line 211
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

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fork/enums/DialogType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 67
    invoke-static {v3}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->buildEnabledChatAttachAlertButtonsKey(Lorg/fork/enums/DialogType;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/fork/enums/ChatAttachAlertButton;->Companion:Lorg/fork/enums/ChatAttachAlertButton$Companion;

    invoke-virtual {v4, v2}, Lorg/fork/enums/ChatAttachAlertButton$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 69
    :cond_0
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->selectedMessagePopupItems()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/fork/enums/MessagePopupItem;->Companion:Lorg/fork/enums/MessagePopupItem$Companion;

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->getSelectedMessagePopupItems()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/fork/enums/MessagePopupItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isMessagePopupAggregatorEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isChannelWidePostsEnabled()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User;->isRevokeByDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/fork/controller/ToolsController;->isRevokeByDefault()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setChannelWidePostsEnabled(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isChannelWidePostsEnabled:Z

    return-void
.end method

.method public final setMessagePopupAggregatorEnabled(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isMessagePopupAggregatorEnabled:Z

    return-void
.end method

.method public final setRememberLastDialogEnabled(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isRememberLastDialogEnabled:Z

    return-void
.end method

.method public final setRememberLastDialogId(J)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lorg/fork/controller/ToolsController;->rememberLastDialogId:J

    return-void
.end method

.method public final setRememberLastDialogTopicId(I)V
    .locals 0

    .line 19
    iput p1, p0, Lorg/fork/controller/ToolsController;->rememberLastDialogTopicId:I

    return-void
.end method

.method public final setRevokeByDefault(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isRevokeByDefault:Z

    return-void
.end method

.method public final setSelectedChatAttachAlertButtons(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/fork/enums/DialogType;",
            "Ljava/util/Set<",
            "Lorg/fork/enums/ChatAttachAlertButton;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedChatAttachAlertButtons:Ljava/util/Map;

    return-void
.end method

.method public final setSelectedDialogTypesForSwipeToGoToNextUnreadDialog(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/fork/enums/DialogType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedDialogTypesForSwipeToGoToNextUnreadDialog:Ljava/util/Set;

    return-void
.end method

.method public final setSelectedMessagePopupItems(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/fork/enums/MessagePopupItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedMessagePopupItems:Ljava/util/Set;

    return-void
.end method

.method public final setSelectedSentMessageFont(Lorg/fork/enums/SentMessageFont;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lorg/fork/controller/ToolsController;->selectedSentMessageFont:Lorg/fork/enums/SentMessageFont;

    return-void
.end method

.method public final setShowChannelBottomPanel(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isShowChannelBottomPanel:Z

    return-void
.end method

.method public final setSilentSendingEnabled(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isSilentSendingEnabled:Z

    return-void
.end method

.method public final setSwipeToGoToNextUnreadDialogConsiderArchiveEnabled(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogConsiderArchiveEnabled:Z

    return-void
.end method

.method public final setSwipeToGoToNextUnreadDialogEnabled(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lorg/fork/controller/ToolsController;->isSwipeToGoToNextUnreadDialogEnabled:Z

    return-void
.end method
