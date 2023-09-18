.class Lorg/solovyev/android/checkout/CheckoutInventory$Worker;
.super Ljava/lang/Object;
.source "CheckoutInventory.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Checkout$Listener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/CheckoutInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field private mCount:I

.field private final mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

.field private final mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

.field final synthetic this$0:Lorg/solovyev/android/checkout/CheckoutInventory;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/CheckoutInventory;Lorg/solovyev/android/checkout/BaseInventory$Task;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance p1, Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-direct {p1}, Lorg/solovyev/android/checkout/Inventory$Products;-><init>()V

    iput-object p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    .line 45
    iput-object p2, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    return-void
.end method

.method static synthetic access$000(Lorg/solovyev/android/checkout/CheckoutInventory$Worker;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->countDown()V

    return-void
.end method

.method private countDown()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 85
    invoke-direct {p0, v0}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->countDown(I)V

    return-void
.end method

.method private countDown(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 90
    iget v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mCount:I

    .line 92
    iget p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mCount:I

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    iget-object v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-virtual {p1, v0}, Lorg/solovyev/android/checkout/BaseInventory$Task;->onDone(Lorg/solovyev/android/checkout/Inventory$Products;)V

    :cond_0
    return-void
.end method

.method private loadPurchases(Lorg/solovyev/android/checkout/BillingRequests;Lorg/solovyev/android/checkout/Inventory$Product;)V
    .locals 3

    .line 99
    iget-object v0, p2, Lorg/solovyev/android/checkout/Inventory$Product;->id:Ljava/lang/String;

    iget-object v1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    new-instance v2, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$1;

    invoke-direct {v2, p0, p2}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$1;-><init>(Lorg/solovyev/android/checkout/CheckoutInventory$Worker;Lorg/solovyev/android/checkout/Inventory$Product;)V

    invoke-virtual {v1, v2}, Lorg/solovyev/android/checkout/BaseInventory;->synchronizedListener(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/solovyev/android/checkout/BillingRequests;->getAllPurchases(Ljava/lang/String;Lorg/solovyev/android/checkout/RequestListener;)I

    return-void
.end method

.method private loadSkus(Lorg/solovyev/android/checkout/BillingRequests;Lorg/solovyev/android/checkout/Inventory$Product;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/BaseInventory$Task;->getRequest()Lorg/solovyev/android/checkout/Inventory$Request;

    move-result-object v0

    iget-object v1, p2, Lorg/solovyev/android/checkout/Inventory$Product;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/Inventory$Request;->getSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There are no SKUs for \""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/solovyev/android/checkout/Inventory$Product;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" product. No SKU information will be loaded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/solovyev/android/checkout/Billing;->warning(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    iget-object v1, p1, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_0
    invoke-direct {p0}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->countDown()V

    .line 120
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 123
    :cond_0
    iget-object v1, p2, Lorg/solovyev/android/checkout/Inventory$Product;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    new-instance v3, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;

    invoke-direct {v3, p0, p2}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker$2;-><init>(Lorg/solovyev/android/checkout/CheckoutInventory$Worker;Lorg/solovyev/android/checkout/Inventory$Product;)V

    invoke-virtual {v2, v3}, Lorg/solovyev/android/checkout/BaseInventory;->synchronizedListener(Lorg/solovyev/android/checkout/RequestListener;)Lorg/solovyev/android/checkout/RequestListener;

    move-result-object p2

    invoke-interface {p1, v1, v0, p2}, Lorg/solovyev/android/checkout/BillingRequests;->getSkus(Ljava/lang/String;Ljava/util/List;Lorg/solovyev/android/checkout/RequestListener;)I

    return-void
.end method


# virtual methods
.method public onReady(Lorg/solovyev/android/checkout/BillingRequests;)V
    .locals 0

    return-void
.end method

.method public onReady(Lorg/solovyev/android/checkout/BillingRequests;Ljava/lang/String;Z)V
    .locals 3

    .line 66
    new-instance v0, Lorg/solovyev/android/checkout/Inventory$Product;

    invoke-direct {v0, p2, p3}, Lorg/solovyev/android/checkout/Inventory$Product;-><init>(Ljava/lang/String;Z)V

    .line 67
    iget-object p3, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    iget-object p3, p3, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 68
    :try_start_0
    invoke-direct {p0}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->countDown()V

    .line 69
    iget-object v1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-virtual {v1, v0}, Lorg/solovyev/android/checkout/Inventory$Products;->add(Lorg/solovyev/android/checkout/Inventory$Product;)V

    .line 70
    iget-object v1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/BaseInventory$Task;->isCancelled()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/solovyev/android/checkout/Inventory$Product;->supported:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/BaseInventory$Task;->getRequest()Lorg/solovyev/android/checkout/Inventory$Request;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/solovyev/android/checkout/Inventory$Request;->shouldLoadPurchases(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->loadPurchases(Lorg/solovyev/android/checkout/BillingRequests;Lorg/solovyev/android/checkout/Inventory$Product;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, v2}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->countDown(I)V

    .line 75
    :goto_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/BaseInventory$Task;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lorg/solovyev/android/checkout/Inventory$Product;->supported:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/BaseInventory$Task;->getRequest()Lorg/solovyev/android/checkout/Inventory$Request;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/solovyev/android/checkout/Inventory$Request;->shouldLoadSkus(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 76
    invoke-direct {p0, p1, v0}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->loadSkus(Lorg/solovyev/android/checkout/BillingRequests;Lorg/solovyev/android/checkout/Inventory$Product;)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-direct {p0, v2}, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->countDown(I)V

    .line 80
    :goto_1
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/solovyev/android/checkout/ProductTypes;->ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->mCount:I

    .line 56
    iget-object v0, p0, Lorg/solovyev/android/checkout/CheckoutInventory$Worker;->this$0:Lorg/solovyev/android/checkout/CheckoutInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mCheckout:Lorg/solovyev/android/checkout/Checkout;

    invoke-virtual {v0, p0}, Lorg/solovyev/android/checkout/Checkout;->whenReady(Lorg/solovyev/android/checkout/Checkout$Listener;)V

    return-void
.end method
