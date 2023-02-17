.class public final Lcom/google/firestore/v1/Value;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Value.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Value$Builder;,
        Lcom/google/firestore/v1/Value$ValueTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Value;",
        "Lcom/google/firestore/v1/Value$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ARRAY_VALUE_FIELD_NUMBER:I = 0x9

.field public static final BOOLEAN_VALUE_FIELD_NUMBER:I = 0x1

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x12

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x3

.field public static final GEO_POINT_VALUE_FIELD_NUMBER:I = 0x8

.field public static final INTEGER_VALUE_FIELD_NUMBER:I = 0x2

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x11

.field public static final TIMESTAMP_VALUE_FIELD_NUMBER:I = 0xa


# instance fields
.field private valueTypeCase_:I

.field private valueType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1673
    new-instance v0, Lcom/google/firestore/v1/Value;

    invoke-direct {v0}, Lcom/google/firestore/v1/Value;-><init>()V

    .line 1676
    sput-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    .line 1677
    const-class v1, Lcom/google/firestore/v1/Value;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setTimestampValue(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/Value;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setArrayValue(Lcom/google/firestore/v1/ArrayValue;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/MapValue;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setMapValue(Lcom/google/firestore/v1/MapValue;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Value;Lcom/google/protobuf/NullValue;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Value;->setNullValue(Lcom/google/protobuf/NullValue;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Value;J)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Value;->setIntegerValue(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Value;D)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Value;->setDoubleValue(D)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1682
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Value$Builder;
    .locals 1

    .line 873
    sget-object v0, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value$Builder;

    return-object v0
.end method

.method private setArrayValue(Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 688
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 689
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 690
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void
.end method

.method private setDoubleValue(D)V
    .locals 1

    const/4 v0, 0x3

    .line 260
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 261
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method private setIntegerValue(J)V
    .locals 1

    const/4 v0, 0x2

    .line 218
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 219
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method private setMapValue(Lcom/google/firestore/v1/MapValue;)V
    .locals 0

    .line 762
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 764
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void
.end method

.method private setNullValue(Lcom/google/protobuf/NullValue;)V
    .locals 0

    .line 134
    invoke-virtual {p1}, Lcom/google/protobuf/NullValue;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 135
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x11

    .line 411
    iput v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    .line 412
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method private setTimestampValue(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    iput-object p1, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 319
    iput p1, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1618
    sget-object p2, Lcom/google/firestore/v1/Value$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1666
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1660
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1645
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1647
    const-class p2, Lcom/google/firestore/v1/Value;

    monitor-enter p2

    .line 1648
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1650
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1653
    sput-object p1, Lcom/google/firestore/v1/Value;->PARSER:Lcom/google/protobuf/Parser;

    .line 1655
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 1642
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "valueType_"

    aput-object v0, p1, p3

    const-string p3, "valueTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1626
    const-class p3, Lcom/google/firestore/v1/MapValue;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/google/type/LatLng;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/google/firestore/v1/ArrayValue;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/protobuf/Timestamp;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000b\u0001\u0000\u0001\u0012\u000b\u0000\u0000\u0000\u0001:\u0000\u00025\u0000\u00033\u0000\u0005\u023b\u0000\u0006<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b?\u0000\u0011\u023b\u0000\u0012=\u0000"

    .line 1638
    sget-object p3, Lcom/google/firestore/v1/Value;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Value;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1623
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Value$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/Value$Builder;-><init>(Lcom/google/firestore/v1/Value$1;)V

    return-object p1

    .line 1620
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Value;

    invoke-direct {p1}, Lcom/google/firestore/v1/Value;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getArrayValue()Lcom/google/firestore/v1/ArrayValue;
    .locals 2

    .line 673
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    return-object v0

    .line 676
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 2

    .line 162
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesValue()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 461
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 464
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 246
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGeoPointValue()Lcom/google/type/LatLng;
    .locals 2

    .line 599
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/type/LatLng;

    return-object v0

    .line 602
    :cond_0
    invoke-static {}, Lcom/google/type/LatLng;->getDefaultInstance()Lcom/google/type/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue()J
    .locals 2

    .line 204
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMapValue()Lcom/google/firestore/v1/MapValue;
    .locals 2

    .line 749
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 750
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/MapValue;

    return-object v0

    .line 752
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->getDefaultInstance()Lcom/google/firestore/v1/MapValue;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 2

    .line 510
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 372
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTimestampValue()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 302
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/firestore/v1/Value;->valueType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 305
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/firestore/v1/Value;->valueTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Value$ValueTypeCase;->forNumber(I)Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v0

    return-object v0
.end method
