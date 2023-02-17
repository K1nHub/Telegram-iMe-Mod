.class public final Lorg/solovyev/android/checkout/PurchaseFlow;
.super Ljava/lang/Object;
.source "PurchaseFlow.java"

# interfaces
.implements Lorg/solovyev/android/checkout/CancellableRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/solovyev/android/checkout/CancellableRequestListener<",
        "Landroid/app/PendingIntent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIntentStarter:Lorg/solovyev/android/checkout/IntentStarter;

.field private mListener:Lorg/solovyev/android/checkout/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestCode:I

.field private final mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/IntentStarter;ILorg/solovyev/android/checkout/RequestListener;Lorg/solovyev/android/checkout/PurchaseVerifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/IntentStarter;",
            "I",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;",
            "Lorg/solovyev/android/checkout/PurchaseVerifier;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mIntentStarter:Lorg/solovyev/android/checkout/IntentStarter;

    .line 77
    iput p2, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mRequestCode:I

    .line 78
    iput-object p3, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    .line 79
    iput-object p4, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    return-void
.end method

.method static synthetic access$100(Lorg/solovyev/android/checkout/PurchaseFlow;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->handleError(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/solovyev/android/checkout/PurchaseFlow;)Lorg/solovyev/android/checkout/RequestListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    return-object p0
.end method

.method static synthetic access$300(Lorg/solovyev/android/checkout/PurchaseFlow;Ljava/lang/Exception;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method private handleError(I)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in Purchase/ChangePurchase request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lorg/solovyev/android/checkout/BillingException;

    invoke-direct {v0, p1}, Lorg/solovyev/android/checkout/BillingException;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/solovyev/android/checkout/PurchaseFlow;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "Exception in Purchase/ChangePurchase request: "

    .line 126
    invoke-static {v0, p1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    const/16 v0, 0x2711

    .line 127
    invoke-virtual {p0, v0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->onError(ILjava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->cancel(Lorg/solovyev/android/checkout/RequestListener;)V

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p3, :cond_0

    const/16 p1, 0x2713

    .line 100
    :try_start_0
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->handleError(I)V

    return-void

    :cond_0
    const-string p1, "RESPONSE_CODE"

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "INAPP_PURCHASE_DATA"

    .line 108
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "INAPP_DATA_SIGNATURE"

    .line 109
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 113
    invoke-static {p1, p2}, Lorg/solovyev/android/checkout/Purchase;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/solovyev/android/checkout/Purchase;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mVerifier:Lorg/solovyev/android/checkout/PurchaseVerifier;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance p3, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lorg/solovyev/android/checkout/PurchaseFlow$VerificationListener;-><init>(Lorg/solovyev/android/checkout/PurchaseFlow;Lorg/solovyev/android/checkout/PurchaseFlow$1;)V

    invoke-interface {p2, p1, p3}, Lorg/solovyev/android/checkout/PurchaseVerifier;->verify(Ljava/util/List;Lorg/solovyev/android/checkout/RequestListener;)V

    goto :goto_2

    .line 105
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->handleError(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 116
    :goto_1
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->handleError(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public onError(ILjava/lang/Exception;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/solovyev/android/checkout/RequestListener;->onError(ILjava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Landroid/app/PendingIntent;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mIntentStarter:Lorg/solovyev/android/checkout/IntentStarter;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    iget v1, p0, Lorg/solovyev/android/checkout/PurchaseFlow;->mRequestCode:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-interface {v0, p1, v1, v2}, Lorg/solovyev/android/checkout/IntentStarter;->startForResult(Landroid/content/IntentSender;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 91
    :goto_0
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->handleError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Landroid/app/PendingIntent;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/PurchaseFlow;->onSuccess(Landroid/app/PendingIntent;)V

    return-void
.end method
