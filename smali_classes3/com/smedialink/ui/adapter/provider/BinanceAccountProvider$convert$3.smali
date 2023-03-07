.class final Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BinanceAccountProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/ui/custom/HorizontalActionButtonsView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;


# direct methods
.method constructor <init>(Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$3;->$item:Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Lcom/smedialink/ui/custom/HorizontalActionButtonsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$3;->invoke(Lcom/smedialink/ui/custom/HorizontalActionButtonsView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/ui/custom/HorizontalActionButtonsView;)V
    .locals 1

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BinanceAccountProvider$convert$3;->$item:Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/home/pay/BinanceAccountItem;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smedialink/ui/custom/HorizontalActionButtonsView;->initButtons(Ljava/util/List;)V

    return-void
.end method
