.class public final Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "TabbedViewPager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/view/TabbedViewPager;->initPager()Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/view/TabbedViewPager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 70
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 77
    iget-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    iget-object p2, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p2}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/fork/utils/AbstractTabbedViewPage;

    .line 79
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/fork/utils/AbstractTabbedViewPage;

    .line 77
    invoke-interface {p1, p2, v0, p3, p4}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->onPageChanged(Lcom/iMe/fork/utils/AbstractTabbedViewPage;Lcom/iMe/fork/utils/AbstractTabbedViewPage;II)V

    return-void
.end method
