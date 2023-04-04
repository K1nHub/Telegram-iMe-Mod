.class final Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PurchaseHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/shop/PurchaseHelper;->preloadPurchasesInfo()V
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
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPurchaseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseHelper.kt\ncom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1#2:198\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/shop/PurchaseHelper;


# direct methods
.method constructor <init>(Lcom/iMe/ui/shop/PurchaseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$1;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/iMe/ui/shop/PurchaseHelper$preloadPurchasesInfo$1;->this$0:Lcom/iMe/ui/shop/PurchaseHelper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/ui/shop/PurchaseHelper;->loadSkuDetails$default(Lcom/iMe/ui/shop/PurchaseHelper;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
