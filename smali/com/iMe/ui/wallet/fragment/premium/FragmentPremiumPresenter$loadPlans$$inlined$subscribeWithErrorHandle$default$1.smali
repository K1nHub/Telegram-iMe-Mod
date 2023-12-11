.class public final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->loadPlans()V
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
        "Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 FragmentPremiumPresenter.kt\ncom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter\n*L\n1#1,132:1\n117#2,36:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/iMe/mapper/fragment/TonFragmentProductUiMappingKt;->mapPremiumPlanToUi(Ljava/util/List;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$setItems$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Ljava/util/List;)V

    .line 136
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getItems$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    sget-object v1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-static {p1, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$renderGlobalState(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Lcom/iMe/model/state/GlobalState;)V

    .line 138
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 139
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {p1, v1, v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderButton(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getItems$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderItems(Ljava/util/List;)V

    .line 144
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getItems$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz v1, :cond_2

    .line 145
    iget-object v2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-virtual {v2}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 146
    iget-object v3, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 147
    sget v4, Lorg/telegram/messenger/R$string;->fragment_premium_gift:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 148
    invoke-virtual {v1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getPriceText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 146
    invoke-interface {v3, v4, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 150
    iget-object v4, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {v4}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getRecipient$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-eqz v4, :cond_1

    move v0, v5

    .line 145
    :cond_1
    invoke-interface {v2, v3, v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderButton(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 144
    :goto_0
    invoke-static {p1, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$setSelectedItem$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V

    goto :goto_2

    .line 156
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    .line 158
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v1

    .line 159
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    goto :goto_1

    .line 160
    :cond_4
    sget-object v1, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    .line 157
    :goto_1
    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$renderGlobalState(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Lcom/iMe/model/state/GlobalState;)V

    .line 163
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_5
    :goto_2
    return-void
.end method
