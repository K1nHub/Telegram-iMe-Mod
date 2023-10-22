.class final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->setupListeners()V
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
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$3;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 971
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$3;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$setupListeners$1$3;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsPresenter;->startStakingConditionsDialog()V

    return-void
.end method
