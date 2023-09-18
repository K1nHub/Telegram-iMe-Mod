.class public final Lcom/iMe/common/AppLifecycleObserver;
.super Ljava/lang/Object;
.source "AppLifecycleObserver.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/common/AppLifecycleObserver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppLifecycleObserver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLifecycleObserver.kt\ncom/iMe/common/AppLifecycleObserver\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,36:1\n56#2,6:37\n*S KotlinDebug\n*F\n+ 1 AppLifecycleObserver.kt\ncom/iMe/common/AppLifecycleObserver\n*L\n15#1:37,6\n*E\n"
.end annotation


# instance fields
.field private final accessManager$delegate:Lkotlin/Lazy;

.field private final handler:Landroid/os/Handler;

.field private final logoutWalletRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$9VU_17bRZ_ySg_GDzc7dIl2YZdY(Lcom/iMe/common/AppLifecycleObserver;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/common/AppLifecycleObserver;->logoutWalletRunnable$lambda$0(Lcom/iMe/common/AppLifecycleObserver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/common/AppLifecycleObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/common/AppLifecycleObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/common/AppLifecycleObserver$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/common/AppLifecycleObserver$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/iMe/common/AppLifecycleObserver;->accessManager$delegate:Lkotlin/Lazy;

    .line 16
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    const-string v1, "applicationHandler"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iMe/common/AppLifecycleObserver;->handler:Landroid/os/Handler;

    .line 17
    new-instance v0, Lcom/iMe/common/AppLifecycleObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/common/AppLifecycleObserver$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/common/AppLifecycleObserver;)V

    iput-object v0, p0, Lcom/iMe/common/AppLifecycleObserver;->logoutWalletRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final getAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/common/AppLifecycleObserver;->accessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method private static final logoutWalletRunnable$lambda$0(Lcom/iMe/common/AppLifecycleObserver;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/iMe/common/AppLifecycleObserver;->getAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->logoutAllWallets()V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 12
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final onEnterBackground()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/iMe/common/AppLifecycleObserver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iMe/common/AppLifecycleObserver;->logoutWalletRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onEnterForeground()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/iMe/common/AppLifecycleObserver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/iMe/common/AppLifecycleObserver;->logoutWalletRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
