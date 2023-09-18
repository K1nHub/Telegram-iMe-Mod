.class public final Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "CreateWalletTutorialFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->setupViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    .line 146
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v3}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$setSwipeBackEnabled$p(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;Z)V

    .line 149
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$setupViewPager$1$1$1;->this$0:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$getTutorialAdapter(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;)Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/crypto/tutorial/adapter/CreateWalletTutorialAdapter;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v3

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->access$updatePageButton(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;Z)V

    return-void
.end method
