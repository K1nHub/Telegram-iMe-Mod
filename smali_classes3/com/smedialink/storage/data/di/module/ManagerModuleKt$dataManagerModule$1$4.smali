.class final Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "ManagerModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1;->invoke(Lorg/koin/core/module/Module;)V
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
        "Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManagerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManagerModule.kt\ncom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4\n+ 2 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,68:1\n127#2,5:69\n127#2,5:74\n*S KotlinDebug\n*F\n+ 1 ManagerModule.kt\ncom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4\n*L\n43#1:69,5\n44#1:74,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;

    invoke-direct {v0}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;->INSTANCE:Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;
    .locals 4

    const-class v0, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    const-string v1, "$this$single"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;

    .line 43
    invoke-static {}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->getEVM_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v1

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    .line 44
    invoke-static {}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt;->getTON_BLOCKCHAIN_CRYPTO_WALLET_MANAGER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v2

    .line 131
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v3}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;

    .line 42
    invoke-direct {p2, v1, p1}, Lcom/smedialink/storage/data/manager/crypto/CryptoWalletsManagerImpl;-><init>(Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;Lcom/smedialink/storage/domain/manager/crypto/BlockchainCryptoWalletManager;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/data/di/module/ManagerModuleKt$dataManagerModule$1$4;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/storage/domain/manager/crypto/CryptoWalletsManager;

    move-result-object p1

    return-object p1
.end method
