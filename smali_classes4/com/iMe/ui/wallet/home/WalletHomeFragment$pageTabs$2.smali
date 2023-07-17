.class final Lcom/iMe/ui/wallet/home/WalletHomeFragment$pageTabs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/WalletHomeFragment;-><init>()V
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
        "Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/WalletHomeFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/WalletHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment$pageTabs$2;->this$0:Lcom/iMe/ui/wallet/home/WalletHomeFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment$pageTabs$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/navigation/WalletHomeNavigationTab;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/WalletHomeFragment$pageTabs$2;->this$0:Lcom/iMe/ui/wallet/home/WalletHomeFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/WalletHomeFragment;->access$initPageTabs(Lcom/iMe/ui/wallet/home/WalletHomeFragment;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
