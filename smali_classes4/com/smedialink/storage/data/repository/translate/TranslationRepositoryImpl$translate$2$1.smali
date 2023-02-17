.class final Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TranslationRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;->translate$lambda-4(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/translation/Translation;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $translations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/translation/Translation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/translation/Translation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$2$1;->$translations:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/translation/Translation;)Ljava/lang/CharSequence;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$2$1;->$translations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "\n"

    invoke-static {v1, v0}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/translation/Translation;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lcom/smedialink/storage/domain/model/translation/Translation;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$2$1;->invoke(Lcom/smedialink/storage/domain/model/translation/Translation;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
