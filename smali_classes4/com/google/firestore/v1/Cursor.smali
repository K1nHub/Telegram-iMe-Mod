.class public final Lcom/google/firestore/v1/Cursor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cursor.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Cursor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Cursor;",
        "Lcom/google/firestore/v1/Cursor$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final BEFORE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES_FIELD_NUMBER:I = 0x1


# instance fields
.field private before_:Z

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

    .line 596
    new-instance v0, Lcom/google/firestore/v1/Cursor;

    invoke-direct {v0}, Lcom/google/firestore/v1/Cursor;-><init>()V

    .line 599
    sput-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    .line 600
    const-class v1, Lcom/google/firestore/v1/Cursor;

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

    iput-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Cursor;Ljava/lang/Iterable;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Cursor;->addAllValues(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Cursor;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Cursor;->setBefore(Z)V

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

    .line 151
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor;->ensureValuesIsMutable()V

    .line 152
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private ensureValuesIsMutable()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 90
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 605
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1

    .line 297
    sget-object v0, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Cursor$Builder;

    return-object v0
.end method

.method private setBefore(Z)V
    .locals 0

    .line 207
    iput-boolean p1, p0, Lcom/google/firestore/v1/Cursor;->before_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 545
    sget-object p2, Lcom/google/firestore/v1/Cursor$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 589
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 583
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 568
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Cursor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 570
    const-class p2, Lcom/google/firestore/v1/Cursor;

    monitor-enter p2

    .line 571
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Cursor;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 573
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 576
    sput-object p1, Lcom/google/firestore/v1/Cursor;->PARSER:Lcom/google/protobuf/Parser;

    .line 578
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

    .line 565
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "values_"

    aput-object v0, p1, p3

    .line 553
    const-class p3, Lcom/google/firestore/v1/Value;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "before_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0007"

    .line 561
    sget-object p3, Lcom/google/firestore/v1/Cursor;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Cursor;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 550
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Cursor$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/Cursor$Builder;-><init>(Lcom/google/firestore/v1/Cursor$1;)V

    return-object p1

    .line 547
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Cursor;

    invoke-direct {p1}, Lcom/google/firestore/v1/Cursor;-><init>()V

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

.method public getBefore()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/google/firestore/v1/Cursor;->before_:Z

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

    .line 34
    iget-object v0, p0, Lcom/google/firestore/v1/Cursor;->values_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
