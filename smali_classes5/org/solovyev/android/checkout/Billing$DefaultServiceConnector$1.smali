.class Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector$1;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;)V
    .locals 0

    .line 1294
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector$1;->this$1:Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1303
    iget-object p1, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector$1;->this$1:Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/solovyev/android/checkout/Billing;->setService(Lcom/android/vending/billing/IInAppBillingService;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1297
    iget-object p1, p0, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector$1;->this$1:Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Billing$DefaultServiceConnector;->this$0:Lorg/solovyev/android/checkout/Billing;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/solovyev/android/checkout/Billing;->setService(Lcom/android/vending/billing/IInAppBillingService;Z)V

    return-void
.end method
