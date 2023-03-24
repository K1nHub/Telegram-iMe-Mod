.class Lwallet/core/jni/EthereumAbiFunctionPhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "EthereumAbiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lwallet/core/jni/EthereumAbiFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lwallet/core/jni/EthereumAbiFunction;",
            ">;"
        }
    .end annotation
.end field

.field private static references:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lwallet/core/jni/EthereumAbiFunctionPhantomReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 442
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->references:Ljava/util/Set;

    .line 443
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor <init>(Lwallet/core/jni/EthereumAbiFunction;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referent",
            "nativeHandle"
        }
    .end annotation

    .line 447
    sget-object v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 448
    iput-wide p2, p0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->nativeHandle:J

    return-void
.end method

.method public static doDeletes()V
    .locals 3

    .line 456
    sget-object v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;

    :goto_0
    if-eqz v0, :cond_0

    .line 458
    iget-wide v1, v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->nativeHandle:J

    invoke-static {v1, v2}, Lwallet/core/jni/EthereumAbiFunction;->nativeDelete(J)V

    .line 459
    sget-object v1, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->references:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 457
    sget-object v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static register(Lwallet/core/jni/EthereumAbiFunction;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referent",
            "nativeHandle"
        }
    .end annotation

    .line 452
    sget-object v0, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;->references:Ljava/util/Set;

    new-instance v1, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;

    invoke-direct {v1, p0, p1, p2}, Lwallet/core/jni/EthereumAbiFunctionPhantomReference;-><init>(Lwallet/core/jni/EthereumAbiFunction;J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
