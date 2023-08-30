.class public final Lcom/iMe/fork/controller/ChatProfileController;
.super Lorg/telegram/messenger/BaseController;
.source "ChatProfileController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/ChatProfileController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatProfileController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatProfileController.kt\ncom/iMe/fork/controller/ChatProfileController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1045#2:63\n1549#2:64\n1620#2,3:65\n*S KotlinDebug\n*F\n+ 1 ChatProfileController.kt\ncom/iMe/fork/controller/ChatProfileController\n*L\n51#1:63\n52#1:64\n52#1:65,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/ChatProfileController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/ChatProfileController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isChatProfileEnabled:Z

.field private selectedChatProfileDialogTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/ChatProfileDialogType;",
            ">;"
        }
    .end annotation
.end field

.field private selectedChatProfileTelegramIdMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/ChatProfileController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/ChatProfileController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/ChatProfileController;->Companion:Lcom/iMe/fork/controller/ChatProfileController$Companion;

    .line 57
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/ChatProfileController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 15
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isChatProfileEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled:Z

    .line 16
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileDialogTypes:Ljava/util/Set;

    .line 17
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedChatProfileTelegramIdMode()Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 12
    sget-object v0, Lcom/iMe/fork/controller/ChatProfileController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/ChatProfileController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/ChatProfileController;->Companion:Lcom/iMe/fork/controller/ChatProfileController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/ChatProfileController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ChatProfileController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getChatProfileDialogType()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileDialogTypes:Ljava/util/Set;

    .line 1045
    new-instance v1, Lcom/iMe/fork/controller/ChatProfileController$getChatProfileDialogType$$inlined$sortedBy$1;

    invoke-direct {v1}, Lcom/iMe/fork/controller/ChatProfileController$getChatProfileDialogType$$inlined$sortedBy$1;-><init>()V

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
    check-cast v2, Lcom/iMe/fork/enums/ChatProfileDialogType;

    .line 52
    invoke-virtual {v2}, Lcom/iMe/fork/enums/ChatProfileDialogType;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getSelectedChatProfileDialogTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/ChatProfileDialogType;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileDialogTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final getSelectedChatProfileTelegramIdMode()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    return-object v0
.end method

.method public final isChatProfileEnabled()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatProfileEnabled()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isChatProfileEnabled()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled:Z

    .line 24
    sget-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedChatProfileDialogTypes()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileDialogTypes:Ljava/util/Set;

    .line 25
    sget-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->Companion:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->selectedChatProfileTelegramIdMode()Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 2

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isChatProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled:Z

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedChatProfileDialogTypes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileDialogTypes:Ljava/util/Set;

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ChatProfileController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 4

    .line 30
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->isChatProfileEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedChatProfileDialogTypes()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/ChatProfileDialogType;->Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

    iget-object v3, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileDialogTypes:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global;->selectedChatProfileTelegramIdMode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setChatProfileEnabled(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->isChatProfileEnabled:Z

    return-void
.end method

.method public final setSelectedChatProfileDialogTypes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/ChatProfileDialogType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileDialogTypes:Ljava/util/Set;

    return-void
.end method

.method public final setSelectedChatProfileTelegramIdMode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/iMe/fork/controller/ChatProfileController;->selectedChatProfileTelegramIdMode:Ljava/lang/String;

    return-void
.end method
