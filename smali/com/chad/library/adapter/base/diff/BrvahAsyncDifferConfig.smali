.class public final Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
.super Ljava/lang/Object;
.source "BrvahAsyncDifferConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;
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


# instance fields
.field private final backgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "backgroundThreadExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 11
    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->backgroundThreadExecutor:Ljava/util/concurrent/Executor;

    .line 12
    iput-object p3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method


# virtual methods
.method public final getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->backgroundThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object v0
.end method

.method public final getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
