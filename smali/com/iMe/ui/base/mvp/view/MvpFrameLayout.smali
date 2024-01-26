.class public Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;
.super Landroid/widget/FrameLayout;
.source "MvpFrameLayout.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/view/ICustomMvpView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/iMe/ui/base/mvp/view/ICustomMvpView<",
        "Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMvpDelegate$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout$mMvpDelegate$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout$mMvpDelegate$2;-><init>(Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;->mMvpDelegate$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public bridge synthetic getKoin()Lorg/koin/core/Koin;
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
            "Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;->mMvpDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmoxy/MvpDelegate;

    return-object v0
.end method

.method public bridge synthetic getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

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
