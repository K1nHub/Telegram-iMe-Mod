.class final Lcom/smedialink/ui/shop/view/GridBotsPageView$subscribeToContent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GridBotsPageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/view/GridBotsPageView;->subscribeToContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/shop/view/GridBotsPageView;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/shop/view/GridBotsPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/shop/view/GridBotsPageView$subscribeToContent$2;->this$0:Lcom/smedialink/ui/shop/view/GridBotsPageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/shop/view/GridBotsPageView$subscribeToContent$2;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/GridBotsPageView$subscribeToContent$2;->this$0:Lcom/smedialink/ui/shop/view/GridBotsPageView;

    invoke-static {p1}, Lcom/smedialink/ui/shop/view/GridBotsPageView;->access$getRecycler$p(Lcom/smedialink/ui/shop/view/GridBotsPageView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/smedialink/ui/shop/view/GridBotsPageView$subscribeToContent$2;->this$0:Lcom/smedialink/ui/shop/view/GridBotsPageView;

    invoke-static {p1}, Lcom/smedialink/ui/shop/view/GridBotsPageView;->access$getProgress$p(Lcom/smedialink/ui/shop/view/GridBotsPageView;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
