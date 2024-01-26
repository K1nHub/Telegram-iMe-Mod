.class final Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TokenFamilyPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->subscribeToTokenVisibilitySwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/model/wallet/home/FoundTokenItem;",
        "Lcom/iMe/model/wallet/home/FoundTokenItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenFamilyPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenFamilyPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1549#2:95\n1620#2,3:96\n*S KotlinDebug\n*F\n+ 1 TokenFamilyPresenter.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1\n*L\n57#1:95\n57#1:96,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/model/wallet/home/FoundTokenItem;)Lcom/iMe/model/wallet/home/FoundTokenItem;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "foundTokenItem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

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

    .line 58
    invoke-virtual {v6}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/wallet/home/FoundTokenItem;->getAddress()Ljava/lang/String;

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

    .line 57
    :cond_1
    invoke-static {v2, v4}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->access$setTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;Ljava/util/List;)V

    .line 61
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-virtual {v2}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;

    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->access$getTokens$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;->renderData(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Lcom/iMe/model/wallet/home/FoundTokenItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter$subscribeToTokenVisibilitySwitch$1;->invoke(Lcom/iMe/model/wallet/home/FoundTokenItem;)Lcom/iMe/model/wallet/home/FoundTokenItem;

    move-result-object p1

    return-object p1
.end method
