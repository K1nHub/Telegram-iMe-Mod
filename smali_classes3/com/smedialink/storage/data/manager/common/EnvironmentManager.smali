.class public final Lcom/smedialink/storage/data/manager/common/EnvironmentManager;
.super Ljava/lang/Object;
.source "EnvironmentManager.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/manager/common/EnvironmentManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnvironmentManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnvironmentManager.kt\ncom/smedialink/storage/data/manager/common/EnvironmentManager\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,55:1\n56#2,6:56\n56#2,6:62\n56#2,6:68\n56#2,6:74\n56#2,6:80\n*S KotlinDebug\n*F\n+ 1 EnvironmentManager.kt\ncom/smedialink/storage/data/manager/common/EnvironmentManager\n*L\n19#1:56,6\n20#1:62,6\n21#1:68,6\n22#1:74,6\n23#1:80,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

.field private static final actionGateway$delegate:Lkotlin/Lazy;

.field private static final applicationHandler:Landroid/os/Handler;

.field private static final authManager$delegate:Lkotlin/Lazy;

.field private static final cryptoAccessManager$delegate:Lkotlin/Lazy;

.field private static final exitRunnable:Ljava/lang/Runnable;

.field private static final preferenceHelper$delegate:Lkotlin/Lazy;

.field private static final telegramGateway$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1GWIbIeWpeh6ussx6w8iLdXxNKk()V
    .locals 0

    invoke-static {}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->exitRunnable$lambda-0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-direct {v0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 19
    sput-object v2, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->preferenceHelper$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 20
    sput-object v2, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->actionGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$3;

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 21
    sput-object v2, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->telegramGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$4;

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 22
    sput-object v2, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$5;

    invoke-direct {v2, v0, v4, v4}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->authManager$delegate:Lkotlin/Lazy;

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->applicationHandler:Landroid/os/Handler;

    .line 25
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->exitRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final exitRunnable$lambda-0()V
    .locals 1

    .line 25
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/smedialink/storage/data/manager/common/EnvironmentManager;

    invoke-direct {v0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getActionGateway()Lcom/smedialink/storage/domain/gateway/ActionGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/ActionGateway;->finishApplication()V

    return-void
.end method

.method private final getActionGateway()Lcom/smedialink/storage/domain/gateway/ActionGateway;
    .locals 1

    .line 20
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->actionGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/gateway/ActionGateway;

    return-object v0
.end method

.method private final getAuthManager()Lcom/smedialink/storage/domain/manager/auth/AuthManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/auth/AuthManager;

    return-object v0
.end method

.method private final getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method private final getPreferenceHelper()Lcom/smedialink/storage/domain/storage/PreferenceHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->preferenceHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    return-object v0
.end method


# virtual methods
.method public getEnvironment()Lcom/smedialink/storage/domain/model/common/Environment;
    .locals 1

    .line 32
    :try_start_0
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getPreferenceHelper()Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->getEnvironment()Lcom/smedialink/storage/domain/model/common/Environment;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    sget-object v0, Lcom/smedialink/storage/domain/model/common/Environment;->PRODUCTION:Lcom/smedialink/storage/domain/model/common/Environment;

    :goto_0
    return-object v0
.end method

.method public getEnvironmentInformation()Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/smedialink/storage/domain/model/common/Environment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getEnvironmentInformationBy(Lcom/smedialink/storage/domain/model/common/Environment;)Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;

    move-result-object v0

    return-object v0
.end method

.method public getEnvironmentInformationBy(Lcom/smedialink/storage/domain/model/common/Environment;)Lcom/smedialink/storage/domain/model/common/EnvironmentInformation;
    .locals 1

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 43
    sget-object p1, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Development;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 42
    :cond_1
    sget-object p1, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Stage;

    goto :goto_0

    .line 41
    :cond_2
    sget-object p1, Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;->INSTANCE:Lcom/smedialink/storage/domain/model/common/EnvironmentInformation$Production;

    :goto_0
    return-object p1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 16
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public switchEnvironmentTo(Lcom/smedialink/storage/domain/model/common/Environment;)V
    .locals 3

    const-string v0, "environment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getPreferenceHelper()Lcom/smedialink/storage/domain/storage/PreferenceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/storage/PreferenceHelper;->setEnvironment(Lcom/smedialink/storage/domain/model/common/Environment;)V

    .line 48
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->deleteAllWallets()V

    .line 49
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->getAuthManager()Lcom/smedialink/storage/domain/manager/auth/AuthManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/manager/auth/AuthManager;->logout()V

    .line 50
    sget-object p1, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->applicationHandler:Landroid/os/Handler;

    sget-object v0, Lcom/smedialink/storage/data/manager/common/EnvironmentManager;->exitRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
