.class final Lcom/google/mlkit/common/sdkinternal/TaskQueue$zzb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/TaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field final zza:Ljava/util/concurrent/Executor;

.field final zzb:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue$zzb;->zza:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/TaskQueue$zzb;->zzb:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lcom/google/mlkit/common/sdkinternal/zzo;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/common/sdkinternal/TaskQueue$zzb;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method
