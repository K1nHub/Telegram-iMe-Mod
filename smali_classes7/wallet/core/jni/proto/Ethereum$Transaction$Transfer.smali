.class public final Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$TransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final DATA_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private data_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 576
    new-instance v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;-><init>()V

    .line 579
    sput-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    .line 580
    const-class v1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 260
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->amount_:Lcom/google/protobuf/ByteString;

    .line 261
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1

    .line 254
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->clearData()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 299
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 338
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1

    .line 585
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;
    .locals 1

    .line 416
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 419
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 357
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 364
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 344
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 351
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 369
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 376
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;",
            ">;"
        }
    .end annotation

    .line 591
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 527
    sget-object p2, Lwallet/core/jni/proto/Ethereum$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 569
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 563
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 548
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 550
    const-class p2, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    monitor-enter p2

    .line 551
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 553
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 556
    sput-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 558
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

    .line 545
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const-string p3, "data_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n"

    .line 541
    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 532
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer$Builder;-><init>(Lwallet/core/jni/proto/Ethereum$1;)V

    return-object p1

    .line 529
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 275
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 314
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$Transfer;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
