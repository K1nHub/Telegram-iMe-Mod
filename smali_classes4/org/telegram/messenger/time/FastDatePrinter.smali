.class public Lorg/telegram/messenger/time/FastDatePrinter;
.super Ljava/lang/Object;
.source "FastDatePrinter.java"

# interfaces
.implements Lorg/telegram/messenger/time/DatePrinter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;,
        Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;,
        Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwelveHourField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitYearField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;,
        Lorg/telegram/messenger/time/FastDatePrinter$PaddedNumberField;,
        Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;,
        Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedNumberField;,
        Lorg/telegram/messenger/time/FastDatePrinter$TextField;,
        Lorg/telegram/messenger/time/FastDatePrinter$StringLiteral;,
        Lorg/telegram/messenger/time/FastDatePrinter$CharacterLiteral;,
        Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;,
        Lorg/telegram/messenger/time/FastDatePrinter$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static final cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1105
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 139
    iput-object p3, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 141
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->init()V

    return-void
.end method

.method private applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1118
    new-instance v0, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    .line 1119
    sget-object v1, Lorg/telegram/messenger/time/FastDatePrinter;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1122
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1123
    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    move-object v2, p0

    :cond_0
    return-object v2
.end method

.method private init()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->parsePattern()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    iput-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    .line 152
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 153
    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/telegram/messenger/time/FastDatePrinter$Rule;->estimateLength()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 156
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    return-void
.end method

.method private newCalendar()Ljava/util/GregorianCalendar;
    .locals 3

    .line 434
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 587
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 588
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->init()V

    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4

    .line 490
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mRules:[Lorg/telegram/messenger/time/FastDatePrinter$Rule;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 491
    invoke-interface {v3, p2, p1}, Lorg/telegram/messenger/time/FastDatePrinter$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 546
    instance-of v0, p1, Lorg/telegram/messenger/time/FastDatePrinter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 549
    :cond_0
    check-cast p1, Lorg/telegram/messenger/time/FastDatePrinter;

    .line 550
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p1, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    iget-object p1, p1, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    .line 552
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public format(J)Ljava/lang/String;
    .locals 1

    .line 412
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 413
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 414
    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 442
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 443
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 444
    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRulesToString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 460
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 395
    instance-of p3, p1, Ljava/util/Date;

    if-eqz p3, :cond_0

    .line 396
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 397
    :cond_0
    instance-of p3, p1, Ljava/util/Calendar;

    if-eqz p3, :cond_1

    .line 398
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 399
    :cond_1
    instance-of p3, p1, Ljava/lang/Long;

    if-eqz p3, :cond_2

    .line 400
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1

    .line 402
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown class: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    const-string p1, "<null>"

    goto :goto_0

    .line 403
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 0

    .line 478
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 1

    .line 468
    invoke-direct {p0}, Lorg/telegram/messenger/time/FastDatePrinter;->newCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 469
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 470
    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/time/FastDatePrinter;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .locals 1

    .line 532
    iget v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 562
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method protected parsePattern()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/messenger/time/FastDatePrinter$Rule;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 170
    new-instance v1, Ljava/text/DateFormatSymbols;

    iget-object v2, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v6

    .line 178
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-object v8, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v8, :cond_f

    aput v12, v10, v11

    .line 186
    iget-object v12, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v12, v10}, Lorg/telegram/messenger/time/FastDatePrinter;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v12

    .line 187
    aget v13, v10, v11

    .line 189
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    goto/16 :goto_6

    .line 195
    :cond_0
    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x79

    const/4 v11, 0x4

    if-eq v15, v9, :cond_c

    const/16 v9, 0x7a

    if-eq v15, v9, :cond_a

    const/4 v9, 0x3

    sparse-switch v15, :sswitch_data_0

    packed-switch v15, :pswitch_data_0

    packed-switch v15, :pswitch_data_1

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    if-lt v14, v11, :cond_1

    .line 221
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/4 v12, 0x2

    invoke-direct {v9, v12, v4}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const/4 v12, 0x2

    if-ne v14, v9, :cond_2

    .line 223
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    invoke-direct {v9, v12, v5}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-ne v14, v12, :cond_3

    .line 225
    sget-object v9, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;

    goto :goto_3

    .line 227
    :cond_3
    sget-object v9, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;

    goto :goto_3

    :pswitch_1
    const/4 v12, 0x2

    if-lt v14, v11, :cond_4

    .line 210
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    invoke-direct {v9, v12, v4}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-ne v14, v9, :cond_5

    .line 212
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    invoke-direct {v9, v12, v5}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-ne v14, v12, :cond_6

    .line 214
    sget-object v9, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitMonthField;

    goto :goto_3

    .line 216
    :cond_6
    sget-object v9, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedMonthField;

    goto :goto_3

    :pswitch_2
    const/16 v9, 0xa

    .line 270
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_3

    :pswitch_3
    const/16 v9, 0xb

    .line 237
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_3

    .line 199
    :pswitch_4
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v3}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    move v15, v11

    :goto_1
    move-object v11, v9

    const/4 v9, 0x1

    goto/16 :goto_5

    :pswitch_5
    const/16 v9, 0x8

    .line 255
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_3

    .line 249
    :pswitch_6
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/4 v12, 0x7

    if-ge v14, v11, :cond_7

    move-object v11, v7

    goto :goto_2

    :cond_7
    move-object v11, v6

    :goto_2
    invoke-direct {v9, v12, v11}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_3

    :pswitch_7
    const/4 v9, 0x6

    .line 252
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    :goto_3
    move-object v11, v9

    const/4 v9, 0x1

    :goto_4
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 258
    :sswitch_0
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_3

    :sswitch_1
    const/16 v9, 0xd

    .line 243
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_3

    :sswitch_2
    const/16 v9, 0xc

    .line 240
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_3

    .line 267
    :sswitch_3
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;

    const/16 v11, 0xb

    invoke-virtual {v0, v11, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/telegram/messenger/time/FastDatePrinter$TwentyFourHourField;-><init>(Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;)V

    goto :goto_3

    .line 234
    :sswitch_4
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TwelveHourField;

    const/16 v11, 0xa

    invoke-virtual {v0, v11, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/telegram/messenger/time/FastDatePrinter$TwelveHourField;-><init>(Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;)V

    goto :goto_3

    :sswitch_5
    const/4 v9, 0x5

    .line 231
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v9

    goto :goto_3

    .line 264
    :sswitch_6
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TextField;

    const/16 v11, 0x9

    invoke-direct {v9, v11, v1}, Lorg/telegram/messenger/time/FastDatePrinter$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_3

    :sswitch_7
    const/4 v9, 0x1

    if-ne v14, v9, :cond_8

    .line 281
    sget-object v11, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;

    goto :goto_4

    .line 283
    :cond_8
    sget-object v11, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNumberRule;

    goto :goto_4

    :sswitch_8
    const/4 v9, 0x1

    .line 261
    invoke-virtual {v0, v11, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto :goto_4

    :sswitch_9
    const/4 v9, 0x1

    const/16 v11, 0xe

    .line 246
    invoke-virtual {v0, v11, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v11

    goto :goto_4

    :sswitch_a
    const/4 v9, 0x1

    .line 287
    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 288
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v9, :cond_9

    .line 289
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$CharacterLiteral;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-direct {v9, v11}, Lorg/telegram/messenger/time/FastDatePrinter$CharacterLiteral;-><init>(C)V

    goto :goto_3

    .line 291
    :cond_9
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$StringLiteral;

    invoke-direct {v9, v11}, Lorg/telegram/messenger/time/FastDatePrinter$StringLiteral;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    if-lt v14, v11, :cond_b

    .line 274
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v11, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v14, 0x1

    invoke-direct {v9, v11, v12, v14}, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    move-object v11, v9

    move v9, v14

    goto :goto_4

    .line 276
    :cond_b
    new-instance v9, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;

    iget-object v11, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    iget-object v12, v0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    const/4 v15, 0x0

    invoke-direct {v9, v11, v12, v15}, Lorg/telegram/messenger/time/FastDatePrinter$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_1

    :cond_c
    const/4 v9, 0x2

    const/4 v15, 0x0

    if-ne v14, v9, :cond_d

    .line 203
    sget-object v9, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitYearField;->INSTANCE:Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitYearField;

    goto/16 :goto_1

    :cond_d
    if-ge v14, v11, :cond_e

    move v14, v11

    :cond_e
    const/4 v9, 0x1

    .line 205
    invoke-virtual {v0, v9, v14}, Lorg/telegram/messenger/time/FastDatePrinter;->selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;

    move-result-object v11

    .line 298
    :goto_5
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v13, 0x1

    move v11, v15

    goto/16 :goto_0

    :cond_f
    :goto_6
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_a
        0x53 -> :sswitch_9
        0x57 -> :sswitch_8
        0x5a -> :sswitch_7
        0x61 -> :sswitch_6
        0x64 -> :sswitch_5
        0x68 -> :sswitch_4
        0x6b -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 13

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 314
    aget v2, p2, v1

    .line 315
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 317
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    const/16 v6, 0x41

    if-lt v4, v6, :cond_0

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v7, 0x7a

    const/16 v8, 0x61

    if-lt v4, v8, :cond_2

    if-gt v4, v7, :cond_2

    .line 321
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_8

    .line 324
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_8

    .line 326
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_0

    :cond_2
    const/16 v4, 0x27

    .line 334
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v1

    :goto_1
    if-ge v2, v3, :cond_8

    .line 339
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v4, :cond_4

    add-int/lit8 v11, v2, 0x1

    if-ge v11, v3, :cond_3

    .line 342
    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v4, :cond_3

    .line 345
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v11

    goto :goto_2

    :cond_3
    xor-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    if-nez v9, :cond_7

    if-lt v10, v6, :cond_5

    if-le v10, v5, :cond_6

    :cond_5
    if-lt v10, v8, :cond_7

    if-gt v10, v7, :cond_7

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 354
    :cond_7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 359
    :cond_8
    :goto_3
    aput v2, p2, v1

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected selectNumberRule(II)Lorg/telegram/messenger/time/FastDatePrinter$NumberRule;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 377
    new-instance v0, Lorg/telegram/messenger/time/FastDatePrinter$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/time/FastDatePrinter$PaddedNumberField;-><init>(II)V

    return-object v0

    .line 375
    :cond_0
    new-instance p2, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/time/FastDatePrinter$TwoDigitNumberField;-><init>(I)V

    return-object p2

    .line 373
    :cond_1
    new-instance p2, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedNumberField;

    invoke-direct {p2, p1}, Lorg/telegram/messenger/time/FastDatePrinter$UnpaddedNumberField;-><init>(I)V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDatePrinter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDatePrinter;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
