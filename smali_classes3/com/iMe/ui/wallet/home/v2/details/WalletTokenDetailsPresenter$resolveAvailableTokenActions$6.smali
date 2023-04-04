.class final Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
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
.field final synthetic $args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;->this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;->$args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;->this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getTokenCode(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$6;->$args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v2, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Crypto;->getToken()Lcom/iMe/model/wallet/home/AccountItem$Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/AccountItem$Token;->getBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$startReceiveScreen(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
