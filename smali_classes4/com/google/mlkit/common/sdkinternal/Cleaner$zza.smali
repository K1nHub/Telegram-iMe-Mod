.class final Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;
.super Ljava/lang/ref/PhantomReference;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/Cleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;"
    }
.end annotation


# instance fields
.field private final zza:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p3, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;->zza:Ljava/util/Set;

    .line 3
    iput-object p4, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;->zzb:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;Lcom/google/mlkit/common/sdkinternal/zzd;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final clean()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;->zza:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/PhantomReference;->clear()V

    .line 8
    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;->zzb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
