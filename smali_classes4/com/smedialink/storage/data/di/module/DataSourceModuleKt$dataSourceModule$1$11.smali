.class final Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;
.super Lkotlin/jvm/internal/Lambda;
.source "DataSourceModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSourceModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSourceModule.kt\ncom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,97:1\n127#2,5:98\n*S KotlinDebug\n*F\n+ 1 DataSourceModule.kt\ncom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11\n*L\n92#1:98,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;->INSTANCE:Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;
    .locals 4

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p2, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;

    .line 131
    const-class v0, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    const-class v2, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    const-class v3, Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;

    .line 92
    invoke-direct {p2, v0, v2, p1}, Lcom/smedialink/storage/data/datasource/wallet_connect/impl/WalletConnectDataSourceImpl;-><init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/network/api/own/WalletConnectApi;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$11;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/data/datasource/wallet_connect/WalletConnectDataSource;

    move-result-object p1

    return-object p1
.end method
