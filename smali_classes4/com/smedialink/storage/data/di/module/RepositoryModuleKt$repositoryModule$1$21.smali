.class final Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21;
.super Lkotlin/jvm/internal/Lambda;
.source "RepositoryModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/storage/domain/repository/crypto/boost/BoostRepository;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRepositoryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepositoryModule.kt\ncom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,145:1\n127#2,5:146\n*S KotlinDebug\n*F\n+ 1 RepositoryModule.kt\ncom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21\n*L\n133#1:146,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21;->INSTANCE:Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/repository/crypto/boost/BoostRepository;
    .locals 7

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-class p2, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 133
    move-object v6, p2

    check-cast v6, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 131
    const-class p2, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 133
    move-object v5, p2

    check-cast v5, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 131
    const-class p2, Lcom/smedialink/storage/data/network/api/own/BoostApi;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 133
    move-object v2, p2

    check-cast v2, Lcom/smedialink/storage/data/network/api/own/BoostApi;

    .line 131
    const-class p2, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 133
    move-object v4, p2

    check-cast v4, Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    move-object v3, p1

    check-cast v3, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    new-instance p1, Lcom/smedialink/storage/data/repository/crypto/boost/BoostRepositoryImpl;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/data/repository/crypto/boost/BoostRepositoryImpl;-><init>(Lcom/smedialink/storage/data/network/api/own/BoostApi;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/data/datasource/boost/WalletBoostDataSourceFactory;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$21;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/repository/crypto/boost/BoostRepository;

    move-result-object p1

    return-object p1
.end method
