.class final Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;
.super Lkotlin/jvm/internal/Lambda;
.source "DataSourceModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSourceModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,105:1\n129#2,5:106\n129#2,5:111\n*S KotlinDebug\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8\n*L\n85#1:106,5\n86#1:111,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;
    .locals 5

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance p2, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;

    .line 133
    const-class v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    const-class v2, Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;

    const-class v3, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 133
    const-class v4, Lcom/iMe/storage/data/network/api/own/WalletApi;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v1, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/api/own/WalletApi;

    .line 84
    invoke-direct {p2, v0, v2, v3, p1}, Lcom/iMe/storage/data/datasource/transfer/impl/TRONWalletTransferDataSourceImpl;-><init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/network/api/own/CryptoWalletApi;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/data/network/api/own/WalletApi;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$8;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    move-result-object p1

    return-object p1
.end method
