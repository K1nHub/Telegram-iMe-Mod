.class final Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingModule.kt\ncom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,51:1\n129#2,5:52\n129#2,5:57\n*S KotlinDebug\n*F\n+ 1 StakingModule.kt\ncom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2\n*L\n25#1:52,5\n26#1:57,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2;

    invoke-direct {v0}, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2;-><init>()V

    sput-object v0, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2;->INSTANCE:Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$2;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lokhttp3/OkHttpClient;
    .locals 5

    const-class v0, Lokhttp3/Interceptor;

    const-string v1, "$this$single"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-class p2, Lokhttp3/Cache;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/Cache;

    const/4 v2, 0x3

    new-array v2, v2, [Lokhttp3/Interceptor;

    .line 25
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getMETADATA_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v3

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v3, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 26
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getLOGGING_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v3

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v3, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 26
    invoke-static {}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->getERROR_INTERCEPTOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v3

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Interceptor;

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 24
    invoke-static {p2, v2}, Lcom/iMe/storage/data/di/module/NetworkModuleKt;->createOkHttpClient(Lokhttp3/Cache;[Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method
