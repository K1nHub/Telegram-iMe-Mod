.class public final Lcom/iMe/ui/wallet/common/WalletRootFragment$setupBottomNavigationBar$1$1;
.super Ljava/lang/Object;
.source "WalletRootFragment.kt"

# interfaces
.implements Lcom/fxn/OnBubbleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/common/WalletRootFragment;->setupBottomNavigationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupBottomNavigationBar$1$1;->this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBubbleClick(I)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupBottomNavigationBar$1$1;->this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->access$getPresenter(Lcom/iMe/ui/wallet/common/WalletRootFragment;)Lcom/iMe/ui/wallet/common/WalletRootPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/common/WalletRootPresenter;->selectTab(I)V

    const/4 p1, 0x1

    return p1
.end method
