.class public Lcom/google/mlkit/common/sdkinternal/Cleaner;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;,
        Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    return-void
.end method

.method public static create()Lcom/google/mlkit/common/sdkinternal/Cleaner;
    .locals 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 5
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/zza;->zza:Ljava/util/concurrent/ThreadFactory;

    .line 6
    new-instance v1, Lcom/google/mlkit/common/sdkinternal/Cleaner;

    invoke-direct {v1}, Lcom/google/mlkit/common/sdkinternal/Cleaner;-><init>()V

    .line 8
    sget-object v2, Lcom/google/mlkit/common/sdkinternal/zzc;->zza:Ljava/lang/Runnable;

    invoke-virtual {v1, v1, v2}, Lcom/google/mlkit/common/sdkinternal/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;

    .line 9
    iget-object v2, v1, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, v1, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    .line 10
    new-instance v4, Lcom/google/mlkit/common/sdkinternal/zzb;

    invoke-direct {v4, v2, v3}, Lcom/google/mlkit/common/sdkinternal/zzb;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v1
.end method


# virtual methods
.method public register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;
    .locals 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 13
    new-instance v6, Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;

    iget-object v2, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zza:Ljava/lang/ref/ReferenceQueue;

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/common/sdkinternal/Cleaner$zza;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;Ljava/lang/Runnable;Lcom/google/mlkit/common/sdkinternal/zzd;)V

    .line 14
    iget-object p1, p0, Lcom/google/mlkit/common/sdkinternal/Cleaner;->zzb:Ljava/util/Set;

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v6
.end method
