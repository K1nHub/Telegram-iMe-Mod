.class public interface abstract Lcom/smedialink/navigation/common/router/base/NavigationRouter;
.super Ljava/lang/Object;
.source "NavigationRouter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/smedialink/ui/base/mvp/MvpFragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clean()V
.end method

.method public abstract getCurrentScreen()Lcom/smedialink/ui/base/mvp/MvpFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getScreenStack()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract init(Lcom/smedialink/navigation/common/configuration/NavigationConfiguration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/navigation/common/configuration/NavigationConfiguration<",
            "+",
            "Lcom/smedialink/model/common/NavigationTab<",
            "TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract show(I)V
.end method
