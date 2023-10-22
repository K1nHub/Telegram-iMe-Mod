.class final Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$pageTabs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;-><init>(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$pageTabs$2;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$pageTabs$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/details/WalletTokenDetailsNavigationTab;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment$pageTabs$2;->this$0:Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;->access$initPageTabs(Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
