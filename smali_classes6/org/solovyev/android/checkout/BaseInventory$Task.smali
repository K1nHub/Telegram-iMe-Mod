.class public final Lorg/solovyev/android/checkout/BaseInventory$Task;
.super Ljava/lang/Object;
.source "BaseInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/BaseInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Task"
.end annotation


# instance fields
.field private mCallback:Lorg/solovyev/android/checkout/Inventory$Callback;

.field private final mId:I

.field private final mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

.field private final mRequest:Lorg/solovyev/android/checkout/Inventory$Request;

.field final synthetic this$0:Lorg/solovyev/android/checkout/BaseInventory;


# direct methods
.method public constructor <init>(Lorg/solovyev/android/checkout/BaseInventory;Lorg/solovyev/android/checkout/Inventory$Request;Lorg/solovyev/android/checkout/Inventory$Callback;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lorg/solovyev/android/checkout/BaseInventory;->access$200(Lorg/solovyev/android/checkout/BaseInventory;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mId:I

    .line 112
    new-instance p1, Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-direct {p1}, Lorg/solovyev/android/checkout/Inventory$Products;-><init>()V

    iput-object p1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    .line 116
    invoke-virtual {p2}, Lorg/solovyev/android/checkout/Inventory$Request;->copy()Lorg/solovyev/android/checkout/Inventory$Request;

    move-result-object p1

    iput-object p1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mRequest:Lorg/solovyev/android/checkout/Inventory$Request;

    .line 117
    iput-object p3, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mCallback:Lorg/solovyev/android/checkout/Inventory$Callback;

    return-void
.end method

.method static synthetic access$100(Lorg/solovyev/android/checkout/BaseInventory$Task;)I
    .locals 0

    .line 104
    iget p0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mId:I

    return p0
.end method

.method private existsUnsupported()Z
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/Inventory$Products;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/solovyev/android/checkout/Inventory$Product;

    .line 174
    iget-boolean v1, v1, Lorg/solovyev/android/checkout/Inventory$Product;->supported:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onDone()V
    .locals 2

    .line 161
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mCallback:Lorg/solovyev/android/checkout/Inventory$Callback;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    invoke-static {v0}, Lorg/solovyev/android/checkout/BaseInventory;->access$300(Lorg/solovyev/android/checkout/BaseInventory;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mCallback:Lorg/solovyev/android/checkout/Inventory$Callback;

    iget-object v1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-interface {v0, v1}, Lorg/solovyev/android/checkout/Inventory$Callback;->onLoaded(Lorg/solovyev/android/checkout/Inventory$Products;)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mCallback:Lorg/solovyev/android/checkout/Inventory$Callback;

    return-void
.end method


# virtual methods
.method public getRequest()Lorg/solovyev/android/checkout/Inventory$Request;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mRequest:Lorg/solovyev/android/checkout/Inventory$Request;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mCallback:Lorg/solovyev/android/checkout/Inventory$Callback;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDone(Lorg/solovyev/android/checkout/Inventory$Products;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-virtual {v1, p1}, Lorg/solovyev/android/checkout/Inventory$Products;->merge(Lorg/solovyev/android/checkout/Inventory$Products;)V

    .line 145
    invoke-direct {p0}, Lorg/solovyev/android/checkout/BaseInventory$Task;->onDone()V

    .line 146
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onMaybeDone(Lorg/solovyev/android/checkout/Inventory$Products;)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->mProducts:Lorg/solovyev/android/checkout/Inventory$Products;

    invoke-virtual {v1, p1}, Lorg/solovyev/android/checkout/Inventory$Products;->merge(Lorg/solovyev/android/checkout/Inventory$Products;)V

    .line 152
    invoke-direct {p0}, Lorg/solovyev/android/checkout/BaseInventory$Task;->existsUnsupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    invoke-direct {p0}, Lorg/solovyev/android/checkout/BaseInventory$Task;->onDone()V

    const/4 p1, 0x1

    .line 154
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 156
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$Task;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    invoke-virtual {v0, p0}, Lorg/solovyev/android/checkout/BaseInventory;->createWorker(Lorg/solovyev/android/checkout/BaseInventory$Task;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
