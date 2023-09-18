.class public final Lcom/iMe/fork/controller/NeuroBotsController;
.super Lorg/telegram/messenger/BaseController;
.source "NeuroBotsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/NeuroBotsController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/NeuroBotsController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/NeuroBotsController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isNeuroBotsAutoEnabledInGroups:Z

.field private isNeuroBotsAutoEnabledInPersonalChats:Z

.field private isNeuroBotsEnabled:Z

.field private isShowOftenUsedNeuroBotsEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/NeuroBotsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/NeuroBotsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/NeuroBotsController;->Companion:Lcom/iMe/fork/controller/NeuroBotsController$Companion;

    .line 66
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/NeuroBotsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 12
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNeuroBotsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled:Z

    .line 14
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNeuroBotsAutoEnabledInPersonalChats()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats:Z

    .line 16
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNeuroBotsAutoEnabledInGroups()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups:Z

    .line 18
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowOftenUsedNeuroBotsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 9
    sget-object v0, Lcom/iMe/fork/controller/NeuroBotsController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/NeuroBotsController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/NeuroBotsController;->Companion:Lcom/iMe/fork/controller/NeuroBotsController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/NeuroBotsController$Companion;->getInstance(I)Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isNeuroBotsAutoEnabledInGroups()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups:Z

    return v0
.end method

.method public final isNeuroBotsAutoEnabledInPersonalChats()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats:Z

    return v0
.end method

.method public final isNeuroBotsEnabled()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled:Z

    return v0
.end method

.method public final isShowOftenUsedNeuroBotsEnabled()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNeuroBotsEnabled()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNeuroBotsEnabled()Z

    move-result v1

    .line 24
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled:Z

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled:Z

    .line 30
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNeuroBotsAutoEnabledInPersonalChats()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNeuroBotsAutoEnabledInPersonalChats()Z

    move-result v1

    .line 29
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats:Z

    .line 34
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNeuroBotsAutoEnabledInGroups()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isNeuroBotsAutoEnabledInGroups()Z

    move-result v1

    .line 33
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups:Z

    .line 38
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowOftenUsedNeuroBotsEnabled()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowOftenUsedNeuroBotsEnabled()Z

    move-result v1

    .line 37
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled:Z

    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 45
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNeuroBotsEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNeuroBotsAutoEnabledInPersonalChats()Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-boolean v2, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats:Z

    .line 47
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isNeuroBotsAutoEnabledInGroups()Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-boolean v2, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups:Z

    .line 51
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowOftenUsedNeuroBotsEnabled()Ljava/lang/String;

    move-result-object v1

    .line 57
    iget-boolean v2, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled:Z

    .line 55
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setNeuroBotsAutoEnabledInGroups(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInGroups:Z

    return-void
.end method

.method public final setNeuroBotsAutoEnabledInPersonalChats(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsAutoEnabledInPersonalChats:Z

    return-void
.end method

.method public final setNeuroBotsEnabled(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isNeuroBotsEnabled:Z

    return-void
.end method

.method public final setShowOftenUsedNeuroBotsEnabled(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/iMe/fork/controller/NeuroBotsController;->isShowOftenUsedNeuroBotsEnabled:Z

    return-void
.end method
