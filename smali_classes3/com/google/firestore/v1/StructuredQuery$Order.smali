.class public final Lcom/google/firestore/v1/StructuredQuery$Order;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$Order;",
        "Lcom/google/firestore/v1/StructuredQuery$Order$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

.field public static final DIRECTION_FIELD_NUMBER:I = 0x2

.field public static final FIELD_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private direction_:I

.field private field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4308
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$Order;-><init>()V

    .line 4311
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 4312
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3886
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5000()Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1

    .line 3881
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3881
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/firestore/v1/StructuredQuery$Order;Lcom/google/firestore/v1/StructuredQuery$Direction;)V
    .locals 0

    .line 3881
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$Order;->setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$Order$Builder;
    .locals 1

    .line 4091
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    return-object v0
.end method

.method private setDirection(Lcom/google/firestore/v1/StructuredQuery$Direction;)V
    .locals 0

    .line 4001
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Direction;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    return-void
.end method

.method private setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3921
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4259
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4295
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4280
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4282
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$Order;

    monitor-enter p2

    .line 4283
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4285
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4288
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->PARSER:Lcom/google/protobuf/Parser;

    .line 4290
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

    .line 4277
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "field_"

    aput-object v0, p1, p3

    const-string p3, "direction_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000c"

    .line 4273
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$Order;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4264
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 4261
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$Order;-><init>()V

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

.method public getDirection()Lcom/google/firestore/v1/StructuredQuery$Direction;
    .locals 1

    .line 3978
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->direction_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$Direction;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$Direction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3979
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$Direction;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$Direction;

    :cond_0
    return-object v0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 3910
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Order;->field_:Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    :cond_0
    return-object v0
.end method
