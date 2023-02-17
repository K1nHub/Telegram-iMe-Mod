.class public final Lcom/smedialink/utils/formatter/BalanceFormatter;
.super Ljava/lang/Object;
.source "BalanceFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalanceFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BalanceFormatter.kt\ncom/smedialink/utils/formatter/BalanceFormatter\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,76:1\n357#2,7:77\n*S KotlinDebug\n*F\n+ 1 BalanceFormatter.kt\ncom/smedialink/utils/formatter/BalanceFormatter\n*L\n66#1:77,7\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

.field private static final availableLocalesFormatter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/smedialink/model/wallet/BalanceFormatterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-direct {v0}, Lcom/smedialink/utils/formatter/BalanceFormatter;-><init>()V

    sput-object v0, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smedialink/utils/formatter/BalanceFormatter;->availableLocalesFormatter:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatBalance(Ljava/lang/Number;I)Ljava/lang/String;
    .locals 2

    const-string v0, "balance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-direct {v0}, Lcom/smedialink/utils/formatter/BalanceFormatter;->getCurrentLocaleFormatter()Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 54
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 56
    invoke-virtual {v1, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "currentLocaleFormatter.n\u2026         .format(balance)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->getDecimalSeparator()C

    move-result p1

    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->stripZeros(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatFiatBalance$default(Lcom/smedialink/utils/formatter/BalanceFormatter;Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatPercents$default(Lcom/smedialink/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatPercents(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCurrentLocaleFormatter()Lcom/smedialink/model/wallet/BalanceFormatterInfo;
    .locals 6

    .line 65
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->defaultLangIfIsRtl()Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/smedialink/utils/formatter/BalanceFormatter;->availableLocalesFormatter:Ljava/util/HashMap;

    const-string v2, "currentLocale"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    .line 68
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    const-string v4, "getNumberInstance(Locale(currentLocale))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v4, Ljava/text/DecimalFormatSymbols;

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    .line 67
    invoke-direct {v2, v3, v4}, Lcom/smedialink/model/wallet/BalanceFormatterInfo;-><init>(Ljava/text/NumberFormat;C)V

    .line 360
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    check-cast v2, Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    return-object v2
.end method


# virtual methods
.method public final formatFiatBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_0

    sget-object p3, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result p3

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_0
    invoke-static {p1, p3}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getShortName()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatPercents(Ljava/lang/Number;I)Ljava/lang/String;
    .locals 1

    const-string v0, "percentage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1, p2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatShortFiatBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Fiat;->getShortName()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatTokenBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v1

    invoke-static {p1, v1}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatTokenBalance(Ljava/lang/Number;Ljava/lang/String;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenTicker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v0, p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    :try_start_0
    invoke-direct {p0}, Lcom/smedialink/utils/formatter/BalanceFormatter;->getCurrentLocaleFormatter()Lcom/smedialink/model/wallet/BalanceFormatterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/BalanceFormatterInfo;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method
