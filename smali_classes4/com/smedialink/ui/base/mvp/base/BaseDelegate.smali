.class public interface abstract Lcom/smedialink/ui/base/mvp/base/BaseDelegate;
.super Ljava/lang/Object;
.source "BaseDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createDelegate()Lmoxy/MvpDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method
