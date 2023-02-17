.class final synthetic Lcom/google/mlkit/common/sdkinternal/zzi;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final zza:Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;


# direct methods
.method constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/zzi;->zza:Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/common/sdkinternal/MlKitThreadPool;->zzb(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
