.class final Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SecretWordsCountPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter;-><init>()V
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
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;->INSTANCE:Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountPresenter$wordsCountItems$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Lkotlin/ranges/IntRange;

    const/16 v1, 0xc

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
