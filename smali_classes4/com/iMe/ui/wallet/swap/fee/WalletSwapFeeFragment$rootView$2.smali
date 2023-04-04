.class final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$rootView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapFeeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;-><init>(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$rootView$2;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/FrameLayout;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$rootView$2;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$createRootView(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$rootView$2;->invoke()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
