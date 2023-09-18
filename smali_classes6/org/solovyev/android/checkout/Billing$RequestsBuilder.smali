.class public final Lorg/solovyev/android/checkout/Billing$RequestsBuilder;
.super Ljava/lang/Object;
.source "Billing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestsBuilder"
.end annotation


# instance fields
.field private mOnMainThread:Ljava/lang/Boolean;

.field private mTag:Ljava/lang/Object;

.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method private constructor <init>(Lorg/solovyev/android/checkout/Billing;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/solovyev/android/checkout/Billing;Lorg/solovyev/android/checkout/Billing$1;)V
    .locals 0

    .line 907
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;-><init>(Lorg/solovyev/android/checkout/Billing;)V

    return-void
.end method


# virtual methods
.method public create()Lorg/solovyev/android/checkout/BillingRequests;
    .locals 5

    .line 955
    new-instance v0, Lorg/solovyev/android/checkout/Billing$Requests;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;->this$0:Lorg/solovyev/android/checkout/Billing;

    iget-object v2, p0, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;->mTag:Ljava/lang/Object;

    iget-object v3, p0, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;->mOnMainThread:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_0
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/solovyev/android/checkout/Billing$Requests;-><init>(Lorg/solovyev/android/checkout/Billing;Ljava/lang/Object;ZLorg/solovyev/android/checkout/Billing$1;)V

    return-object v0
.end method

.method public onBackgroundThread()Lorg/solovyev/android/checkout/Billing$RequestsBuilder;
    .locals 1

    .line 936
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;->mOnMainThread:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onMainThread()Lorg/solovyev/android/checkout/Billing$RequestsBuilder;
    .locals 1

    .line 949
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;->mOnMainThread:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withTag(Ljava/lang/Object;)Lorg/solovyev/android/checkout/Billing$RequestsBuilder;
    .locals 0

    .line 924
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$RequestsBuilder;->mTag:Ljava/lang/Object;

    return-object p0
.end method
