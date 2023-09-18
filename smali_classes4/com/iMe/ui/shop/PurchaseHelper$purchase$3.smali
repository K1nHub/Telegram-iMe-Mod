.class final Lcom/iMe/ui/shop/PurchaseHelper$purchase$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PurchaseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/PurchaseHelper;->purchase(Ljava/lang/String;)Lio/reactivex/Single;
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
.field final synthetic this$0:Lcom/iMe/ui/shop/PurchaseHelper;


# direct methods
.method constructor <init>(Lcom/iMe/ui/shop/PurchaseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$3;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper$purchase$3;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper$purchase$3;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/iMe/ui/shop/PurchaseHelper;->access$setPurchaseFlowActive$p(Lcom/iMe/ui/shop/PurchaseHelper;Z)V

    return-void
.end method
