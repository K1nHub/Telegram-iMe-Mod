.class public final Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SmartBotsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/smartpanel/SmartBotsView;-><init>(Landroid/content/Context;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dialogId:J

.field final synthetic this$0:Lcom/iMe/ui/smartpanel/SmartBotsView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/smartpanel/SmartBotsView;J)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->this$0:Lcom/iMe/ui/smartpanel/SmartBotsView;

    iput-wide p2, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->$dialogId:J

    .line 277
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "container"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "obj"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->this$0:Lcom/iMe/ui/smartpanel/SmartBotsView;

    invoke-static {v0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->access$getContent$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->this$0:Lcom/iMe/ui/smartpanel/SmartBotsView;

    invoke-static {v0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->access$getContent$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/iMe/ui/smartpanel/model/SmartBotTab;

    .line 286
    new-instance p2, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "container.context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->this$0:Lcom/iMe/ui/smartpanel/SmartBotsView;

    invoke-static {v0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->access$getCurrentBotResponseType$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;

    move-result-object v3

    iget-object v0, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->this$0:Lcom/iMe/ui/smartpanel/SmartBotsView;

    invoke-static {v0}, Lcom/iMe/ui/smartpanel/SmartBotsView;->access$getListener$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    move-result-object v4

    iget-wide v5, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->$dialogId:J

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;-><init>(Landroid/content/Context;Lcom/iMe/ui/smartpanel/model/SmartBotTab;Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;J)V

    .line 287
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/SmartBotsView$pagerAdapter$1;->this$0:Lcom/iMe/ui/smartpanel/SmartBotsView;

    invoke-static {p1}, Lcom/iMe/ui/smartpanel/SmartBotsView;->access$getContentViews$p(Lcom/iMe/ui/smartpanel/SmartBotsView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
