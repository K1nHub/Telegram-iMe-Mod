.class public final Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentTransform.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldTransform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;,
        Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;,
        Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final APPEND_MISSING_ELEMENTS_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x1

.field public static final INCREMENT_FIELD_NUMBER:I = 0x3

.field public static final MAXIMUM_FIELD_NUMBER:I = 0x4

.field public static final MINIMUM_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_ALL_FROM_ARRAY_FIELD_NUMBER:I = 0x7

.field public static final SET_TO_SERVER_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private fieldPath_:Ljava/lang/String;

.field private transformTypeCase_:I

.field private transformType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2079
    new-instance v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;-><init>()V

    .line 2082
    sput-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2083
    const-class v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 264
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    const-string v0, ""

    .line 265
    iput-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    .locals 1

    .line 259
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->setAppendMissingElements(Lcom/google/firestore/v1/ArrayValue;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Ljava/lang/String;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->setFieldPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->setRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->setSetToServerValue(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->setIncrement(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1216
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    return-object v0
.end method

.method private setAppendMissingElements(Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 982
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 983
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 984
    iput p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    return-void
.end method

.method private setFieldPath(Ljava/lang/String;)V
    .locals 0

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method private setIncrement(Lcom/google/firestore/v1/Value;)V
    .locals 0

    .line 629
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 631
    iput p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    return-void
.end method

.method private setRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue;)V
    .locals 0

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 1093
    iput p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    return-void
.end method

.method private setSetToServerValue(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)V
    .locals 0

    .line 554
    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 555
    iput p1, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2023
    const-class p2, Lcom/google/firestore/v1/ArrayValue;

    const-class p3, Lcom/google/firestore/v1/Value;

    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2072
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v1

    .line 2066
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2051
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2053
    const-class p2, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    monitor-enter p2

    .line 2054
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2056
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2059
    sput-object p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->PARSER:Lcom/google/protobuf/Parser;

    .line 2061
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

    .line 2048
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "transformType_"

    aput-object v2, p1, v1

    const-string v1, "transformTypeCase_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "fieldPath_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    aput-object p3, p1, v0

    const/4 v0, 0x4

    aput-object p3, p1, v0

    const/4 v0, 0x5

    aput-object p3, p1, v0

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002?\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000"

    .line 2044
    sget-object p3, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2028
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    invoke-direct {p1, v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;-><init>(Lcom/google/firestore/v1/DocumentTransform$1;)V

    return-object p1

    .line 2025
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-direct {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;-><init>()V

    return-object p1

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

.method public getAppendMissingElements()Lcom/google/firestore/v1/ArrayValue;
    .locals 2

    .line 960
    iget v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 961
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    return-object v0

    .line 963
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->fieldPath_:Ljava/lang/String;

    return-object v0
.end method

.method public getIncrement()Lcom/google/firestore/v1/Value;
    .locals 2

    .line 608
    iget v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0

    .line 611
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Value;->getDefaultInstance()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveAllFromArray()Lcom/google/firestore/v1/ArrayValue;
    .locals 2

    .line 1071
    iget v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/ArrayValue;

    return-object v0

    .line 1074
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;
    .locals 2

    .line 527
    iget v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;->forNumber(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;->UNRECOGNIZED:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    :cond_0
    return-object v0

    .line 531
    :cond_1
    sget-object v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;->SERVER_VALUE_UNSPECIFIED:Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    return-object v0
.end method

.method public getTransformTypeCase()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
    .locals 1

    .line 420
    iget v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->transformTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;->forNumber(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    move-result-object v0

    return-object v0
.end method
