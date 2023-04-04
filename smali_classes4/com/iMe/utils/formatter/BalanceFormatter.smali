.class public final Lcom/iMe/utils/formatter/BalanceFormatter;
.super Ljava/lang/Object;
.source "BalanceFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBalanceFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BalanceFormatter.kt\ncom/iMe/utils/formatter/BalanceFormatter\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,75:1\n361#2,7:76\n*S KotlinDebug\n*F\n+ 1 BalanceFormatter.kt\ncom/iMe/utils/formatter/BalanceFormatter\n*L\n65#1:76,7\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

.field private static final availableLocalesFormatter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iMe/model/wallet/BalanceFormatterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-direct {v0}, Lcom/iMe/utils/formatter/BalanceFormatter;-><init>()V

    sput-object v0, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iMe/utils/formatter/BalanceFormatter;->availableLocalesFormatter:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final formatBalance(Ljava/lang/Number;I)Ljava/lang/String;
    .locals 2

    const-string v0, "balance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-direct {v0}, Lcom/iMe/utils/formatter/BalanceFormatter;->getCurrentLocaleFormatter()Lcom/iMe/model/wallet/BalanceFormatterInfo;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/iMe/model/wallet/BalanceFormatterInfo;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 53
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 55
    invoke-virtual {v1, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "currentLocaleFormatter.n\u2026         .format(balance)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lcom/iMe/model/wallet/BalanceFormatterInfo;->getDecimalSeparator()C

    move-result p1

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatFiatBalance$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;Lcom/iMe/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 34
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic formatPercents$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p4, 0x2

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatPercents(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCurrentLocaleFormatter()Lcom/iMe/model/wallet/BalanceFormatterInfo;
    .locals 6

    .line 64
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->defaultLangIfIsRtl()Ljava/lang/String;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/iMe/utils/formatter/BalanceFormatter;->availableLocalesFormatter:Ljava/util/HashMap;

    const-string v2, "currentLocale"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 66
    new-instance v2, Lcom/iMe/model/wallet/BalanceFormatterInfo;

    .line 67
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    const-string v4, "getNumberInstance(Locale(currentLocale))"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v4, Ljava/text/DecimalFormatSymbols;

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v4}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    .line 66
    invoke-direct {v2, v3, v4}, Lcom/iMe/model/wallet/BalanceFormatterInfo;-><init>(Ljava/text/NumberFormat;C)V

    .line 364
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_0
    check-cast v2, Lcom/iMe/model/wallet/BalanceFormatterInfo;

    return-object v2
.end method


# virtual methods
.method public final formatFiatBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {p3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->getDecimals()I

    move-result p3

    :goto_0
    invoke-static {p1, p3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->getShortName()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

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

    .line 32
    invoke-static {p1, p2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatShortFiatBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat$USD;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Fiat;->getShortName()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v1

    invoke-static {p1, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final formatTokenBalance(Ljava/lang/Number;Ljava/lang/String;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenTicker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v0, p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final parseFormattedString(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-direct {p0}, Lcom/iMe/utils/formatter/BalanceFormatter;->getCurrentLocaleFormatter()Lcom/iMe/model/wallet/BalanceFormatterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/BalanceFormatterInfo;->getNumberFormat()Ljava/text/NumberFormat;

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

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method
