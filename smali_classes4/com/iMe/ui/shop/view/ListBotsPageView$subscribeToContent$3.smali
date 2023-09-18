.class final Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ListBotsPageView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/view/ListBotsPageView;->subscribeToContent()V
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
        "+",
        "Lcom/iMe/bots/domain/model/ShopItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/view/ListBotsPageView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/shop/view/ListBotsPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/ListBotsPageView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$3;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/iMe/ui/shop/view/ListBotsPageView$subscribeToContent$3;->this$0:Lcom/iMe/ui/shop/view/ListBotsPageView;

    invoke-static {v0}, Lcom/iMe/ui/shop/view/ListBotsPageView;->access$getRecyclerAdapter$p(Lcom/iMe/ui/shop/view/ListBotsPageView;)Lcom/iMe/ui/shop/view/adapter/BotsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/shop/view/adapter/BotsAdapter;->setContent(Ljava/util/List;)V

    return-void
.end method
