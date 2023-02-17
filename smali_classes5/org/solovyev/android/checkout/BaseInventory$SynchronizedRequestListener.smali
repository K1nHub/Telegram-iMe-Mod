.class final Lorg/solovyev/android/checkout/BaseInventory$SynchronizedRequestListener;
.super Ljava/lang/Object;
.source "BaseInventory.java"

# interfaces
.implements Lorg/solovyev/android/checkout/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/BaseInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SynchronizedRequestListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/solovyev/android/checkout/RequestListener<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final mListener:Lorg/solovyev/android/checkout/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/solovyev/android/checkout/BaseInventory;


# direct methods
.method public constructor <init>(Lorg/solovyev/android/checkout/BaseInventory;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "TR;>;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lorg/solovyev/android/checkout/BaseInventory$SynchronizedRequestListener;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p2, p0, Lorg/solovyev/android/checkout/BaseInventory$SynchronizedRequestListener;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Exception;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$SynchronizedRequestListener;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/BaseInventory$SynchronizedRequestListener;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    invoke-interface {v1, p1, p2}, Lorg/solovyev/android/checkout/RequestListener;->onError(ILjava/lang/Exception;)V

    .line 201
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lorg/solovyev/android/checkout/BaseInventory$SynchronizedRequestListener;->this$0:Lorg/solovyev/android/checkout/BaseInventory;

    iget-object v0, v0, Lorg/solovyev/android/checkout/BaseInventory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/solovyev/android/checkout/BaseInventory$SynchronizedRequestListener;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    invoke-interface {v1, p1}, Lorg/solovyev/android/checkout/RequestListener;->onSuccess(Ljava/lang/Object;)V

    .line 194
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
