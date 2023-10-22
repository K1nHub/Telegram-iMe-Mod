.class final Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->subscribeToQueryChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$setLastSearchQuery$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$getCryptoWalletInteractor$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getMnemonicWordsSuggestions(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;->invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
