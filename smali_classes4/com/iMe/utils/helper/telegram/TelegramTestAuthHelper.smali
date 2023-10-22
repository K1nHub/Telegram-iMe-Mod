.class public final Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;
.super Ljava/lang/Object;
.source "TelegramTestAuthHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;

.field private static currentIteration:I

.field private static final dataCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->INSTANCE:Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;

    const-string v0, "3"

    const-string v1, "2"

    const-string v2, "1"

    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->dataCenters:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generatePhoneNumber()Lcom/iMe/utils/helper/telegram/TelegramTestPhoneNumber;
    .locals 5

    .line 35
    sget v0, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->currentIteration:I

    sget-object v1, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->dataCenters:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->currentIteration:I

    .line 38
    :cond_0
    sget v0, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->currentIteration:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    sget v1, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->currentIteration:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/iMe/utils/helper/telegram/TelegramTestAuthHelper;->currentIteration:I

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "66"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v3, 0x3e8

    const/16 v4, 0x270f

    invoke-direct {v2, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->random(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder(TELEGRAM_N\u2026Y\n            .toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/iMe/utils/helper/telegram/TelegramTestPhoneNumber;

    const/4 v3, 0x5

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/iMe/utils/helper/telegram/TelegramTestPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final getCountry()Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 2

    .line 22
    new-instance v0, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v0}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    const-string v1, "999"

    .line 23
    iput-object v1, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 24
    sget v1, Lorg/telegram/messenger/R$string;->debug_test_backend:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    const-string v1, "TB"

    .line 25
    iput-object v1, v0, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    return-object v0
.end method
