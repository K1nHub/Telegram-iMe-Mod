.class Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;
.super Ljava/lang/Object;
.source "GetPurchasesRequest.java"

# interfaces
.implements Lorg/solovyev/android/checkout/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/GetPurchasesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.field private mCalled:Z

.field private final mContinuationToken:Ljava/lang/String;

.field private final mOriginalThread:Ljava/lang/Thread;

.field private final mProduct:Ljava/lang/String;

.field private final mRequest:Lorg/solovyev/android/checkout/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/solovyev/android/checkout/Request<",
            "Lorg/solovyev/android/checkout/Purchases;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/solovyev/android/checkout/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/Request<",
            "Lorg/solovyev/android/checkout/Purchases;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    .line 79
    iput-object p2, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mProduct:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mContinuationToken:Ljava/lang/String;

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mOriginalThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mCalled:Z

    return p0
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 1

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mCalled:Z

    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    .line 96
    iget-object p1, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-virtual {p1, p2}, Lorg/solovyev/android/checkout/Request;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    invoke-virtual {p2, p1}, Lorg/solovyev/android/checkout/Request;->onError(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mCalled:Z

    .line 88
    iget-object v0, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mRequest:Lorg/solovyev/android/checkout/Request;

    new-instance v1, Lorg/solovyev/android/checkout/Purchases;

    iget-object v2, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mProduct:Ljava/lang/String;

    iget-object v3, p0, Lorg/solovyev/android/checkout/GetPurchasesRequest$VerificationListener;->mContinuationToken:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lorg/solovyev/android/checkout/Purchases;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/Request;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
