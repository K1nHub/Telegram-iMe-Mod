.class public final Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "TelegramViewPagerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->initListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    .line 307
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    .line 310
    iget-object p2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p2

    neg-float p2, p2

    float-to-int p2, p2

    .line 311
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_1

    .line 313
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    neg-int p2, p2

    invoke-virtual {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    sub-int/2addr v0, p2

    invoke-virtual {p1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object p2, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-virtual {p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->getViewPages()[Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;

    move-result-object p2

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage;->getListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    if-ne p1, p2, :cond_3

    .line 324
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$getActionBar$p$s1999807853(Lcom/iMe/ui/pager/TelegramViewPagerFragment;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    int-to-float p2, p3

    sub-float p2, p1, p2

    .line 326
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    const/4 v1, 0x0

    if-gez p3, :cond_0

    .line 327
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p2

    int-to-float p2, p2

    neg-float p2, p2

    goto :goto_0

    :cond_0
    cmpl-float p3, p2, v1

    if-lez p3, :cond_1

    move p2, v1

    :cond_1
    :goto_0
    cmpg-float p1, p2, p1

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 332
    iget-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$ViewPage$initListView$2$1;->this$0:Lcom/iMe/ui/pager/TelegramViewPagerFragment;

    invoke-static {p1, p2}, Lcom/iMe/ui/pager/TelegramViewPagerFragment;->access$setScrollY(Lcom/iMe/ui/pager/TelegramViewPagerFragment;F)V

    :cond_3
    return-void
.end method
