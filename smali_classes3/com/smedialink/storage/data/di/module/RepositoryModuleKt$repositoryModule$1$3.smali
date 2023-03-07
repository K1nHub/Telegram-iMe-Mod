.class final Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3;
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
        "Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRepositoryModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RepositoryModule.kt\ncom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,145:1\n127#2,5:146\n127#2,5:151\n127#2,5:156\n*S KotlinDebug\n*F\n+ 1 RepositoryModule.kt\ncom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3\n*L\n65#1:146,5\n66#1:151,5\n67#1:156,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3;->INSTANCE:Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;
    .locals 9

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    const-class p2, Lcom/smedialink/storage/data/network/api/own/WalletApi;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 65
    move-object v2, p2

    check-cast v2, Lcom/smedialink/storage/data/network/api/own/WalletApi;

    .line 131
    const-class p2, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 65
    move-object v4, p2

    check-cast v4, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;

    .line 131
    const-class p2, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 65
    move-object v6, p2

    check-cast v6, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    .line 131
    const-class p2, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 66
    move-object v7, p2

    check-cast v7, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 66
    move-object v5, p2

    check-cast v5, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 131
    const-class p2, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 66
    move-object v8, p2

    check-cast v8, Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 131
    const-class p2, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v0}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 67
    move-object v3, p1

    check-cast v3, Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 64
    new-instance p1, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/data/repository/wallet/WalletRepositoryImpl;-><init>(Lcom/smedialink/storage/data/network/api/own/WalletApi;Lcom/smedialink/storage/data/datasource/transfer/WalletTransferDataSourceFactory;Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;Lcom/smedialink/storage/domain/gateway/TelegramGateway;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/di/module/RepositoryModuleKt$repositoryModule$1$3;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/repository/wallet/WalletRepository;

    move-result-object p1

    return-object p1
.end method
