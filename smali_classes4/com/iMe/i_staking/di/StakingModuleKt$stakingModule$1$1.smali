.class final Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1;
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
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingModule.kt\ncom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,51:1\n127#2,5:52\n*S KotlinDebug\n*F\n+ 1 StakingModule.kt\ncom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1\n*L\n22#1:52,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1;

    invoke-direct {v0}, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1;-><init>()V

    sput-object v0, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1;->INSTANCE:Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1;

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

    .line 22
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/i_staking/di/StakingModuleKt$stakingModule$1$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lretrofit2/Retrofit;
    .locals 3

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/iMe/i_staking/di/StakingModuleKt;->getSTAKING_CLIENT()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p2

    .line 131
    const-class v0, Lokhttp3/OkHttpClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokhttp3/OkHttpClient;

    .line 22
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Api;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Api;

    invoke-virtual {v0}, Lcom/smedialink/storage/common/AppConfiguration$Api;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-class v2, Lcom/google/gson/Gson;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/Gson;

    .line 22
    invoke-static {p2, v0, p1}, Lcom/smedialink/storage/data/di/module/NetworkModuleKt;->createRetrofit(Lokhttp3/OkHttpClient;Ljava/lang/String;Lcom/google/gson/Gson;)Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method
