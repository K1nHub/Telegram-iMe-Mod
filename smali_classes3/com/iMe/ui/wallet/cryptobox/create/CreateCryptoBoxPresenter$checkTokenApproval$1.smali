.class final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateCryptoBoxPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->checkTokenApproval(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;->$token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Long;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTokenApprovalInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getCryptoBoxInteractor$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    move-result-object p1

    .line 468
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedNetworkItem$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;->$token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {p1, v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->getApprovalInfo(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$checkTokenApproval$1;->invoke(Ljava/lang/Long;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
