.class final Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BannersRecycleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/SlideItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Components/RLottieImageView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic $item:Lcom/iMe/model/wallet/home/SlideItem;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/SlideItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;->$item:Lcom/iMe/model/wallet/home/SlideItem;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;->this$0:Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    check-cast p1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;->invoke(Lorg/telegram/ui/Components/RLottieImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;->$item:Lcom/iMe/model/wallet/home/SlideItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/SlideItem;->getSlide()Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/BannerSlide;->getAnimatedIcon()I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter$convert$2;->this$0:Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;->access$getCurrentAnimatedBanner$p(Lcom/iMe/ui/wallet/home/adapter/BannersRecycleAdapter;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    :goto_0
    return-void
.end method
