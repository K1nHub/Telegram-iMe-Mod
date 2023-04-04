.class final Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;
.super Lkotlin/jvm/internal/Lambda;
.source "GridBotsPageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/view/GridBotsPageView;->subscribeToContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/view/GridBotsPageView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/shop/view/GridBotsPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/GridBotsPageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/GridBotsPageView;

    invoke-static {v0}, Lcom/iMe/ui/shop/view/GridBotsPageView;->access$getProgress$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/GridBotsPageView;

    invoke-static {v0}, Lcom/iMe/ui/shop/view/GridBotsPageView;->access$getProgress$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/GridBotsPageView;

    invoke-static {v0}, Lcom/iMe/ui/shop/view/GridBotsPageView;->access$getRecycler$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/GridBotsPageView;

    invoke-static {v0}, Lcom/iMe/ui/shop/view/GridBotsPageView;->access$getRecycler$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/shop/view/GridBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/GridBotsPageView;

    invoke-static {v0}, Lcom/iMe/ui/shop/view/GridBotsPageView;->access$getRecyclerAdapter$p(Lcom/iMe/ui/shop/view/GridBotsPageView;)Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;

    move-result-object v0

    const-string v1, "content"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/iMe/ui/shop/view/adapter/BotsCategoriesAdapter;->setContent(Ljava/util/List;)V

    return-void
.end method
