.class public final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->subscribeToQueryChanges()V
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
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 FragmentUsernamesPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter\n*L\n1#1,132:1\n203#2,7:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$onLoadProductsSuccess(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Ljava/util/List;)V

    goto :goto_0

    .line 135
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$renderGlobalState(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_0

    .line 136
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$onLoadProductsError(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Lcom/iMe/storage/domain/model/Result$Error;)V

    :cond_2
    :goto_0
    return-void
.end method
