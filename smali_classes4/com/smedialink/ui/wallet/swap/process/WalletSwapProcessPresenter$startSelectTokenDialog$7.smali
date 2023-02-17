.class final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/model/wallet/select/SelectableToken;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $side:Lcom/smedialink/model/wallet/swap/SwapSide;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;->$side:Lcom/smedialink/model/wallet/swap/SwapSide;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 271
    check-cast p1, Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;->invoke(Lcom/smedialink/model/wallet/select/SelectableToken;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/model/wallet/select/SelectableToken;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startSelectTokenDialog$7;->$side:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-virtual {v0, v1, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->selectToken(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    return-void
.end method
