.class public final Lcom/iMe/bots/data/repository/CountriesRepository;
.super Ljava/lang/Object;
.source "CountriesRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/repository/CountriesRepository$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/bots/data/repository/CountriesRepository$Companion;

.field private static volatile INSTANCE:Lcom/iMe/bots/data/repository/CountriesRepository;

.field private static final RUSSIAN_PHONE_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUSSIAN_REGIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->Companion:Lcom/iMe/bots/data/repository/CountriesRepository$Companion;

    const-string v2, "ru_MD"

    const-string v3, "ru_UA"

    const-string v4, "ru_RU"

    const-string v5, "ru_KZ"

    const-string v6, "ru_KG"

    const-string v7, "ru_BY"

    const-string v8, "ru"

    const-string v9, "hy_AM"

    const-string v10, "hy"

    const-string v11, "uz_Cyrl_UZ"

    const-string v12, "uz_Cyrl"

    const-string v13, "tg_Cyrl_TJ"

    const-string v14, "tg_Cyrl"

    const-string v15, "az_Cyrl_AZ"

    const-string v16, "az_Cyrl"

    .line 35
    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->RUSSIAN_REGIONS:Ljava/util/Set;

    const-string v1, "7"

    const-string v2, "373"

    const-string v3, "374"

    const-string v4, "375"

    const-string v5, "380"

    const-string v6, "992"

    const-string v7, "994"

    const-string v8, "996"

    const-string v9, "998"

    .line 40
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->RUSSIAN_PHONE_CODES:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/bots/data/repository/CountriesRepository;->context:Landroid/content/Context;

    const-string v0, "SHARED_PREFERENCES_COUNTRIES"

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026ES, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/bots/data/repository/CountriesRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/bots/data/repository/CountriesRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/iMe/bots/data/repository/CountriesRepository;
    .locals 1

    .line 6
    sget-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->INSTANCE:Lcom/iMe/bots/data/repository/CountriesRepository;

    return-object v0
.end method

.method public static final synthetic access$getRUSSIAN_PHONE_CODES$cp()Ljava/util/Set;
    .locals 1

    .line 6
    sget-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->RUSSIAN_PHONE_CODES:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getRUSSIAN_REGIONS$cp()Ljava/util/Set;
    .locals 1

    .line 6
    sget-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->RUSSIAN_REGIONS:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/iMe/bots/data/repository/CountriesRepository;)V
    .locals 0

    .line 6
    sput-object p0, Lcom/iMe/bots/data/repository/CountriesRepository;->INSTANCE:Lcom/iMe/bots/data/repository/CountriesRepository;

    return-void
.end method

.method private final getDefaultLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/iMe/bots/data/repository/CountriesRepository;->Companion:Lcom/iMe/bots/data/repository/CountriesRepository$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/bots/data/repository/CountriesRepository$Companion;->isRussia(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ru"

    goto :goto_0

    :cond_0
    const-string p1, "eng"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getCurrentBotLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/iMe/bots/data/repository/CountriesRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SHARED_PREFERENCES_KEY_CURRENT_BOT_LANGUAGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/iMe/bots/data/repository/CountriesRepository;->getDefaultLanguage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object p1, p0, Lcom/iMe/bots/data/repository/CountriesRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method public final setCurrentBotLanguage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/iMe/bots/data/repository/CountriesRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHARED_PREFERENCES_KEY_CURRENT_BOT_LANGUAGE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
