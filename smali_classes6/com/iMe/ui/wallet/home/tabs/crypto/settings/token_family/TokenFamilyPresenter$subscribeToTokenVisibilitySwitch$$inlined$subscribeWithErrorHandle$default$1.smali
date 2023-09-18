.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->subscribeToTokenVisibilitySwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;+",
        "Lcom/iMe/model/wallet/home/FoundTokenItem;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TokenFamilyPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n76#2,5:133\n81#2,3:141\n85#2,6:145\n1549#3:138\n1620#3,2:139\n1622#3:144\n*S KotlinDebug\n*F\n+ 1 TokenFamilyPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter\n*L\n80#1:138\n80#1:139,2\n80#1:144\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;+",
            "Lcom/iMe/model/wallet/home/FoundTokenItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "it"

    .line 69
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/Pair;

    .line 76
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/home/FoundTokenItem;

    .line 135
    instance-of v3, v2, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-virtual {v3}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;

    const-string/jumbo v4, "result"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v4, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-static {v4}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 137
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->access$getTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)Ljava/util/List;

    move-result-object v3

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    move-object v6, v5

    check-cast v6, Lcom/iMe/model/wallet/home/FoundTokenItem;

    .line 141
    invoke-virtual {v6}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 142
    invoke-virtual {v6}, Lcom/iMe/model/wallet/home/FoundTokenItem;->isEnabled()Z

    move-result v5

    xor-int/lit8 v13, v5, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1bf

    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Lcom/iMe/model/wallet/home/FoundTokenItem;->copy$default(Lcom/iMe/model/wallet/home/FoundTokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/iMe/model/wallet/home/FoundTokenItem;

    move-result-object v6

    .line 1621
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {v2, v4}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->access$setTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;Ljava/util/List;)V

    .line 145
    iget-object v1, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;

    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->access$getTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;->renderData(Ljava/util/List;)V

    :cond_2
    return-void
.end method
