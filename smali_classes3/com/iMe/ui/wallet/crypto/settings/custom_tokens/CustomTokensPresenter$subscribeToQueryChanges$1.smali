.class final Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomTokensPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->subscribeToQueryChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomTokensPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTokensPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,194:1\n2624#2,3:195\n*S KotlinDebug\n*F\n+ 1 CustomTokensPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1\n*L\n146#1:195,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "rawQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_4

    .line 144
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    const-string v2, ""

    invoke-static {p1, v2}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$setQuery$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getItems$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    .line 2624
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2625
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 146
    instance-of v4, v4, Lcom/iMe/model/common/GlobalStateItem;

    if-eqz v4, :cond_1

    move v1, v0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 147
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 148
    invoke-static {v2}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getTokens$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    :cond_3
    invoke-virtual {v2}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;

    invoke-interface {v1, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensView;->renderItems(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 155
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$1;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
