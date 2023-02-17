.class public final Lcom/google/firestore/v1/DocumentMask;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DocumentMask.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/DocumentMask$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/DocumentMask;",
        "Lcom/google/firestore/v1/DocumentMask$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

.field public static final FIELD_PATHS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/DocumentMask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 458
    new-instance v0, Lcom/google/firestore/v1/DocumentMask;

    invoke-direct {v0}, Lcom/google/firestore/v1/DocumentMask;-><init>()V

    .line 461
    sput-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    .line 462
    const-class v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/DocumentMask;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/DocumentMask;->addFieldPaths(Ljava/lang/String;)V

    return-void
.end method

.method private addFieldPaths(Ljava/lang/String;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentMask;->ensureFieldPathsIsMutable()V

    .line 119
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private ensureFieldPathsIsMutable()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 85
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 467
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/DocumentMask$Builder;
    .locals 1

    .line 238
    sget-object v0, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    return-object v0
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 410
    sget-object p2, Lcom/google/firestore/v1/DocumentMask$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 451
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 445
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 430
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/DocumentMask;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 432
    const-class p2, Lcom/google/firestore/v1/DocumentMask;

    monitor-enter p2

    .line 433
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/DocumentMask;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 435
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 438
    sput-object p1, Lcom/google/firestore/v1/DocumentMask;->PARSER:Lcom/google/protobuf/Parser;

    .line 440
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

    .line 427
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "fieldPaths_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u021a"

    .line 423
    sget-object p3, Lcom/google/firestore/v1/DocumentMask;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/DocumentMask;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 415
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-direct {p1, p3}, Lcom/google/firestore/v1/DocumentMask$Builder;-><init>(Lcom/google/firestore/v1/DocumentMask$1;)V

    return-object p1

    .line 412
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/DocumentMask;

    invoke-direct {p1}, Lcom/google/firestore/v1/DocumentMask;-><init>()V

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

.method public getFieldPaths(I)Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFieldPathsCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentMask;->fieldPaths_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
