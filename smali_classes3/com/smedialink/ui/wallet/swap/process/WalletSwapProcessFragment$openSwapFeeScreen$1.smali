.class final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->openSwapFeeScreen(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 305
    check-cast p1, Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;->invoke(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$openSwapFeeScreen$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->processSwapFee(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V

    return-void
.end method
