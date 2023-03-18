.class public final Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "BrvahAsyncDiffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $oldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    iput-object p3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    .line 128
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    invoke-static {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 155
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    invoke-static {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    invoke-static {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$newList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;->$oldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
