.class public final Lorg/fork/ui/view/TabbedViewPager$initPager$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "TabbedViewPager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/view/TabbedViewPager;->initPager()Lorg/fork/ui/view/TabbedViewPager$initPager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/view/TabbedViewPager;


# direct methods
.method constructor <init>(Lorg/fork/ui/view/TabbedViewPager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lorg/fork/ui/view/TabbedViewPager;

    .line 50
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 52
    iget-object p1, p0, Lorg/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lorg/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lorg/fork/ui/view/TabbedViewPager;->getDelegate()Lorg/fork/utils/TabbedViewPagerDelegate;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lorg/fork/ui/view/TabbedViewPager;

    invoke-virtual {p2}, Lorg/fork/ui/view/TabbedViewPager;->getDelegate()Lorg/fork/utils/TabbedViewPagerDelegate;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/fork/utils/AbstractTabbedViewPage;

    iget-object v0, p0, Lorg/fork/ui/view/TabbedViewPager$initPager$1;->this$0:Lorg/fork/ui/view/TabbedViewPager;

    invoke-virtual {v0}, Lorg/fork/ui/view/TabbedViewPager;->getDelegate()Lorg/fork/utils/TabbedViewPagerDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fork/utils/AbstractTabbedViewPage;

    invoke-interface {p1, p2, v0, p3, p4}, Lorg/fork/utils/TabbedViewPagerDelegate;->onPageChanged(Lorg/fork/utils/AbstractTabbedViewPage;Lorg/fork/utils/AbstractTabbedViewPage;II)V

    return-void
.end method
