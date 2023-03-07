.class public interface abstract Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;
.super Ljava/lang/Object;
.source "ICustomMvpView.kt"

# interfaces
.implements Lmoxy/MvpDelegateHolder;
.implements Lmoxy/MvpView;
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/base/mvp/view/ICustomMvpView$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lmoxy/MvpDelegateHolder;",
        "Lmoxy/MvpView;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation


# virtual methods
.method public abstract getMMvpDelegate()Lmoxy/MvpDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getMvpDelegate()Lmoxy/MvpDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation
.end method
