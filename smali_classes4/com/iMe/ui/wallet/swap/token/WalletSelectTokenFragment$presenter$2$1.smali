.class final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSelectTokenFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2;->invoke()Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;
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
.field final synthetic $networkId:Ljava/lang/String;

.field final synthetic $selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->$networkId:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->access$getScreenType$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->$networkId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$presenter$2$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->access$getOnlyPositiveBalance$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method
