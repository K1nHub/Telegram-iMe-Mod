.class public final Lcom/iMe/storage/data/di/module/DataSourceModuleKt;
.super Ljava/lang/Object;
.source "DataSourceModule.kt"


# static fields
.field private static final BTC_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

.field private static final DEX_SWAP_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

.field private static final ETH_APPROVE_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

.field private static final ETH_CANCEL_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

.field private static final EVM_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

.field private static final TON_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

.field private static final TRON_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

.field private static dataSourceModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "EVM_CRYPTO_TRANSFER_DATA_SOURCE"

    .line 27
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->EVM_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "TON_CRYPTO_TRANSFER_DATA_SOURCE"

    .line 28
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->TON_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "TRON_CRYPTO_TRANSFER_DATA_SOURCE"

    .line 29
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->TRON_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "BTC_CRYPTO_TRANSFER_DATA_SOURCE"

    .line 30
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->BTC_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "DEX_SWAP_DATA_SOURCE"

    .line 33
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->DEX_SWAP_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "ETH_APPROVE_DATA_SOURCE"

    .line 36
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->ETH_APPROVE_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "ETH_CANCEL_DATA_SOURCE"

    .line 39
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->ETH_CANCEL_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    .line 41
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;->INSTANCE:Lcom/iMe/storage/data/di/module/DataSourceModuleKt$dataSourceModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->dataSourceModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getBTC_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 30
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->BTC_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getDEX_SWAP_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 33
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->DEX_SWAP_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getDataSourceModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 41
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->dataSourceModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getETH_APPROVE_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 36
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->ETH_APPROVE_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getETH_CANCEL_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 39
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->ETH_CANCEL_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getEVM_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 27
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->EVM_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getTON_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 28
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->TON_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getTRON_CRYPTO_TRANSFER_DATA_SOURCE()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 29
    sget-object v0, Lcom/iMe/storage/data/di/module/DataSourceModuleKt;->TRON_CRYPTO_TRANSFER_DATA_SOURCE:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method
