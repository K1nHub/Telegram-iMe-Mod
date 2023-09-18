.class final Lcom/iMe/ui/shop/NeurobotsStoreActivity$purchaseItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NeurobotsStoreActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/NeurobotsStoreActivity;->purchaseItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/solovyev/android/checkout/Purchase;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;


# direct methods
.method constructor <init>(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$purchaseItem$1;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 456
    check-cast p1, Lorg/solovyev/android/checkout/Purchase;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/NeurobotsStoreActivity$purchaseItem$1;->invoke(Lorg/solovyev/android/checkout/Purchase;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/solovyev/android/checkout/Purchase;)V
    .locals 3

    .line 457
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->smartBotsManager:Lcom/iMe/bots/usecase/AiBotsManager;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    const-string v1, "purchase.sku"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iMe/ui/shop/NeurobotsStoreActivity$purchaseItem$1;->this$0:Lcom/iMe/ui/shop/NeurobotsStoreActivity;

    invoke-static {v1}, Lcom/iMe/ui/shop/NeurobotsStoreActivity;->access$getUserId$p(Lcom/iMe/ui/shop/NeurobotsStoreActivity;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/bots/usecase/AiBotsManager;->downloadPurchase(Ljava/lang/String;J)V

    return-void
.end method
