.class final Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/disposables/Disposable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cancellable:Z

.field final synthetic $viewState:Lcom/iMe/ui/base/mvp/base/BaseView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/base/mvp/base/BaseView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;->$viewState:Lcom/iMe/ui/base/mvp/base/BaseView;

    iput-boolean p2, p0, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;->$cancellable:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;->invoke(Lio/reactivex/disposables/Disposable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;->$viewState:Lcom/iMe/ui/base/mvp/base/BaseView;

    iget-boolean v1, p0, Lcom/iMe/utils/extentions/rx/RxExtKt$withLoadingDialog$1;->$cancellable:Z

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method
