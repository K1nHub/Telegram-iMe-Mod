.class public final Lcom/smedialink/storage/data/di/module/ManagerModuleKt;
.super Ljava/lang/Object;
.source "ManagerModule.kt"


# static fields
.field private static final EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER:Lorg/koin/core/qualifier/StringQualifier;

.field private static final TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER:Lorg/koin/core/qualifier/StringQualifier;

.field private static dataManagerModule:Lorg/koin/core/module/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER"

    .line 24
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER:Lorg/koin/core/qualifier/StringQualifier;

    const-string v0, "TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER"

    .line 25
    invoke-static {v0}, Lorg/koin/core/qualifier/QualifierKt;->named(Ljava/lang/String;)Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER:Lorg/koin/core/qualifier/StringQualifier;

    .line 27
    sget-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->dataManagerModule:Lorg/koin/core/module/Module;

    return-void
.end method

.method public static final getDataManagerModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 27
    sget-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->dataManagerModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 24
    sget-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->EVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method

.method public static final getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 25
    sget-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->TON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER:Lorg/koin/core/qualifier/StringQualifier;

    return-object v0
.end method
