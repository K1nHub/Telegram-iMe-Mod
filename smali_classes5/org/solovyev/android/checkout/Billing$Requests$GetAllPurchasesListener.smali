.class final Lorg/solovyev/android/checkout/Billing$Requests$GetAllPurchasesListener;
.super Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;
.source "Billing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing$Requests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetAllPurchasesListener"
.end annotation


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Billing$Requests;Lorg/solovyev/android/checkout/GetPurchasesRequest;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/GetPurchasesRequest;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchases;",
            ">;)V"
        }
    .end annotation

    .line 1176
    invoke-direct {p0, p1, p2, p3}, Lorg/solovyev/android/checkout/Billing$Requests$BaseAllPurchasesListener;-><init>(Lorg/solovyev/android/checkout/Billing$Requests;Lorg/solovyev/android/checkout/BasePurchasesRequest;Lorg/solovyev/android/checkout/RequestListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic makeContinuationRequest(Lorg/solovyev/android/checkout/BasePurchasesRequest;Ljava/lang/String;)Lorg/solovyev/android/checkout/BasePurchasesRequest;
    .locals 0

    .line 1173
    invoke-virtual {p0, p1, p2}, Lorg/solovyev/android/checkout/Billing$Requests$GetAllPurchasesListener;->makeContinuationRequest(Lorg/solovyev/android/checkout/BasePurchasesRequest;Ljava/lang/String;)Lorg/solovyev/android/checkout/GetPurchasesRequest;

    move-result-object p1

    return-object p1
.end method

.method protected makeContinuationRequest(Lorg/solovyev/android/checkout/BasePurchasesRequest;Ljava/lang/String;)Lorg/solovyev/android/checkout/GetPurchasesRequest;
    .locals 1

    .line 1181
    new-instance v0, Lorg/solovyev/android/checkout/GetPurchasesRequest;

    check-cast p1, Lorg/solovyev/android/checkout/GetPurchasesRequest;

    invoke-direct {v0, p1, p2}, Lorg/solovyev/android/checkout/GetPurchasesRequest;-><init>(Lorg/solovyev/android/checkout/GetPurchasesRequest;Ljava/lang/String;)V

    return-object v0
.end method
