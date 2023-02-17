.class public final synthetic Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/shop/PurchaseHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/shop/PurchaseHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/ui/shop/PurchaseHelper;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/shop/PurchaseHelper$$ExternalSyntheticLambda4;->f$0:Lcom/smedialink/ui/shop/PurchaseHelper;

    check-cast p1, Lorg/solovyev/android/checkout/Purchase;

    invoke-static {v0, p1}, Lcom/smedialink/ui/shop/PurchaseHelper;->$r8$lambda$4UR3A0TyNMQQpT5ZOjLsre6d56g(Lcom/smedialink/ui/shop/PurchaseHelper;Lorg/solovyev/android/checkout/Purchase;)V

    return-void
.end method
