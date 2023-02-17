.class final Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Billing$ServiceConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultServiceConnector"
.end annotation


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method private constructor <init>(Lorg/solovyev/android/checkout/Billing;)V
    .locals 0

    .line 1292
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    new-instance p1, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector$1;

    invoke-direct {p1, p0}, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector$1;-><init>(Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;)V

    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method synthetic constructor <init>(Lorg/solovyev/android/checkout/Billing;Lorg/solovyev/android/checkout/Billing$1;)V
    .locals 0

    .line 1292
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;-><init>(Lorg/solovyev/android/checkout/Billing;)V

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 5

    const/4 v0, 0x0

    .line 1310
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    .line 1311
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1312
    iget-object v2, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v2}, Lorg/solovyev/android/checkout/Billing;->access$1000(Lorg/solovyev/android/checkout/Billing;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public disconnect()V
    .locals 2

    .line 1328
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$1000(Lorg/solovyev/android/checkout/Billing;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
