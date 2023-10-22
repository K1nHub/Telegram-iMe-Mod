.class final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->getCryptoBoxActions(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;->$this_with:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 577
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;->$this_with:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter$getCryptoBoxActions$1$2;->$this_with:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->access$prepareCryptoBoxMessageRefresh(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;Ljava/lang/String;J)V

    return-void
.end method
