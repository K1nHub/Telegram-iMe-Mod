.class final synthetic Lcom/google/mlkit/common/sdkinternal/zza;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field static final zza:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zza;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/zza;-><init>()V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/zza;->zza:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MlKitCleaner"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
