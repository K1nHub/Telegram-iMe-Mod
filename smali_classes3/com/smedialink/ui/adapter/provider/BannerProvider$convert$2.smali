.class final Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BannerProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/BannerProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/BannerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$2;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$2;->invoke(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$2;->$helper:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v1, Lorg/telegram/messenger/R$id;->recycle_banners:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const-string v0, "chats_actionBackground"

    .line 71
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setSelectedDotColor(I)V

    .line 72
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lru/tinkoff/scrollingpagerindicator/ScrollingPagerIndicator;->setDotColor(I)V

    return-void
.end method
