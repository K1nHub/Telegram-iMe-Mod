.class public final Lcom/google/firestore/v1/ArrayValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ArrayValue.java"

# interfaces
.implements Lcom/google/firestore/v1/ArrayValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ArrayValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ArrayValue;",
        "Lcom/google/firestore/v1/ArrayValue$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ArrayValueOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ArrayValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private values_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 464
    new-instance v0, Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {v0}, Lcom/google/firestore/v1/ArrayValue;-><init>()V

    .line 467
    sput-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    .line 468
    const-class v1, Lcom/google/firestore/v1/ArrayValue;

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

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ArrayValue;Lcom/google/firestore/v1/Value;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ArrayValue;->addValues(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ArrayValue;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ArrayValue;->addAllValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ArrayValue;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ArrayValue;->removeValues(I)V

    return-void
.end method

.method private addAllValues(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 134
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addValues(Lcom/google/firestore/v1/Value;)V
    .locals 1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 109
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 80
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 473
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;
    .locals 1

    .line 234
    sget-object v0, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ArrayValue$Builder;

    return-object v0
.end method

.method private removeValues(I)V
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/google/firestore/v1/ArrayValue;->ensureValuesIsMutable()V

    .line 156
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 415
    sget-object p2, Lcom/google/firestore/v1/ArrayValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 457
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 451
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 436
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 438
    const-class p2, Lcom/google/firestore/v1/ArrayValue;

    monitor-enter p2

    .line 439
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 441
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 444
    sput-object p1, Lcom/google/firestore/v1/ArrayValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 446
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

    .line 433
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "values_"

    aput-object v0, p1, p3

    .line 423
    const-class p3, Lcom/google/firestore/v1/Value;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 429
    sget-object p3, Lcom/google/firestore/v1/ArrayValue;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ArrayValue;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 420
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/ArrayValue$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/ArrayValue$Builder;-><init>(Lcom/google/firestore/v1/ArrayValue$1;)V

    return-object p1

    .line 417
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/ArrayValue;

    invoke-direct {p1}, Lcom/google/firestore/v1/ArrayValue;-><init>()V

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

.method public getValues(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1
.end method

.method public getValuesCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/firestore/v1/ArrayValue;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
