.class final Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedHeaderProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V
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
.field final synthetic $this_with:Lcom/iMe/model/cryptobox/AnimatedHeaderItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/cryptobox/AnimatedHeaderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$1;->$this_with:Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$1;->invoke(Lorg/telegram/ui/Components/RLottieImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/RLottieImageView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/AnimatedHeaderProvider$convert$1$1;->$this_with:Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    invoke-virtual {v0}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;->getAnimationResId()I

    move-result v0

    const/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 37
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method
