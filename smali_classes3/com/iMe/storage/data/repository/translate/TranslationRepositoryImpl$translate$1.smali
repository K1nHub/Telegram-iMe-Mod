.class final Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TranslationRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/CharSequence;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/translation/Translation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic $blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sourceLanguage:Ljava/lang/String;

.field final synthetic $targetLanguage:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;


# direct methods
.method public static synthetic $r8$lambda$KQR7obCW1NUPA7pFYo5i3GY4TA0(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->invoke$lambda$1(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QirTxl1n0vLOnHxtasw8XHJ9QDc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/translation/Translation;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/translation/Translation;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->this$0:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->$sourceLanguage:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->$targetLanguage:Ljava/lang/String;

    iput-object p4, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->$blocks:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/translation/Translation;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/translation/Translation;

    return-object p0
.end method

.method private static final invoke$lambda$1(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/CharSequence;)Lio/reactivex/ObservableSource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/translation/Translation;",
            ">;"
        }
    .end annotation

    const-string v0, "blockText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->this$0:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->access$getGoogleTranslationApi$p(Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;)Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->this$0:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;

    invoke-static {v1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;->access$getUserAgents$p(Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->$sourceLanguage:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, "auto"

    .line 56
    :cond_0
    iget-object v3, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->$targetLanguage:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/iMe/storage/data/network/api/own/GoogleTranslationApi;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    sget-object v0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;->INSTANCE:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;

    new-instance v1, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    new-instance v0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$2;

    iget-object v1, p0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->$blocks:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$2;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->invoke(Ljava/lang/CharSequence;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
