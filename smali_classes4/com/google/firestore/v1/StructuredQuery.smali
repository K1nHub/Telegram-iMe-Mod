.class public final Lcom/google/firestore/v1/StructuredQuery;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Builder;,
        Lcom/google/firestore/v1/StructuredQuery$Projection;,
        Lcom/google/firestore/v1/StructuredQuery$FieldReference;,
        Lcom/google/firestore/v1/StructuredQuery$Order;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;,
        Lcom/google/firestore/v1/StructuredQuery$FieldFilter;,
        Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;,
        Lcom/google/firestore/v1/StructuredQuery$Filter;,
        Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;,
        Lcom/google/firestore/v1/StructuredQuery$Direction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery;",
        "Lcom/google/firestore/v1/StructuredQuery$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

.field public static final END_AT_FIELD_NUMBER:I = 0x8

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final LIMIT_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x6

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_FIELD_NUMBER:I = 0x1

.field public static final START_AT_FIELD_NUMBER:I = 0x7

.field public static final WHERE_FIELD_NUMBER:I = 0x3


# instance fields
.field private endAt_:Lcom/google/firestore/v1/Cursor;

.field private from_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation
.end field

.field private limit_:Lcom/google/protobuf/Int32Value;

.field private offset_:I

.field private orderBy_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation
.end field

.field private select_:Lcom/google/firestore/v1/StructuredQuery$Projection;

.field private startAt_:Lcom/google/firestore/v1/Cursor;

.field private where_:Lcom/google/firestore/v1/StructuredQuery$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7022
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery;-><init>()V

    .line 7025
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    .line 7026
    const-class v1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$7100()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setStartAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setEndAt(Lcom/google/firestore/v1/Cursor;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery;->setLimit(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method private addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V
    .locals 1

    .line 5338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5339
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureFromIsMutable()V

    .line 5340
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)V
    .locals 1

    .line 5633
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5634
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery;->ensureOrderByIsMutable()V

    .line 5635
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ensureFromIsMutable()V
    .locals 2

    .line 5310
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5311
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5313
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOrderByIsMutable()V
    .locals 2

    .line 5579
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5580
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5582
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 7031
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6064
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Builder;

    return-object v0
.end method

.method private setEndAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 0

    .line 5835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5836
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    return-void
.end method

.method private setLimit(Lcom/google/protobuf/Int32Value;)V
    .locals 0

    .line 5951
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5952
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    return-void
.end method

.method private setStartAt(Lcom/google/firestore/v1/Cursor;)V
    .locals 0

    .line 5769
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5770
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    return-void
.end method

.method private setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)V
    .locals 0

    .line 5422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5423
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6964
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7015
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7009
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6994
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6996
    const-class p2, Lcom/google/firestore/v1/StructuredQuery;

    monitor-enter p2

    .line 6997
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6999
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7002
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery;->PARSER:Lcom/google/protobuf/Parser;

    .line 7004
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

    .line 6991
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "select_"

    aput-object v0, p1, p3

    const-string p3, "from_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 6972
    const-class p3, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "where_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "orderBy_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lcom/google/firestore/v1/StructuredQuery$Order;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "limit_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "offset_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "startAt_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "endAt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0002\u0000\u0001\t\u0002\u001b\u0003\t\u0004\u001b\u0005\t\u0006\u0004\u0007\t\u0008\t"

    .line 6987
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6969
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/StructuredQuery$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 6966
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery;-><init>()V

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

.method public getEndAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 5825
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1

    .line 5296
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    return-object p1
.end method

.method public getFromCount()I
    .locals 1

    .line 5285
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->from_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLimit()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 5939
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1

    .line 5552
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p1
.end method

.method public getOrderByCount()I
    .locals 1

    .line 5528
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->orderBy_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStartAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 5759
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Cursor;->getDefaultInstance()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 5412
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$Filter;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasEndAt()Z
    .locals 1

    .line 5814
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->endAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 5926
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->limit_:Lcom/google/protobuf/Int32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStartAt()Z
    .locals 1

    .line 5748
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->startAt_:Lcom/google/firestore/v1/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .line 5401
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery;->where_:Lcom/google/firestore/v1/StructuredQuery$Filter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
