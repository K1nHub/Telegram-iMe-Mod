.class final Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;
.super Ljava/lang/Object;
.source "Checkout.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Checkout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnLoadExecutor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/Checkout;


# direct methods
.method private constructor <init>(Lorg/solovyev/android/checkout/Checkout;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;->this$0:Lorg/solovyev/android/checkout/Checkout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/solovyev/android/checkout/Checkout;Lorg/solovyev/android/checkout/Checkout$1;)V
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;-><init>(Lorg/solovyev/android/checkout/Checkout;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;->this$0:Lorg/solovyev/android/checkout/Checkout;

    iget-object v0, v0, Lorg/solovyev/android/checkout/Checkout;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;->this$0:Lorg/solovyev/android/checkout/Checkout;

    invoke-static {v1}, Lorg/solovyev/android/checkout/Checkout;->access$100(Lorg/solovyev/android/checkout/Checkout;)Lorg/solovyev/android/checkout/Billing$Requests;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;->this$0:Lorg/solovyev/android/checkout/Checkout;

    invoke-static {v1}, Lorg/solovyev/android/checkout/Checkout;->access$100(Lorg/solovyev/android/checkout/Checkout;)Lorg/solovyev/android/checkout/Billing$Requests;

    move-result-object v1

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/Billing$Requests;->getDeliveryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 370
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 373
    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string p1, "Trying to deliver result on a stopped checkout."

    .line 375
    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 370
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
