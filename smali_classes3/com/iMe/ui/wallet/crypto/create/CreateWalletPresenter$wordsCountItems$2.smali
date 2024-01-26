.class final Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$wordsCountItems$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;-><init>(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$wordsCountItems$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$wordsCountItems$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$wordsCountItems$2;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$initWordsCountItems(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
