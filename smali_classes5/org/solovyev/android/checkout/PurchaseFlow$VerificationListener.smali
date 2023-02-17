.class Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;
.super Ljava/lang/Object;
.source "PurchaseFlow.java"

# interfaces
.implements Lorg/solovyev/android/checkout/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/PurchaseFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerificationListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/solovyev/android/checkout/RequestListener<",
        "Ljava/util/List<",
        "Lorg/solovyev/android/checkout/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/PurchaseFlow;


# direct methods
.method private constructor <init>(Lorg/solovyev/android/checkout/PurchaseFlow;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;->this$0:Lorg/solovyev/android/checkout/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/solovyev/android/checkout/PurchaseFlow;Lorg/solovyev/android/checkout/PurchaseFlow$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;-><init>(Lorg/solovyev/android/checkout/PurchaseFlow;)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 1

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    .line 171
    iget-object p1, p0, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;->this$0:Lorg/solovyev/android/checkout/PurchaseFlow;

    invoke-static {p1, p2}, Lorg/solovyev/android/checkout/PurchaseFlow;->access$300(Lorg/solovyev/android/checkout/PurchaseFlow;Ljava/lang/Exception;)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p2, p0, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;->this$0:Lorg/solovyev/android/checkout/PurchaseFlow;

    invoke-static {p2, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->access$100(Lorg/solovyev/android/checkout/PurchaseFlow;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p1, p0, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;->this$0:Lorg/solovyev/android/checkout/PurchaseFlow;

    const/16 v0, 0x2712

    invoke-static {p1, v0}, Lorg/solovyev/android/checkout/PurchaseFlow;->access$100(Lorg/solovyev/android/checkout/PurchaseFlow;I)V

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;->this$0:Lorg/solovyev/android/checkout/PurchaseFlow;

    invoke-static {v0}, Lorg/solovyev/android/checkout/PurchaseFlow;->access$200(Lorg/solovyev/android/checkout/PurchaseFlow;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;->this$0:Lorg/solovyev/android/checkout/PurchaseFlow;

    invoke-static {v0}, Lorg/solovyev/android/checkout/PurchaseFlow;->access$200(Lorg/solovyev/android/checkout/PurchaseFlow;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/solovyev/android/checkout/RequestListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
