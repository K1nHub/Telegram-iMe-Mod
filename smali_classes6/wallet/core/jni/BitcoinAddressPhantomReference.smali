.class Lwallet/core/jni/BitcoinAddressPhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "BitcoinAddress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lwallet/core/jni/BitcoinAddress;",
        ">;"
    }
.end annotation


# static fields
.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lwallet/core/jni/BitcoinAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static references:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lwallet/core/jni/BitcoinAddressPhantomReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lwallet/core/jni/BitcoinAddressPhantomReference;->references:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lwallet/core/jni/BitcoinAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor <init>(Lwallet/core/jni/BitcoinAddress;J)V
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

    .line 147
    sget-object v0, Lwallet/core/jni/BitcoinAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 148
    iput-wide p2, p0, Lwallet/core/jni/BitcoinAddressPhantomReference;->nativeHandle:J

    return-void
.end method

.method public static doDeletes()V
    .locals 3

    .line 156
    sget-object v0, Lwallet/core/jni/BitcoinAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/BitcoinAddressPhantomReference;

    :goto_0
    if-eqz v0, :cond_0

    .line 158
    iget-wide v1, v0, Lwallet/core/jni/BitcoinAddressPhantomReference;->nativeHandle:J

    invoke-static {v1, v2}, Lwallet/core/jni/BitcoinAddress;->nativeDelete(J)V

    .line 159
    sget-object v1, Lwallet/core/jni/BitcoinAddressPhantomReference;->references:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lwallet/core/jni/BitcoinAddressPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/BitcoinAddressPhantomReference;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static register(Lwallet/core/jni/BitcoinAddress;J)V
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

    .line 152
    sget-object v0, Lwallet/core/jni/BitcoinAddressPhantomReference;->references:Ljava/util/Set;

    new-instance v1, Lwallet/core/jni/BitcoinAddressPhantomReference;

    invoke-direct {v1, p0, p1, p2}, Lwallet/core/jni/BitcoinAddressPhantomReference;-><init>(Lwallet/core/jni/BitcoinAddress;J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
