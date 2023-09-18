.class Lorg/solovyev/android/checkout/Checkout$2;
.super Ljava/lang/Object;
.source "Checkout.java"

# interfaces
.implements Lorg/solovyev/android/checkout/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/solovyev/android/checkout/Checkout;->whenReady(Lorg/solovyev/android/checkout/Checkout$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/solovyev/android/checkout/RequestListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lorg/solovyev/android/checkout/Checkout$Listener;

.field final synthetic val$loadingProducts:Ljava/util/Set;

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$requests:Lorg/solovyev/android/checkout/Billing$Requests;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Checkout;Lorg/solovyev/android/checkout/Checkout$Listener;Lorg/solovyev/android/checkout/Billing$Requests;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 230
    iput-object p2, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$listener:Lorg/solovyev/android/checkout/Checkout$Listener;

    iput-object p3, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$requests:Lorg/solovyev/android/checkout/Billing$Requests;

    iput-object p4, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$product:Ljava/lang/String;

    iput-object p5, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$loadingProducts:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onBillingSupported(Z)V
    .locals 3

    .line 233
    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$listener:Lorg/solovyev/android/checkout/Checkout$Listener;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$requests:Lorg/solovyev/android/checkout/Billing$Requests;

    iget-object v2, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$product:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lorg/solovyev/android/checkout/Checkout$Listener;->onReady(Lorg/solovyev/android/checkout/BillingRequests;Ljava/lang/String;Z)V

    .line 234
    iget-object p1, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$loadingProducts:Ljava/util/Set;

    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$product:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object p1, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$loadingProducts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$listener:Lorg/solovyev/android/checkout/Checkout$Listener;

    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout$2;->val$requests:Lorg/solovyev/android/checkout/Billing$Requests;

    invoke-interface {p1, v0}, Lorg/solovyev/android/checkout/Checkout$Listener;->onReady(Lorg/solovyev/android/checkout/BillingRequests;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    .line 247
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/Checkout$2;->onBillingSupported(Z)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 242
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/Checkout$2;->onBillingSupported(Z)V

    return-void
.end method
