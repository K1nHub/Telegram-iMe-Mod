.class Lwallet/core/jni/NervosAddressPhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "NervosAddress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lwallet/core/jni/NervosAddress;",
        ">;"
    }
.end annotation


# static fields
.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lwallet/core/jni/NervosAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static references:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lwallet/core/jni/NervosAddressPhantomReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lwallet/core/jni/NervosAddressPhantomReference;->references:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lwallet/core/jni/NervosAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor <init>(Lwallet/core/jni/NervosAddress;J)V
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

    .line 100
    sget-object v0, Lwallet/core/jni/NervosAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 101
    iput-wide p2, p0, Lwallet/core/jni/NervosAddressPhantomReference;->nativeHandle:J

    return-void
.end method

.method public static doDeletes()V
    .locals 3

    .line 109
    sget-object v0, Lwallet/core/jni/NervosAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/NervosAddressPhantomReference;

    :goto_0
    if-eqz v0, :cond_0

    .line 111
    iget-wide v1, v0, Lwallet/core/jni/NervosAddressPhantomReference;->nativeHandle:J

    invoke-static {v1, v2}, Lwallet/core/jni/NervosAddress;->nativeDelete(J)V

    .line 112
    sget-object v1, Lwallet/core/jni/NervosAddressPhantomReference;->references:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lwallet/core/jni/NervosAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/NervosAddressPhantomReference;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static register(Lwallet/core/jni/NervosAddress;J)V
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

    .line 105
    sget-object v0, Lwallet/core/jni/NervosAddressPhantomReference;->references:Ljava/util/Set;

    new-instance v1, Lwallet/core/jni/NervosAddressPhantomReference;

    invoke-direct {v1, p0, p1, p2}, Lwallet/core/jni/NervosAddressPhantomReference;-><init>(Lwallet/core/jni/NervosAddress;J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
