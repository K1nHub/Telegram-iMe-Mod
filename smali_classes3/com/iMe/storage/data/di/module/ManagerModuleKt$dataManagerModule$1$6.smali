.class final Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,97:1\n129#2,5:98\n129#2,5:103\n129#2,5:108\n129#2,5:113\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6\n*L\n59#1:98,5\n60#1:103,5\n61#1:108,5\n62#1:113,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;

    invoke-direct {v0}, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;->INSTANCE:Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;
    .locals 6

    const-class v0, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    const-string v1, "$this$single"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance p2, Lcom/iMe/storage/data/manager/crypto/CryptoWalletsManagerImpl;

    .line 59
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v1

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    .line 60
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {p1, v4, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    .line 61
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getTRON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v4

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {p1, v5, v4, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    .line 62
    invoke-static {}, Lcom/iMe/storage/data/di/module/ManagerModuleKt;->getBTC_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v5

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v5, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    .line 58
    invoke-direct {p2, v1, v2, v4, p1}, Lcom/iMe/storage/data/manager/crypto/CryptoWalletsManagerImpl;-><init>(Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Lcom/iMe/storage/domain/manager/crypto/BlockchainCryptoWalletManager;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$6;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    move-result-object p1

    return-object p1
.end method
