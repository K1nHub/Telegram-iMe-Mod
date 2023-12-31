.class public final Lcom/iMe/fork/controller/WalletFingerprintController;
.super Lorg/telegram/messenger/BaseController;
.source "WalletFingerprintController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/controller/WalletFingerprintController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/fork/controller/WalletFingerprintController$Companion;

.field private static final accountInstances:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/iMe/fork/controller/WalletFingerprintController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isWalletFingerprintUnlockEnabled:Z

.field private walletPinCodeEncrypted:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/fork/controller/WalletFingerprintController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/controller/WalletFingerprintController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/controller/WalletFingerprintController;->Companion:Lcom/iMe/fork/controller/WalletFingerprintController$Companion;

    .line 46
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/iMe/fork/controller/WalletFingerprintController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lorg/telegram/messenger/BaseController;-><init>(I)V

    .line 12
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->walletPinCodeEncrypted()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->walletPinCodeEncrypted:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->walletFingerprintUnlockEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled:Z

    return-void
.end method

.method public static final synthetic access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 9
    sget-object v0, Lcom/iMe/fork/controller/WalletFingerprintController;->accountInstances:Lj$/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final getInstance(I)Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 1

    sget-object v0, Lcom/iMe/fork/controller/WalletFingerprintController;->Companion:Lcom/iMe/fork/controller/WalletFingerprintController$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/controller/WalletFingerprintController$Companion;->getInstance(I)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getWalletPinCodeEncrypted()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->walletPinCodeEncrypted:Ljava/lang/String;

    return-object v0
.end method

.method public final isWalletFingerprintUnlockEnabled()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled:Z

    return v0
.end method

.method public final loadConfig(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->walletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->walletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->walletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v0

    .line 20
    :cond_0
    iput-object v0, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->walletPinCodeEncrypted:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->walletFingerprintUnlockEnabled()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->walletFingerprintUnlockEnabled()Z

    move-result v1

    .line 25
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled:Z

    return-void
.end method

.method public final saveConfig()V
    .locals 3

    .line 33
    invoke-virtual {p0}, Lorg/telegram/messenger/BaseController;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getPreferencesPublic()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->walletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->walletPinCodeEncrypted:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User;->walletFingerprintUnlockEnabled()Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-boolean v2, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled:Z

    .line 35
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setWalletFingerprintUnlockEnabled(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled:Z

    return-void
.end method

.method public final setWalletPinCodeEncrypted(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/iMe/fork/controller/WalletFingerprintController;->walletPinCodeEncrypted:Ljava/lang/String;

    return-void
.end method
