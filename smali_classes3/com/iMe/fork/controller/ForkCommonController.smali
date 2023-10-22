.class public final Lcom/iMe/fork/controller/ForkCommonController;
.super Lorg/telegram/messenger/BaseController;
.source "ForkCommonController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/ForkCommonController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/ForkCommonController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appVersionRequiredUpdate:Ljava/lang/String;

.field private isAccountMuted:Z

.field private isPremiumAnimateAvatars:Z

.field private isPremiumAnimateStickers:Z

.field private isQuickReactionEnabled:Z

.field private isRevokeByDefault:Z

.field private isShowPremiumBadgeEnabled:Z

.field private isShowPremiumStatusEnabled:Z

.field private lastFilterTab:I

.field private selectedContactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

.field private sortingDeployVersion:I

.field private walletRefreshToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/ForkCommonController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/ForkCommonController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/ForkCommonController;->Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

    .line 150
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/ForkCommonController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 15
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->walletRefreshToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->walletRefreshToken:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->appVersionRequiredUpdate()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->appVersionRequiredUpdate:Ljava/lang/String;

    .line 17
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->sortingDeployVersion()I

    move-result p1

    iput p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->sortingDeployVersion:I

    .line 18
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastFilterTab()I

    move-result p1

    iput p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->lastFilterTab:I

    .line 19
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAccountMuted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isAccountMuted:Z

    .line 20
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isQuickReactionEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled:Z

    .line 21
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isPremiumAnimateStickers()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers:Z

    .line 22
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowPremiumBadgeEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled:Z

    .line 24
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowPremiumStatusEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled:Z

    .line 25
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isPremiumAnimateAvatars()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars:Z

    .line 26
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->selectedContactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    .line 27
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRevokeByDefault()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isRevokeByDefault:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 11
    sget-object v0, Lcom/iMe/fork/controller/ForkCommonController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/ForkCommonController;->Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/ForkCommonController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAppVersionRequiredUpdate()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->appVersionRequiredUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastFilterTab()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->lastFilterTab:I

    return v0
.end method

.method public final getSelectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->selectedContactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    return-object v0
.end method

.method public final getSortingDeployVersion()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->sortingDeployVersion:I

    return v0
.end method

.method public final getWalletRefreshToken()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->walletRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final isAccountMuted()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isAccountMuted:Z

    return v0
.end method

.method public final isPremiumAnimateAvatars()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars:Z

    return v0
.end method

.method public final isPremiumAnimateStickers()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers:Z

    return v0
.end method

.method public final isQuickReactionEnabled()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled:Z

    return v0
.end method

.method public final isRevokeByDefault()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isRevokeByDefault:Z

    return v0
.end method

.method public final isShowPremiumBadgeEnabled()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled:Z

    return v0
.end method

.method public final isShowPremiumStatusEnabled()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 3

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->walletRefreshToken()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->walletRefreshToken()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->walletRefreshToken:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->appVersionRequiredUpdate()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->appVersionRequiredUpdate()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->appVersionRequiredUpdate:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->sortingDeployVersion()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->sortingDeployVersion()I

    move-result v1

    .line 41
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->sortingDeployVersion:I

    .line 46
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->lastFilterTab()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastFilterTab()I

    move-result v1

    .line 45
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->lastFilterTab:I

    .line 50
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAccountMuted()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isAccountMuted()Z

    move-result v1

    .line 49
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isAccountMuted:Z

    .line 54
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isQuickReactionEnabled()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isQuickReactionEnabled()Z

    move-result v1

    .line 53
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled:Z

    .line 58
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isPremiumAnimateStickers()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isPremiumAnimateStickers()Z

    move-result v1

    .line 57
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers:Z

    .line 62
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowPremiumBadgeEnabled()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowPremiumBadgeEnabled()Z

    move-result v1

    .line 61
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled:Z

    .line 66
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowPremiumStatusEnabled()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isShowPremiumStatusEnabled()Z

    move-result v1

    .line 65
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled:Z

    .line 70
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isPremiumAnimateAvatars()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isPremiumAnimateAvatars()Z

    move-result v1

    .line 69
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars:Z

    .line 73
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->Companion:Lcom/iMe/model/contacts/ContactsFilter$Companion;

    .line 75
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedContactsFilter()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->selectedContactsFilter()Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/iMe/model/contacts/ContactsFilter$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->selectedContactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    .line 80
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRevokeByDefault()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isRevokeByDefault()Z

    move-result v1

    .line 79
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isRevokeByDefault:Z

    return-void
.end method

.method public final restoreBackup(Lcom/iMe/fork/models/backup/Backup;)V
    .locals 2

    const-string v0, "backup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isQuickReactionEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled:Z

    .line 125
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateStickers()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers:Z

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowBadge()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled:Z

    .line 131
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumShowStatus()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled:Z

    .line 134
    :cond_3
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isPremiumAnimateAvatars()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars:Z

    .line 137
    :cond_4
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedContactsFilter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 138
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->Companion:Lcom/iMe/model/contacts/ContactsFilter$Companion;

    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->getSelectedContactsFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/model/contacts/ContactsFilter$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/model/contacts/ContactsFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/controller/ForkCommonController;->selectedContactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    .line 140
    :cond_5
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {p1}, Lcom/iMe/fork/models/backup/Backup;->isRevokeByDefault()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isRevokeByDefault:Z

    .line 143
    :cond_6
    invoke-virtual {p0}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->walletRefreshToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->walletRefreshToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->appVersionRequiredUpdate()Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->appVersionRequiredUpdate:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->sortingDeployVersion()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->sortingDeployVersion:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->lastFilterTab()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->lastFilterTab:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isAccountMuted()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->isAccountMuted:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isQuickReactionEnabled()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isPremiumAnimateStickers()Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers:Z

    .line 97
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowPremiumBadgeEnabled()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled:Z

    .line 101
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isShowPremiumStatusEnabled()Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled:Z

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isPremiumAnimateAvatars()Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars:Z

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->selectedContactsFilter()Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->selectedContactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->isRevokeByDefault()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/fork/controller/ForkCommonController;->isRevokeByDefault:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAccountMuted(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isAccountMuted:Z

    return-void
.end method

.method public final setAppVersionRequiredUpdate(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->appVersionRequiredUpdate:Ljava/lang/String;

    return-void
.end method

.method public final setLastFilterTab(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->lastFilterTab:I

    return-void
.end method

.method public final setPremiumAnimateAvatars(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateAvatars:Z

    return-void
.end method

.method public final setPremiumAnimateStickers(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isPremiumAnimateStickers:Z

    return-void
.end method

.method public final setQuickReactionEnabled(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isQuickReactionEnabled:Z

    return-void
.end method

.method public final setRevokeByDefault(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isRevokeByDefault:Z

    return-void
.end method

.method public final setSelectedContactsFilter(Lcom/iMe/model/contacts/ContactsFilter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->selectedContactsFilter:Lcom/iMe/model/contacts/ContactsFilter;

    return-void
.end method

.method public final setShowPremiumBadgeEnabled(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumBadgeEnabled:Z

    return-void
.end method

.method public final setShowPremiumStatusEnabled(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled:Z

    return-void
.end method

.method public final setSortingDeployVersion(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->sortingDeployVersion:I

    return-void
.end method

.method public final setWalletRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/iMe/fork/controller/ForkCommonController;->walletRefreshToken:Ljava/lang/String;

    return-void
.end method
