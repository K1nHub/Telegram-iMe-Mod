.class final Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;
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
        "Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSourceModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,150:1\n129#2,5:151\n129#2,5:156\n129#2,5:161\n*S KotlinDebug\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5\n*L\n70#1:151,5\n71#1:156,5\n72#1:161,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;
    .locals 4

    const-string v0, "$this$single"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getETH_APPROVE_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object p2

    .line 133
    const-class v0, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    .line 70
    check-cast p2, Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;

    .line 71
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getEVM_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    .line 133
    const-class v2, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    check-cast v0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 72
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getDEX_SWAP_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    .line 133
    const-class v3, Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {p1, v3, v2, v1}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    .line 72
    check-cast p1, Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;

    .line 69
    new-instance v1, Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;

    invoke-direct {v1, v0, p2, p1}, Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;-><init>(Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/iMe/storage/data/datasource/approve/WalletApproveDataSource;Lcom/iMe/storage/data/datasource/swap/WalletSwapDataSource;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$5;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/boost/WalletBoostDataSourceFactory;

    move-result-object p1

    return-object p1
.end method
