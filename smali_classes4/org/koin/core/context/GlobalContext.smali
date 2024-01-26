.class public final Lorg/koin/core/context/GlobalContext;
.super Ljava/lang/Object;
.source "GlobalContext.kt"

# interfaces
.implements Lorg/koin/core/context/KoinContext;


# static fields
.field public static final INSTANCE:Lorg/koin/core/context/GlobalContext;

.field private static _koin:Lorg/koin/core/Koin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/koin/core/context/GlobalContext;

    invoke-direct {v0}, Lorg/koin/core/context/GlobalContext;-><init>()V

    sput-object v0, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final register(Lorg/koin/core/KoinApplication;)V
    .locals 1

    .line 43
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object p1

    sput-object p1, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    return-void

    .line 44
    :cond_0
    new-instance p1, Lorg/koin/core/error/KoinAppAlreadyStartedException;

    const-string v0, "A Koin Application has already been started"

    invoke-direct {p1, v0}, Lorg/koin/core/error/KoinAppAlreadyStartedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Lorg/koin/core/Koin;
    .locals 2

    .line 36
    sget-object v0, Lorg/koin/core/context/GlobalContext;->_koin:Lorg/koin/core/Koin;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KoinApplication has not been started"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startKoin(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/koin/core/KoinApplication;",
            "Lkotlin/Unit;",
            ">;)",
            "Lorg/koin/core/KoinApplication;"
        }
    .end annotation

    const-string v0, "appDeclaration"

    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    .line 63
    :try_start_0
    sget-object v0, Lorg/koin/core/KoinApplication;->Companion:Lorg/koin/core/KoinApplication$Companion;

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication$Companion;->init()Lorg/koin/core/KoinApplication;

    move-result-object v0

    .line 64
    sget-object v1, Lorg/koin/core/context/GlobalContext;->INSTANCE:Lorg/koin/core/context/GlobalContext;

    invoke-direct {v1, v0}, Lorg/koin/core/context/GlobalContext;->register(Lorg/koin/core/KoinApplication;)V

    .line 65
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->createEagerInstances()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
