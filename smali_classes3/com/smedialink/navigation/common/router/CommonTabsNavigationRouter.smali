.class public Lcom/smedialink/navigation/common/router/CommonTabsNavigationRouter;
.super Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;
.source "CommonTabsNavigationRouter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        ">",
        "Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonTabsNavigationRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonTabsNavigationRouter.kt\ncom/smedialink/navigation/common/router/CommonTabsNavigationRouter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n1547#2:34\n1618#2,3:35\n*S KotlinDebug\n*F\n+ 1 CommonTabsNavigationRouter.kt\ncom/smedialink/navigation/common/router/CommonTabsNavigationRouter\n*L\n17#1:34\n17#1:35,3\n*E\n"
.end annotation


# instance fields
.field private final preloadAllTabs:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;-><init>(Z)V

    .line 9
    iput-boolean p1, p0, Lcom/smedialink/navigation/common/router/CommonTabsNavigationRouter;->preloadAllTabs:Z

    return-void
.end method


# virtual methods
.method public init(Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/navigation/common/configuration/NavigationConfiguration<",
            "+",
            "Lcom/smedialink/model/common/NavigationTab<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-super {p0, p1}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->init(Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;)V

    .line 16
    iget-boolean v0, p0, Lcom/smedialink/navigation/common/router/CommonTabsNavigationRouter;->preloadAllTabs:Z

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->getFragmentsStack()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;->getTabs()Ljava/util/List;

    move-result-object v1

    .line 1547
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1619
    check-cast v3, Lcom/smedialink/model/common/NavigationTab;

    .line 18
    invoke-virtual {v3}, Lcom/smedialink/model/common/NavigationTab;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/smedialink/model/common/NavigationTab;->getFragment()Lcom/smedialink/ui/base/mvp/MvpFragment;

    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;->getViewConfiguration()Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;

    move-result-object v5

    invoke-interface {v5}, Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;->getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 20
    invoke-virtual {v3}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onViewCreated()V

    .line 21
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 18
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->putAll(Ljava/util/Map;Ljava/lang/Iterable;)V

    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/smedialink/navigation/common/router/CommonTabsNavigationRouter;->preloadAllTabs:Z

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-super {p0, p1}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->show(I)V

    return-void
.end method
