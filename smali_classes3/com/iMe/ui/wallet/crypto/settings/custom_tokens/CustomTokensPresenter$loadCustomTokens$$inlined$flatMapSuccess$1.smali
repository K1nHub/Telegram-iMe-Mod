.class public final Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->loadCustomTokens(Z)V
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
        "Lcom/iMe/storage/domain/model/common/CursoredData<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$flatMapSuccess$1\n+ 2 CustomTokensPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 4 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,101:1\n72#2,10:102\n18#3:112\n18#4:113\n*S KotlinDebug\n*F\n+ 1 CustomTokensPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter\n*L\n81#1:112\n81#1:113\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 102
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getItems$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getTokens$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/common/CursoredData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/common/CursoredData;->getData()Ljava/util/List;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getQuery$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getTokens$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getSearchRenderItems(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/util/List;

    move-result-object p1

    .line 18
    :goto_1
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_2

    .line 20
    :cond_5
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
