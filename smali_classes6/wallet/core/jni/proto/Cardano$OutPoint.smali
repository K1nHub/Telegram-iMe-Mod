.class public final Lwallet/core/jni/proto/Cardano$OutPoint;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$OutPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$OutPoint;",
        "Lwallet/core/jni/proto/Cardano$OutPoint$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$OutPointOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

.field public static final OUTPUT_INDEX_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$OutPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_HASH_FIELD_NUMBER:I = 0x1


# instance fields
.field private outputIndex_:J

.field private txHash_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 363
    new-instance v0, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$OutPoint;-><init>()V

    .line 366
    sput-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    .line 367
    const-class v1, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 48
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Cardano$OutPoint;
    .locals 1

    .line 42
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Cardano$OutPoint;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$OutPoint;->setTxHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Cardano$OutPoint;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$OutPoint;->clearTxHash()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Cardano$OutPoint;J)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$OutPoint;->setOutputIndex(J)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Cardano$OutPoint;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$OutPoint;->clearOutputIndex()V

    return-void
.end method

.method private clearOutputIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$OutPoint;->outputIndex_:J

    return-void
.end method

.method private clearTxHash()V
    .locals 1

    .line 86
    invoke-static {}, Lwallet/core/jni/proto/Cardano$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$OutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$OutPoint;->getTxHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$OutPoint;
    .locals 1

    .line 372
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
    .locals 1

    .line 202
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$OutPoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$OutPoint;)Lwallet/core/jni/proto/Cardano$OutPoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 205
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 179
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 185
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 143
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 150
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 190
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 197
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 167
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 174
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 130
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 137
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 155
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$OutPoint;
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

    .line 162
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$OutPoint;",
            ">;"
        }
    .end annotation

    .line 378
    sget-object v0, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setOutputIndex(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 113
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$OutPoint;->outputIndex_:J

    return-void
.end method

.method private setTxHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

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

    .line 313
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 356
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 350
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 335
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 337
    const-class p2, Lwallet/core/jni/proto/Cardano$OutPoint;

    monitor-enter p2

    .line 338
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 340
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 343
    sput-object p1, Lwallet/core/jni/proto/Cardano$OutPoint;->PARSER:Lcom/google/protobuf/Parser;

    .line 345
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

    .line 332
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "txHash_"

    aput-object v0, p1, p3

    const-string p3, "outputIndex_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0003"

    .line 328
    sget-object p3, Lwallet/core/jni/proto/Cardano$OutPoint;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 318
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$OutPoint$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$OutPoint$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 315
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$OutPoint;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$OutPoint;-><init>()V

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

.method public getOutputIndex()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$OutPoint;->outputIndex_:J

    return-wide v0
.end method

.method public getTxHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 62
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$OutPoint;->txHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
