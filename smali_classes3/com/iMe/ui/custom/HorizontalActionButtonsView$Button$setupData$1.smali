.class final Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$setupData$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HorizontalActionButtonsView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button;->setupData(Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$setupData$1;->$item:Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$setupData$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/iMe/ui/custom/HorizontalActionButtonsView$Button$setupData$1;->$item:Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;->getOnClickAction()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
