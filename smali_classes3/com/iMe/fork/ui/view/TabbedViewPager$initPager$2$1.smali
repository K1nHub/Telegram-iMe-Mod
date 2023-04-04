.class public final Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;
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
.method constructor <init>(Lcom/iMe/fork/ui/view/TabbedViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    .line 55
    invoke-direct {p0}, Lorg/telegram/ui/Components/ViewPagerFixed$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;II)V
    .locals 0

    const-string p3, "view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {p3}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p3}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/iMe/fork/utils/AbstractTabbedViewPage;

    invoke-interface {p1, p3, p2}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->bind(Lcom/iMe/fork/utils/AbstractTabbedViewPage;I)V

    return-void
.end method

.method public createView(I)Landroid/view/View;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/utils/AbstractTabbedViewPage;

    invoke-virtual {p1}, Lcom/iMe/fork/utils/AbstractTabbedViewPage;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemIcon(I)I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/utils/AbstractTabbedViewPage;

    invoke-virtual {p1}, Lcom/iMe/fork/utils/AbstractTabbedViewPage;->getIcon()I

    move-result p1

    return p1
.end method

.method public getItemTitle(I)Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/fork/ui/view/TabbedViewPager$initPager$2$1;->this$0:Lcom/iMe/fork/ui/view/TabbedViewPager;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/TabbedViewPager;->getDelegate()Lcom/iMe/fork/utils/TabbedViewPagerDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/iMe/fork/utils/TabbedViewPagerDelegate;->getPages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/utils/AbstractTabbedViewPage;

    invoke-virtual {p1}, Lcom/iMe/fork/utils/AbstractTabbedViewPage;->getTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method
