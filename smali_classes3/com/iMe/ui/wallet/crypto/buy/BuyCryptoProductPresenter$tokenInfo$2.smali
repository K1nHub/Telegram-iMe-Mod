.class final Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BuyCryptoProductPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenInfo$2;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;
    .locals 2

    .line 41
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenInfo$2;->this$0:Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->access$getTokenCode(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$tokenInfo$2;->invoke()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    return-object v0
.end method