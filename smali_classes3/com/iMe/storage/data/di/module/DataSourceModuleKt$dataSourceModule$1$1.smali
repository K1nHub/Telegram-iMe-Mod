.class final Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;
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
        "Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSourceModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,105:1\n127#2,5:106\n127#2,5:111\n127#2,5:116\n*S KotlinDebug\n*F\n+ 1 DataSourceModule.kt\ncom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1\n*L\n42#1:106,5\n43#1:111,5\n44#1:116,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;
    .locals 5

    const-class v0, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    const-string v1, "$this$single"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p2, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    .line 42
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getEVM_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v1

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 43
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getTON_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 44
    invoke-static {}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->getTRON_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v4

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;

    .line 41
    invoke-direct {p2, v1, v2, p1}, Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;-><init>(Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSource;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1$1;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/data/datasource/transfer/WalletTransferDataSourceFactory;

    move-result-object p1

    return-object p1
.end method
