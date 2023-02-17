.class final Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24;
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
        "Lcom/smedialink/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRepositoryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepositoryModule.kt\ncom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,145:1\n127#2,5:146\n127#2,5:151\n*S KotlinDebug\n*F\n+ 1 RepositoryModule.kt\ncom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24\n*L\n138#1:146,5\n139#1:151,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24;->INSTANCE:Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;
    .locals 8

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance p2, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;

    .line 131
    const-class v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    const-class v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    const-class v0, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 131
    const-class v0, Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;

    const-class v0, Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;

    const-class v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;

    move-object v1, p2

    .line 137
    invoke-direct/range {v1 .. v7}, Lcom/smedialink/storage/data/repository/crypto/wallet_connect/WalletConnectRepositoryImpl;-><init>(Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$24;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    move-result-object p1

    return-object p1
.end method
