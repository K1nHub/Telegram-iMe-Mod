.class public final Lcom/smedialink/ui/shop/NeurobotsStoreActivity$buildNewTabsAdapter$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "NeurobotsStoreActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->buildNewTabsAdapter()Landroidx/viewpager/widget/PagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$buildNewTabsAdapter$1;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    .line 381
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "container"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "child"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$buildNewTabsAdapter$1;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getTabViews$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 400
    invoke-static {}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->getResId()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$buildNewTabsAdapter$1;->this$0:Lcom/smedialink/ui/shop/NeurobotsStoreActivity;

    invoke-static {v0}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->access$getTabViews$p(Lcom/smedialink/ui/shop/NeurobotsStoreActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 391
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "null cannot be cast to non-null type android.view.View"

    .line 392
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
