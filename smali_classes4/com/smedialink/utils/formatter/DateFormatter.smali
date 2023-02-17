.class public final Lcom/smedialink/utils/formatter/DateFormatter;
.super Ljava/lang/Object;
.source "DateFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/utils/formatter/DateFormatter$DateType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDateFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateFormatter.kt\ncom/smedialink/utils/formatter/DateFormatter\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n357#2,7:53\n357#2,7:60\n1#3:67\n*S KotlinDebug\n*F\n+ 1 DateFormatter.kt\ncom/smedialink/utils/formatter/DateFormatter\n*L\n36#1:53,7\n37#1:60,7\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

.field private static final availableLocalesFormatter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Lcom/smedialink/utils/formatter/DateFormatter$DateType;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/utils/formatter/DateFormatter;

    invoke-direct {v0}, Lcom/smedialink/utils/formatter/DateFormatter;-><init>()V

    sput-object v0, Lcom/smedialink/utils/formatter/DateFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smedialink/utils/formatter/DateFormatter;->availableLocalesFormatter:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createFormatFor(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 3

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->getFormat()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 41
    invoke-virtual {p1}, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public static final format(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/smedialink/utils/formatter/DateFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/utils/formatter/DateFormatter;->getCurrentLocaleFormatter(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getCurrentLocaleFormatte\u2026, language).format(value)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic format$default(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 21
    sget-object p2, Lcom/smedialink/utils/formatter/DateFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

    invoke-direct {p2}, Lcom/smedialink/utils/formatter/DateFormatter;->getLanguageCode()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/formatter/DateFormatter;->format(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCurrentLocaleFormatter(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 4

    .line 35
    sget-object v0, Lcom/smedialink/utils/formatter/DateFormatter;->availableLocalesFormatter:Ljava/util/HashMap;

    .line 357
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    .line 36
    sget-object v3, Lcom/smedialink/utils/formatter/DateFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

    invoke-direct {v3, p1, p2}, Lcom/smedialink/utils/formatter/DateFormatter;->createFormatFor(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    .line 360
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    check-cast v1, Ljava/util/Map;

    .line 357
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcom/smedialink/utils/formatter/DateFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/utils/formatter/DateFormatter;->createFormatFor(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 360
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_1
    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final getLanguageCode()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController;->defaultLangIfIsRtl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInstance().defaultLangIfIsRtl()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final parse(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/smedialink/utils/formatter/DateFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/utils/formatter/DateFormatter;->getCurrentLocaleFormatter(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    const-string p1, "getCurrentLocaleFormatte\u2026e, language).parse(value)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic parse$default(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Date;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 25
    sget-object p2, Lcom/smedialink/utils/formatter/DateFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/DateFormatter;

    invoke-direct {p2}, Lcom/smedialink/utils/formatter/DateFormatter;->getLanguageCode()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/smedialink/utils/formatter/DateFormatter;->parse(Lcom/smedialink/utils/formatter/DateFormatter$DateType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
