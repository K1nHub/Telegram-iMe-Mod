.class public Lcom/stripe/android/exception/CardException;
.super Lcom/stripe/android/exception/StripeException;
.source "CardException.java"


# instance fields
.field private charge:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private declineCode:Ljava/lang/String;

.field private param:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/stripe/android/exception/StripeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 17
    iput-object p3, p0, Lcom/stripe/android/exception/CardException;->code:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/stripe/android/exception/CardException;->param:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/stripe/android/exception/CardException;->declineCode:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/stripe/android/exception/CardException;->charge:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharge()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclineCode()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->declineCode:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->param:Ljava/lang/String;

    return-object v0
.end method
