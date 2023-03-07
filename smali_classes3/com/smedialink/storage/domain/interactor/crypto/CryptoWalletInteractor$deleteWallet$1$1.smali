.class final Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$1$1;
.super Ljava/lang/Object;
.source "CryptoWalletInteractor.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable;"
    }
.end annotation


# instance fields
.field final synthetic $blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

.field final synthetic this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$1$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$1$1;->$blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$1$1;->call()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final call()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$1$1;->this$0:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {v0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getCryptoAccessManager$p(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$1$1;->$blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->deleteWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method
