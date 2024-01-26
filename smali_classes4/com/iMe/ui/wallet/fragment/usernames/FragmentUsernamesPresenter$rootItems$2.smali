.class final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$rootItems$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FragmentUsernamesPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;-><init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$rootItems$2;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$rootItems$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$rootItems$2;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$initRootItems(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
