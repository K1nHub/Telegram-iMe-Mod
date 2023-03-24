.class public final Lwallet/core/jni/proto/FIO$ChainParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$ChainParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChainParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$ChainParams;",
        "Lwallet/core/jni/proto/FIO$ChainParams$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$ChainParamsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

.field public static final HEAD_BLOCK_NUMBER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$ChainParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_BLOCK_PREFIX_FIELD_NUMBER:I = 0x3


# instance fields
.field private chainId_:Lcom/google/protobuf/ByteString;

.field private headBlockNumber_:J

.field private refBlockPrefix_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6297
    new-instance v0, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$ChainParams;-><init>()V

    .line 6300
    sput-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    .line 6301
    const-class v1, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5902
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5903
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$ChainParams;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10400()Lwallet/core/jni/proto/FIO$ChainParams;
    .locals 1

    .line 5897
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    return-object v0
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/FIO$ChainParams;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5897
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$ChainParams;->setChainId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/FIO$ChainParams;)V
    .locals 0

    .line 5897
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$ChainParams;->clearChainId()V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/FIO$ChainParams;J)V
    .locals 0

    .line 5897
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$ChainParams;->setHeadBlockNumber(J)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/FIO$ChainParams;)V
    .locals 0

    .line 5897
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$ChainParams;->clearHeadBlockNumber()V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/FIO$ChainParams;J)V
    .locals 0

    .line 5897
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$ChainParams;->setRefBlockPrefix(J)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/FIO$ChainParams;)V
    .locals 0

    .line 5897
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$ChainParams;->clearRefBlockPrefix()V

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 5941
    invoke-static {}, Lwallet/core/jni/proto/FIO$ChainParams;->getDefaultInstance()Lwallet/core/jni/proto/FIO$ChainParams;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$ChainParams;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearHeadBlockNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5979
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$ChainParams;->headBlockNumber_:J

    return-void
.end method

.method private clearRefBlockPrefix()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6017
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$ChainParams;->refBlockPrefix_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$ChainParams;
    .locals 1

    .line 6306
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1

    .line 6095
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$ChainParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$ChainParams;)Lwallet/core/jni/proto/FIO$ChainParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6098
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6072
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6078
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6036
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6043
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6083
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6090
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6060
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6067
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6023
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6030
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6048
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$ChainParams;
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

    .line 6055
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$ChainParams;",
            ">;"
        }
    .end annotation

    .line 6312
    sget-object v0, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChainId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5930
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$ChainParams;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setHeadBlockNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5968
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$ChainParams;->headBlockNumber_:J

    return-void
.end method

.method private setRefBlockPrefix(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6006
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$ChainParams;->refBlockPrefix_:J

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

    .line 6246
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6290
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6284
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6269
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$ChainParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6271
    const-class p2, Lwallet/core/jni/proto/FIO$ChainParams;

    monitor-enter p2

    .line 6272
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$ChainParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6274
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6277
    sput-object p1, Lwallet/core/jni/proto/FIO$ChainParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 6279
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

    .line 6266
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "chainId_"

    aput-object v0, p1, p3

    const-string p3, "headBlockNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "refBlockPrefix_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0003\u0003\u0003"

    .line 6262
    sget-object p3, Lwallet/core/jni/proto/FIO$ChainParams;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6251
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$ChainParams$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$ChainParams$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 6248
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$ChainParams;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$ChainParams;-><init>()V

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

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5917
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$ChainParams;->chainId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHeadBlockNumber()J
    .locals 2

    .line 5956
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$ChainParams;->headBlockNumber_:J

    return-wide v0
.end method

.method public getRefBlockPrefix()J
    .locals 2

    .line 5994
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$ChainParams;->refBlockPrefix_:J

    return-wide v0
.end method
