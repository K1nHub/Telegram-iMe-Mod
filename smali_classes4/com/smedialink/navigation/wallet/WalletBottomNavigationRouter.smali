.class public final Lcom/smedialink/navigation/wallet/WalletBottomNavigationRouter;
.super Lcom/smedialink/navigation/common/router/CommonBottomNavigationRouter;
.source "WalletBottomNavigationRouter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/navigation/common/router/CommonBottomNavigationRouter<",
        "Lcom/smedialink/ui/wallet/common/WalletTabFragment;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletBottomNavigationRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletBottomNavigationRouter.kt\ncom/smedialink/navigation/wallet/WalletBottomNavigationRouter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n286#2,2:34\n*S KotlinDebug\n*F\n+ 1 WalletBottomNavigationRouter.kt\ncom/smedialink/navigation/wallet/WalletBottomNavigationRouter\n*L\n23#1:34,2\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/smedialink/navigation/common/router/CommonBottomNavigationRouter;-><init>()V

    return-void
.end method

.method private final showTitle(I)V
    .locals 6

    .line 22
    invoke-virtual {p0}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->getConfiguration()Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual {v0}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;->getTabs()Ljava/util/List;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/model/common/NavigationTab;

    .line 23
    invoke-virtual {v5}, Lcom/smedialink/model/common/NavigationTab;->getId()I

    move-result v5

    if-ne v5, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 287
    :goto_1
    check-cast v2, Lcom/smedialink/model/wallet/navigation/WalletBottomNavigationTab;

    if-nez v2, :cond_4

    return-void

    .line 25
    :cond_4
    invoke-virtual {v0}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;->getViewConfiguration()Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;->getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/navigation/WalletBottomNavigationTab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    sget v1, Lorg/telegram/messenger/R$id;->wallet_root_bottom_navigation_home:I

    if-eq p1, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method public show(I)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->show(I)V

    .line 14
    invoke-direct {p0, p1}, Lcom/smedialink/navigation/wallet/WalletBottomNavigationRouter;->showTitle(I)V

    return-void
.end method
