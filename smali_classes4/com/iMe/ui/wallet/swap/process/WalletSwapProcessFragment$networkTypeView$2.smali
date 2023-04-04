.class final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;-><init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$ScreenType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/ui/custom/NetworkTypeView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/ui/custom/NetworkTypeView;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->access$initGlobalNetworkView(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$networkTypeView$2;->invoke()Lcom/iMe/ui/custom/NetworkTypeView;

    move-result-object v0

    return-object v0
.end method
