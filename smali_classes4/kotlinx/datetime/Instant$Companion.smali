.class public final Lkotlinx/datetime/Instant$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlinx/datetime/Instant$Companion\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,189:1\n163#2,6:190\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlinx/datetime/Instant$Companion\n*L\n80#1:190,6\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/datetime/Instant$Companion;-><init>()V

    return-void
.end method

.method private final fixOffsetRepresentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v1, 0x54

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    .line 78
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 163
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v1

    if-ltz v2, :cond_5

    :goto_0
    add-int/lit8 v3, v2, -0x1

    .line 164
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    move v7, v2

    goto :goto_4

    :cond_3
    if-gez v3, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    :goto_3
    move v7, v1

    :goto_4
    if-ge v7, v0, :cond_6

    return-object p1

    :cond_6
    const/16 v6, 0x3a

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p1

    .line 82
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_7

    goto :goto_5

    .line 83
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":00"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public static synthetic fromEpochSeconds$default(Lkotlinx/datetime/Instant$Companion;JJILjava/lang/Object;)Lkotlinx/datetime/Instant;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/datetime/Instant$Companion;->fromEpochSeconds(JJ)Lkotlinx/datetime/Instant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromEpochSeconds(JJ)Lkotlinx/datetime/Instant;
    .locals 1

    .line 87
    :try_start_0
    new-instance v0, Lkotlinx/datetime/Instant;

    invoke-static {p1, p2, p3, p4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p3

    const-string/jumbo p4, "ofEpochSecond(epochSeconds, nanosecondAdjustment)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p3}, Lkotlinx/datetime/Instant;-><init>(Lj$/time/Instant;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    .line 89
    instance-of p4, p3, Ljava/lang/ArithmeticException;

    if-nez p4, :cond_1

    instance-of p4, p3, Lj$/time/DateTimeException;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    throw p3

    :cond_1
    :goto_0
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_2

    .line 90
    invoke-virtual {p0}, Lkotlinx/datetime/Instant$Companion;->getMAX$kotlinx_datetime()Lkotlinx/datetime/Instant;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlinx/datetime/Instant$Companion;->getMIN$kotlinx_datetime()Lkotlinx/datetime/Instant;

    move-result-object p1

    :goto_1
    move-object v0, p1

    :goto_2
    return-object v0
.end method

.method public final getDISTANT_PAST()Lkotlinx/datetime/Instant;
    .locals 1

    .line 96
    invoke-static {}, Lkotlinx/datetime/Instant;->access$getDISTANT_PAST$cp()Lkotlinx/datetime/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getMAX$kotlinx_datetime()Lkotlinx/datetime/Instant;
    .locals 1

    .line 100
    invoke-static {}, Lkotlinx/datetime/Instant;->access$getMAX$cp()Lkotlinx/datetime/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final getMIN$kotlinx_datetime()Lkotlinx/datetime/Instant;
    .locals 1

    .line 99
    invoke-static {}, Lkotlinx/datetime/Instant;->access$getMIN$cp()Lkotlinx/datetime/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final now()Lkotlinx/datetime/Instant;
    .locals 3

    .line 64
    new-instance v0, Lkotlinx/datetime/Instant;

    invoke-static {}, Lj$/time/Clock;->systemUTC()Lj$/time/Clock;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Clock;->instant()Lj$/time/Instant;

    move-result-object v1

    const-string/jumbo v2, "systemUTC().instant()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/Instant;-><init>(Lj$/time/Instant;)V

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lkotlinx/datetime/Instant;
    .locals 2

    const-string/jumbo v0, "isoString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :try_start_0
    new-instance v0, Lkotlinx/datetime/Instant;

    invoke-direct {p0, p1}, Lkotlinx/datetime/Instant$Companion;->fixOffsetRepresentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj$/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Lj$/time/OffsetDateTime;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toInstant()Lj$/time/Instant;

    move-result-object p1

    const-string/jumbo v1, "parse(fixOffsetRepresent\u2026n(isoString)).toInstant()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lkotlinx/datetime/Instant;-><init>(Lj$/time/Instant;)V
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 72
    new-instance v0, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {v0, p1}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lkotlinx/datetime/Instant;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lkotlinx/datetime/serializers/InstantIso8601Serializer;->INSTANCE:Lkotlinx/datetime/serializers/InstantIso8601Serializer;

    return-object v0
.end method
