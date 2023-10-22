.class final Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;
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
        "Ljava/util/List<",
        "Lcom/iMe/storage/domain/model/translation/Translation;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/translation/Translation;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTranslationRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TranslationRepositoryImpl.kt\ncom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,101:1\n15#2:102\n*S KotlinDebug\n*F\n+ 1 TranslationRepositoryImpl.kt\ncom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2\n*L\n80#1:102\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;->INSTANCE:Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lcom/iMe/storage/domain/model/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/translation/Translation;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/translation/Translation;",
            ">;"
        }
    .end annotation

    const-string v0, "translations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/iMe/storage/domain/model/translation/Translation;

    .line 72
    new-instance v7, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2$1;

    invoke-direct {v7, p1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2$1;-><init>(Ljava/util/List;)V

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/translation/Translation;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/translation/Translation;->getSourceLang()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 71
    :cond_1
    invoke-direct {v0, v1, p1}, Lcom/iMe/storage/domain/model/translation/Translation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/translate/TranslationRepositoryImpl$translate$2;->invoke(Ljava/util/List;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
