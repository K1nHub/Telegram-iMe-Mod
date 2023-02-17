.class Lorg/solovyev/android/checkout/UiCheckout$1;
.super Lorg/solovyev/android/checkout/Checkout$EmptyListener;
.source "UiCheckout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/solovyev/android/checkout/UiCheckout;->startPurchaseFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/solovyev/android/checkout/RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/UiCheckout;

.field final synthetic val$extraParams:Landroid/os/Bundle;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/UiCheckout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->this$0:Lorg/solovyev/android/checkout/UiCheckout;

    iput-object p2, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$product:Ljava/lang/String;

    iput-object p3, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$sku:Ljava/lang/String;

    iput-object p4, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$payload:Ljava/lang/String;

    iput-object p5, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$extraParams:Landroid/os/Bundle;

    invoke-direct {p0}, Lorg/solovyev/android/checkout/Checkout$EmptyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Lorg/solovyev/android/checkout/BillingRequests;)V
    .locals 6

    .line 229
    iget-object v1, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$product:Ljava/lang/String;

    iget-object v2, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$sku:Ljava/lang/String;

    iget-object v3, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$payload:Ljava/lang/String;

    iget-object v4, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->val$extraParams:Landroid/os/Bundle;

    iget-object v0, p0, Lorg/solovyev/android/checkout/UiCheckout$1;->this$0:Lorg/solovyev/android/checkout/UiCheckout;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/UiCheckout;->getPurchaseFlow()Lorg/solovyev/android/checkout/PurchaseFlow;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lorg/solovyev/android/checkout/BillingRequests;->purchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lorg/solovyev/android/checkout/PurchaseFlow;)I

    return-void
.end method
