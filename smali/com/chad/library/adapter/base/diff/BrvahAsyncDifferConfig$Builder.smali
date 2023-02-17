.class public final Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;
.super Ljava/lang/Object;
.source "BrvahAsyncDifferConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder$Companion;

.field private static sDiffExecutor:Ljava/util/concurrent/Executor;

.field private static final sExecutorLock:Ljava/lang/Object;


# instance fields
.field private mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->Companion:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder$Companion;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "mDiffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method


# virtual methods
.method public final build()Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->sExecutorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 63
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    .line 65
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    .line 66
    sget-object v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->sDiffExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0

    throw v1

    .line 68
    :cond_1
    :goto_0
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    .line 69
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 70
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->mBackgroundThreadExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    iget-object v3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;->mDiffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 68
    invoke-direct {v0, v1, v2, v3}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-object v0
.end method
