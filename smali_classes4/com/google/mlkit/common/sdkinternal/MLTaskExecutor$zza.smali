.class final enum Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;
.super Ljava/lang/Enum;
.source "com.google.mlkit:common@@17.0.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

.field private static final synthetic zzb:[Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;->zza:Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

    aput-object v0, v1, v2

    .line 7
    sput-object v1, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;->zzb:[Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;->zzb:[Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

    invoke-virtual {v0}, [Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor$zza;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->getInstance()Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->zza(Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
