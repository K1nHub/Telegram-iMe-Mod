.class public final Lorg/fork/controller/DialogTranslationController$Companion;
.super Ljava/lang/Object;
.source "DialogTranslationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/controller/DialogTranslationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$cRVbZ3yx3YKztDZ3G-Q61ZVHu00(ILjava/lang/Integer;)Lorg/fork/controller/DialogTranslationController;
    .locals 0

    invoke-static {p0, p1}, Lorg/fork/controller/DialogTranslationController$Companion;->getInstance$lambda-1(ILjava/lang/Integer;)Lorg/fork/controller/DialogTranslationController;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/controller/DialogTranslationController$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda-1(ILjava/lang/Integer;)Lorg/fork/controller/DialogTranslationController;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance p1, Lorg/fork/controller/DialogTranslationController;

    invoke-direct {p1, p0}, Lorg/fork/controller/DialogTranslationController;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public final getCurrentLocale()Ljava/lang/String;
    .locals 7

    .line 93
    invoke-virtual {p0}, Lorg/fork/controller/DialogTranslationController$Companion;->getVoiceTranslateLanguages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInstance().currentLocale.toLanguageTag()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 93
    :cond_1
    check-cast v2, Ljava/util/Map$Entry;

    const-string v0, "en-US"

    if-nez v2, :cond_2

    goto :goto_0

    .line 95
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final getInstance(I)Lorg/fork/controller/DialogTranslationController;
    .locals 3

    .line 100
    invoke-static {}, Lorg/fork/controller/DialogTranslationController;->access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/fork/controller/DialogTranslationController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lorg/fork/controller/DialogTranslationController$Companion$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1, v2}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "accountInstances.compute\u2026ontroller(accountIndex) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/fork/controller/DialogTranslationController;

    return-object p1
.end method

.method public final getVoiceTranslateLanguages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lorg/fork/controller/DialogTranslationController;->access$getVoiceTranslateLanguages$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
