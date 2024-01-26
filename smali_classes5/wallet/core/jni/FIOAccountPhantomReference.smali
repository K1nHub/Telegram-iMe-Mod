.class Lwallet/core/jni/FIOAccountPhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "FIOAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lwallet/core/jni/FIOAccount;",
        ">;"
    }
.end annotation


# static fields
.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lwallet/core/jni/FIOAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static references:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lwallet/core/jni/FIOAccountPhantomReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lwallet/core/jni/FIOAccountPhantomReference;->references:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lwallet/core/jni/FIOAccountPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private constructor <init>(Lwallet/core/jni/FIOAccount;J)V
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

    .line 70
    sget-object v0, Lwallet/core/jni/FIOAccountPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 71
    iput-wide p2, p0, Lwallet/core/jni/FIOAccountPhantomReference;->nativeHandle:J

    return-void
.end method

.method public static doDeletes()V
    .locals 3

    .line 79
    sget-object v0, Lwallet/core/jni/FIOAccountPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/FIOAccountPhantomReference;

    :goto_0
    if-eqz v0, :cond_0

    .line 81
    iget-wide v1, v0, Lwallet/core/jni/FIOAccountPhantomReference;->nativeHandle:J

    invoke-static {v1, v2}, Lwallet/core/jni/FIOAccount;->nativeDelete(J)V

    .line 82
    sget-object v1, Lwallet/core/jni/FIOAccountPhantomReference;->references:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lwallet/core/jni/FIOAccountPhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/FIOAccountPhantomReference;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static register(Lwallet/core/jni/FIOAccount;J)V
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

    .line 75
    sget-object v0, Lwallet/core/jni/FIOAccountPhantomReference;->references:Ljava/util/Set;

    new-instance v1, Lwallet/core/jni/FIOAccountPhantomReference;

    invoke-direct {v1, p0, p1, p2}, Lwallet/core/jni/FIOAccountPhantomReference;-><init>(Lwallet/core/jni/FIOAccount;J)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
