.class final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateWalletIntroFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;->invoke()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/parameter/ParametersHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $linkedWalletAddress:Ljava/lang/String;

.field final synthetic $manualBlockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;


# direct methods
.method constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;->$manualBlockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;->$linkedWalletAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 66
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;->$manualBlockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 67
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;->$linkedWalletAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->access$getWalletCreationType$p(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 65
    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method
