.class public abstract Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView;
.super Ljava/lang/Object;
.source "MvpNoParentCustomView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/view/ICustomMvpView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/ui/base/mvp/view/ICustomMvpView<",
        "Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMvpDelegate$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView$mMvpDelegate$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView$mMvpDelegate$2;-><init>(Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView;->mMvpDelegate$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public synthetic getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getKoin(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getMMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/view/MvpNoParentCustomView;->mMvpDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmoxy/MvpDelegate;

    return-object v0
.end method

.method public synthetic getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getMvpDelegate(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCreateMvpView()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$onCreateMvpView(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)V

    return-void
.end method

.method public synthetic onDestroyMvpView()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$onDestroyMvpView(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)V

    return-void
.end method
