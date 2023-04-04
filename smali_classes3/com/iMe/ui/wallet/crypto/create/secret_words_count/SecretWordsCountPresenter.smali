.class public final Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "SecretWordsCountPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final wordsCountItems$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 10
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;->INSTANCE:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;->wordsCountItems$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getWordsCountItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;->wordsCountItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final setupTokenActions()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;->getWordsCountItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;->setupAdapter(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;->setupTokenActions()V

    return-void
.end method

.method public final onItemClicked(I)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;->getWordsCountItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;->onItemSelected(I)V

    return-void
.end method
