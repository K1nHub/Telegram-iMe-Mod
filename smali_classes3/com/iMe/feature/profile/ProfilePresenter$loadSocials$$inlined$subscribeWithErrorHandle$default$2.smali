.class public final Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/profile/ProfilePresenter;->loadSocials()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$3\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$1\n*L\n1#1,111:1\n41#2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $viewState:Lcom/iMe/ui/base/mvp/base/BaseView;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;->$viewState:Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 47
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 48
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;->$viewState:Lcom/iMe/ui/base/mvp/base/BaseView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
