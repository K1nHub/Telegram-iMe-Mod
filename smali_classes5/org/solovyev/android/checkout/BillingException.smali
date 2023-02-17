.class public final Lorg/solovyev/android/checkout/BillingException;
.super Ljava/lang/Exception;
.source "BillingException.java"


# instance fields
.field private final mResponse:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An error occurred while performing billing request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/solovyev/android/checkout/ResponseCodes;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lorg/solovyev/android/checkout/BillingException;->mResponse:I

    return-void
.end method


# virtual methods
.method public getResponse()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/solovyev/android/checkout/BillingException;->mResponse:I

    return v0
.end method
