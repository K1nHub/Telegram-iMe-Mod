.class public final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->buyUsername()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 FragmentUsernamesPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter\n*L\n1#1,132:1\n159#2,12:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showActionSuccess()V

    goto :goto_0

    .line 138
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showActionError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
