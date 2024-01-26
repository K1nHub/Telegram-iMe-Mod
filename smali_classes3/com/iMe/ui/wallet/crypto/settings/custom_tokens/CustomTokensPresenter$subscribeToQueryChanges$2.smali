.class final Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$2;
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
        "Ljava/util/List<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$2;->invoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$setQuery$p(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter$subscribeToQueryChanges$2;->this$0:Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;->access$getSearchRenderItems(Lcom/iMe/ui/wallet/crypto/settings/custom_tokens/CustomTokensPresenter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
