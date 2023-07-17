.class public final Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->unlockWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Wallet$TON;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Wallet;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$mapSuccess$1\n+ 2 TONBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,92:1\n46#2,5:93\n52#2:99\n9#3:98\n*S KotlinDebug\n*F\n+ 1 TONBlockchainCryptoWalletManagerImpl.kt\ncom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl\n*L\n50#1:98\n*E\n"
.end annotation


# instance fields
.field final synthetic $guid$inlined:Ljava/lang/String;

.field final synthetic $mnemonic$inlined:Ljava/lang/String;

.field final synthetic $oldGuid$inlined:Ljava/lang/String;

.field final synthetic $password$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$guid$inlined:Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$oldGuid$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;

    iput-object p4, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$mnemonic$inlined:Ljava/lang/String;

    iput-object p5, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$password$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/Wallet$TON;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$guid$inlined:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$oldGuid$inlined:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;

    iget-object v2, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$guid$inlined:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$oldGuid$inlined:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$mnemonic$inlined:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$password$inlined:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$TON;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$TON;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;->access$rewriteWalletToNewGuid(Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$TON;

    iget-object v1, p0, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->$guid$inlined:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/iMe/storage/domain/model/crypto/Wallet$TON;->copy$default(Lcom/iMe/storage/domain/model/crypto/Wallet$TON;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ldrinkless/org/ton/TonApi$InputKeyRegular;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/Wallet$TON;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    :cond_1
    const-string v0, "if (result is Result.Suc\u2026                        }"

    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_3
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/crypto/blockchains/TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
