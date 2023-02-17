.class Lorg/solovyev/android/checkout/Billing$3;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/solovyev/android/checkout/Billing;->setState(Lorg/solovyev/android/checkout/Billing$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Billing;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$3;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$3;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$300(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/PendingRequests;

    move-result-object v0

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/PendingRequests;->onConnectionFailed()V

    return-void
.end method
