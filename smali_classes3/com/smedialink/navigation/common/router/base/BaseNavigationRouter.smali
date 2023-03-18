.class public abstract Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;
.super Ljava/lang/Object;
.source "BaseNavigationRouter.kt"

# interfaces
.implements Lcom/smedialink/navigation/common/router/base/NavigationRouter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/smedialink/navigation/common/router/base/NavigationRouter<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseNavigationRouter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseNavigationRouter.kt\ncom/smedialink/navigation/common/router/base/BaseNavigationRouter\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,123:1\n215#2,2:124\n288#3,2:126\n*S KotlinDebug\n*F\n+ 1 BaseNavigationRouter.kt\ncom/smedialink/navigation/common/router/base/BaseNavigationRouter\n*L\n51#1:124,2\n86#1:126,2\n*E\n"
.end annotation


# instance fields
.field private currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final fragmentsStack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final isBottomNavigation:Z

.field private navigationConfiguration:Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/smedialink/navigation/common/configuration/NavigationConfiguration<",
            "+",
            "Lcom/smedialink/model/common/NavigationTab<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->isBottomNavigation:Z

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->fragmentsStack:Ljava/util/HashMap;

    return-void
.end method

.method private final recreateView(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 114
    invoke-interface {p2}, Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;->getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 116
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    const-string p2, "fragment.fragmentView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->removeSelfFromParent(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->fragmentsStack:Ljava/util/HashMap;

    .line 215
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/base/mvp/MvpFragment;

    .line 53
    invoke-virtual {v2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onDestroyView()V

    .line 54
    invoke-virtual {v2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    .line 60
    iput-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->navigationConfiguration:Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    return-void
.end method

.method protected final getConfiguration()Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/smedialink/navigation/common/configuration/NavigationConfiguration<",
            "+",
            "Lcom/smedialink/model/common/NavigationTab<",
            "TT;>;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->navigationConfiguration:Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    return-object v0
.end method

.method public getCurrentScreen()Lcom/smedialink/ui/base/mvp/MvpFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    return-object v0
.end method

.method protected final getFragmentsStack()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->fragmentsStack:Ljava/util/HashMap;

    return-object v0
.end method

.method public getScreenStack()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->fragmentsStack:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "fragmentsStack.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getViewByFragmentId(I)Landroid/view/View;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->fragmentsStack:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/MvpFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->show(I)V

    .line 27
    invoke-virtual {p0}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->getCurrentScreen()Lcom/smedialink/ui/base/mvp/MvpFragment;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    const-string p1, "run {\n                sh\u2026ragmentView\n            }"

    .line 25
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public init(Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;)V
    .locals 1
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

    .line 42
    invoke-virtual {p1}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;->getTabs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->navigationConfiguration:Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect navigation configuration passed"

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show(I)V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->navigationConfiguration:Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;->getViewConfiguration()Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 71
    iget-object v1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->fragmentsStack:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/MvpFragment;

    if-eqz v1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    .line 74
    :cond_0
    iget-boolean p1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->isBottomNavigation:Z

    if-eqz p1, :cond_1

    .line 75
    invoke-interface {v0}, Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;->getFragmentContainer()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    invoke-direct {p0, v1, v0}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->recreateView(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;)V

    .line 78
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->recreateView(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;)V

    .line 83
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    .line 84
    iput-object v1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    goto/16 :goto_4

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->navigationConfiguration:Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;->getTabs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 288
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/smedialink/model/common/NavigationTab;

    .line 86
    invoke-virtual {v4}, Lcom/smedialink/model/common/NavigationTab;->getId()I

    move-result v4

    if-ne v4, p1, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_6
    move-object v3, v2

    :goto_2
    check-cast v3, Lcom/smedialink/model/common/NavigationTab;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/smedialink/model/common/NavigationTab;->getFragment()Lcom/smedialink/ui/base/mvp/MvpFragment;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_c

    .line 88
    iget-object v1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    .line 89
    :cond_8
    iget-boolean v1, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->isBottomNavigation:Z

    if-eqz v1, :cond_9

    .line 90
    invoke-interface {v0}, Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;->getFragmentContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 91
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 92
    invoke-direct {p0, v2, v0}, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->recreateView(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;)V

    .line 93
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 96
    :cond_9
    invoke-interface {v0}, Lcom/smedialink/navigation/common/configuration/NavigationViewConfiguration;->getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 98
    :cond_a
    :goto_3
    invoke-virtual {v2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onViewCreated()V

    .line 99
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    if-eqz v0, :cond_b

    .line 100
    invoke-virtual {v2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onResume()V

    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->fragmentsStack:Ljava/util/HashMap;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iput-object v2, p0, Lcom/smedialink/navigation/common/router/base/BaseNavigationRouter;->currentActiveFragment:Lcom/smedialink/ui/base/mvp/MvpFragment;

    :cond_c
    :goto_4
    return-void

    .line 69
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Incorrect navigation configuration passed"

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
