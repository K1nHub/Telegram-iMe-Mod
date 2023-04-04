.class public final synthetic Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/SlideChooseView$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/RecyclerListView$Holder;

.field public final synthetic f$1:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$Holder;Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/RecyclerListView$Holder;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    return-void
.end method


# virtual methods
.method public final onOptionSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/RecyclerListView$Holder;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {v0, v1, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$ListAdapter;->$r8$lambda$4WY2mDjZv1XKHc_Am-gA2qPaT10(Lorg/telegram/ui/Components/RecyclerListView$Holder;Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;I)V

    return-void
.end method

.method public synthetic onTouchEnd()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/SlideChooseView$Callback$-CC;->$default$onTouchEnd(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    return-void
.end method
