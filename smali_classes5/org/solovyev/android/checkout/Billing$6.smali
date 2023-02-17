.class Lorg/solovyev/android/checkout/Billing$6;
.super Lorg/solovyev/android/checkout/RequestListenerWrapper;
.source "Billing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/solovyev/android/checkout/Billing;->createPurchaseFlow(Lorg/solovyev/android/checkout/IntentStarter;ILorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/PurchaseFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/solovyev/android/checkout/RequestListenerWrapper<",
        "Lorg/solovyev/android/checkout/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Billing;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$6;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-direct {p0, p2}, Lorg/solovyev/android/checkout/RequestListenerWrapper;-><init>(Lorg/solovyev/android/checkout/RequestListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 570
    check-cast p1, Lorg/solovyev/android/checkout/Purchase;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Billing$6;->onSuccess(Lorg/solovyev/android/checkout/Purchase;)V

    return-void
.end method

.method public onSuccess(Lorg/solovyev/android/checkout/Purchase;)V
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$6;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v0

    sget-object v1, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/RequestType;->getCacheKeyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/ConcurrentCache;->removeAll(I)V

    .line 574
    invoke-super {p0, p1}, Lorg/solovyev/android/checkout/RequestListenerWrapper;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
