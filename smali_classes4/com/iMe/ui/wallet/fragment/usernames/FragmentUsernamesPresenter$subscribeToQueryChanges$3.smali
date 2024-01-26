.class final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$3;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentUsernamesPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->subscribeToQueryChanges()V
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
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;>;>;"
        }
    .end annotation

    const-string/jumbo v0, "newQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$setQuery$p(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$3;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$getLoadProductsObservable(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 197
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$3;->invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
