.class public final Lcom/iMe/fork/controller/DialogTranslationController$Companion;
.super Ljava/lang/Object;
.source "DialogTranslationController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/controller/DialogTranslationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$UHaL44S2UJipORXy0qVYB7hrx2g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/DialogTranslationController;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/controller/DialogTranslationController$Companion;->getInstance$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/controller/DialogTranslationController$Companion;-><init>()V

    return-void
.end method

.method private static final getInstance$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/fork/controller/DialogTranslationController;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/controller/DialogTranslationController;

    return-object p0
.end method


# virtual methods
.method public final getCurrentLocale()Ljava/lang/String;
    .locals 5

    .line 94
    invoke-static {}, Lcom/iMe/fork/controller/DialogTranslationController;->access$getVoiceTranslateLanguages$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSystemLanguageCodes()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string v4, "langCode"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 94
    :goto_0
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_3

    .line 97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "en-US"

    :goto_1
    return-object v0
.end method

.method public final getInstance(I)Lcom/iMe/fork/controller/DialogTranslationController;
    .locals 3

    .line 102
    invoke-static {}, Lcom/iMe/fork/controller/DialogTranslationController;->access$getAccountInstances$cp()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/controller/DialogTranslationController$Companion$getInstance$1;

    invoke-direct {v2, p1}, Lcom/iMe/fork/controller/DialogTranslationController$Companion$getInstance$1;-><init>(I)V

    new-instance p1, Lcom/iMe/fork/controller/DialogTranslationController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lcom/iMe/fork/controller/DialogTranslationController$Companion$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1, p1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lj$/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "accountIndex: Int) = acc\u2026ontroller(accountIndex) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/controller/DialogTranslationController;

    return-object p1
.end method
