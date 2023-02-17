.class public Lorg/solovyev/android/checkout/Checkout;
.super Ljava/lang/Object;
.source "Checkout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;,
        Lorg/solovyev/android/checkout/Checkout$EmptyListener;,
        Lorg/solovyev/android/checkout/Checkout$Listener;,
        Lorg/solovyev/android/checkout/Checkout$State;
    }
.end annotation


# instance fields
.field protected final mBilling:Lorg/solovyev/android/checkout/Billing;

.field final mLock:Ljava/lang/Object;

.field private final mOnLoadExecutor:Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;

.field private mRequests:Lorg/solovyev/android/checkout/Billing$Requests;

.field private mState:Lorg/solovyev/android/checkout/Checkout$State;

.field private final mTag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/solovyev/android/checkout/Billing;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;-><init>(Lorg/solovyev/android/checkout/Checkout;Lorg/solovyev/android/checkout/Checkout$1;)V

    iput-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mOnLoadExecutor:Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;

    .line 113
    sget-object v0, Lorg/solovyev/android/checkout/Checkout$State;->INITIAL:Lorg/solovyev/android/checkout/Checkout$State;

    iput-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mState:Lorg/solovyev/android/checkout/Checkout$State;

    .line 118
    iput-object p1, p0, Lorg/solovyev/android/checkout/Checkout;->mTag:Ljava/lang/Object;

    .line 119
    iput-object p2, p0, Lorg/solovyev/android/checkout/Checkout;->mBilling:Lorg/solovyev/android/checkout/Billing;

    return-void
.end method

.method static synthetic access$100(Lorg/solovyev/android/checkout/Checkout;)Lorg/solovyev/android/checkout/Billing$Requests;
    .locals 0

    .line 101
    iget-object p0, p0, Lorg/solovyev/android/checkout/Checkout;->mRequests:Lorg/solovyev/android/checkout/Billing$Requests;

    return-object p0
.end method

.method private checkIsNotStopped()V
    .locals 1

    .line 255
    sget-object v0, Lorg/solovyev/android/checkout/Checkout$State;->STOPPED:Lorg/solovyev/android/checkout/Checkout$State;

    return-void
.end method

.method public static forActivity(Landroid/app/Activity;Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ActivityCheckout;
    .locals 1

    .line 167
    new-instance v0, Lorg/solovyev/android/checkout/ActivityCheckout;

    invoke-direct {v0, p0, p1}, Lorg/solovyev/android/checkout/ActivityCheckout;-><init>(Landroid/app/Activity;Lorg/solovyev/android/checkout/Billing;)V

    return-object v0
.end method


# virtual methods
.method public loadInventory(Lorg/solovyev/android/checkout/Inventory$Request;Lorg/solovyev/android/checkout/Inventory$Callback;)Lorg/solovyev/android/checkout/Inventory;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lorg/solovyev/android/checkout/Checkout;->makeInventory()Lorg/solovyev/android/checkout/Inventory;

    move-result-object v0

    .line 269
    invoke-interface {v0, p1, p2}, Lorg/solovyev/android/checkout/Inventory;->load(Lorg/solovyev/android/checkout/Inventory$Request;Lorg/solovyev/android/checkout/Inventory$Callback;)I

    return-object v0
.end method

.method public makeInventory()Lorg/solovyev/android/checkout/Inventory;
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-direct {p0}, Lorg/solovyev/android/checkout/Checkout;->checkIsNotStopped()V

    .line 286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mBilling:Lorg/solovyev/android/checkout/Billing;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Billing;->getConfiguration()Lorg/solovyev/android/checkout/Billing$Configuration;

    move-result-object v0

    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mOnLoadExecutor:Lorg/solovyev/android/checkout/Checkout$OnLoadExecutor;

    invoke-interface {v0, p0, v1}, Lorg/solovyev/android/checkout/Billing$Configuration;->getFallbackInventory(Lorg/solovyev/android/checkout/Checkout;Ljava/util/concurrent/Executor;)Lorg/solovyev/android/checkout/Inventory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lorg/solovyev/android/checkout/CheckoutInventory;

    invoke-direct {v0, p0}, Lorg/solovyev/android/checkout/CheckoutInventory;-><init>(Lorg/solovyev/android/checkout/Checkout;)V

    goto :goto_0

    .line 293
    :cond_0
    new-instance v1, Lorg/solovyev/android/checkout/FallingBackInventory;

    invoke-direct {v1, p0, v0}, Lorg/solovyev/android/checkout/FallingBackInventory;-><init>(Lorg/solovyev/android/checkout/Checkout;Lorg/solovyev/android/checkout/Inventory;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 286
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lorg/solovyev/android/checkout/Checkout;->start(Lorg/solovyev/android/checkout/Checkout$Listener;)V

    return-void
.end method

.method public start(Lorg/solovyev/android/checkout/Checkout$Listener;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mState:Lorg/solovyev/android/checkout/Checkout$State;

    sget-object v2, Lorg/solovyev/android/checkout/Checkout$State;->STARTED:Lorg/solovyev/android/checkout/Checkout$State;

    .line 204
    iput-object v2, p0, Lorg/solovyev/android/checkout/Checkout;->mState:Lorg/solovyev/android/checkout/Checkout$State;

    .line 205
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mBilling:Lorg/solovyev/android/checkout/Billing;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/Billing;->onCheckoutStarted()V

    .line 206
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mBilling:Lorg/solovyev/android/checkout/Billing;

    iget-object v2, p0, Lorg/solovyev/android/checkout/Checkout;->mTag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/solovyev/android/checkout/Billing;->getRequests(Ljava/lang/Object;)Lorg/solovyev/android/checkout/Billing$Requests;

    move-result-object v1

    iput-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mRequests:Lorg/solovyev/android/checkout/Billing$Requests;

    .line 207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 208
    new-instance p1, Lorg/solovyev/android/checkout/Checkout$1;

    invoke-direct {p1, p0}, Lorg/solovyev/android/checkout/Checkout$1;-><init>(Lorg/solovyev/android/checkout/Checkout;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/solovyev/android/checkout/Checkout;->whenReady(Lorg/solovyev/android/checkout/Checkout$Listener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 3

    .line 306
    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mState:Lorg/solovyev/android/checkout/Checkout$State;

    sget-object v2, Lorg/solovyev/android/checkout/Checkout$State;->INITIAL:Lorg/solovyev/android/checkout/Checkout$State;

    if-eq v1, v2, :cond_0

    .line 308
    sget-object v1, Lorg/solovyev/android/checkout/Checkout$State;->STOPPED:Lorg/solovyev/android/checkout/Checkout$State;

    iput-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mState:Lorg/solovyev/android/checkout/Checkout$State;

    .line 310
    :cond_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mRequests:Lorg/solovyev/android/checkout/Billing$Requests;

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1}, Lorg/solovyev/android/checkout/Billing$Requests;->cancelAll()V

    const/4 v1, 0x0

    .line 312
    iput-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mRequests:Lorg/solovyev/android/checkout/Billing$Requests;

    .line 314
    :cond_1
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mState:Lorg/solovyev/android/checkout/Checkout$State;

    sget-object v2, Lorg/solovyev/android/checkout/Checkout$State;->STOPPED:Lorg/solovyev/android/checkout/Checkout$State;

    if-ne v1, v2, :cond_2

    .line 315
    iget-object v1, p0, Lorg/solovyev/android/checkout/Checkout;->mBilling:Lorg/solovyev/android/checkout/Billing;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/Billing;->onCheckoutStopped()V

    .line 317
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whenReady(Lorg/solovyev/android/checkout/Checkout$Listener;)V
    .locals 12

    .line 223
    iget-object v0, p0, Lorg/solovyev/android/checkout/Checkout;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v7, p0, Lorg/solovyev/android/checkout/Checkout;->mRequests:Lorg/solovyev/android/checkout/Billing$Requests;

    .line 228
    new-instance v8, Ljava/util/HashSet;

    sget-object v1, Lorg/solovyev/android/checkout/ProductTypes;->ALL:Ljava/util/List;

    invoke-direct {v8, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 229
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 230
    new-instance v11, Lorg/solovyev/android/checkout/Checkout$2;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, v10

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/solovyev/android/checkout/Checkout$2;-><init>(Lorg/solovyev/android/checkout/Checkout;Lorg/solovyev/android/checkout/Checkout$Listener;Lorg/solovyev/android/checkout/Billing$Requests;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v7, v10, v11}, Lorg/solovyev/android/checkout/Billing$Requests;->isBillingSupported(Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)I

    goto :goto_0

    .line 251
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method
