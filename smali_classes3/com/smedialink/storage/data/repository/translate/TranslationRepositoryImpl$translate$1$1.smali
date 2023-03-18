.class final Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TranslationRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1;->invoke(Ljava/lang/CharSequence;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/smedialink/storage/domain/model/translation/Translation;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;

    invoke-direct {v0}, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;->INSTANCE:Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/ArrayList;)Lcom/smedialink/storage/domain/model/translation/Translation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/translation/Translation;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lcom/smedialink/storage/data/mapper/translate/TranslationMappingKt;->mapToDomain(Ljava/util/ArrayList;)Lcom/smedialink/storage/domain/model/translation/Translation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$translate$1$1;->invoke(Ljava/util/ArrayList;)Lcom/smedialink/storage/domain/model/translation/Translation;

    move-result-object p1

    return-object p1
.end method
