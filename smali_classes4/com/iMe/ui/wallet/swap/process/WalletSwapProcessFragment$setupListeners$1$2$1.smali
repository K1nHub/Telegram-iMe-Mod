.class final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 420
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupListeners$1$2$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p1

    sget-object v0, Lcom/iMe/model/wallet/swap/SwapSide;->INPUT:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startSelectTokenDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method
