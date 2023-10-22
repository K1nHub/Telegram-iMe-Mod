.class public final Lwallet/core/jni/proto/Cosmos$Message$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$Transfer;",
        "Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$TransferOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_FIELD_NUMBER:I = 0x5

.field public static final SENDER_FIELD_NUMBER:I = 0x4

.field public static final SOURCE_CHANNEL_FIELD_NUMBER:I = 0x2

.field public static final SOURCE_PORT_FIELD_NUMBER:I = 0x1

.field public static final TIMEOUT_HEIGHT_FIELD_NUMBER:I = 0x6

.field public static final TIMEOUT_TIMESTAMP_FIELD_NUMBER:I = 0x7

.field public static final TOKEN_FIELD_NUMBER:I = 0x3


# instance fields
.field private receiver_:Ljava/lang/String;

.field private sender_:Ljava/lang/String;

.field private sourceChannel_:Ljava/lang/String;

.field private sourcePort_:Ljava/lang/String;

.field private timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

.field private timeoutTimestamp_:J

.field private token_:Lwallet/core/jni/proto/Cosmos$Amount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4049
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;-><init>()V

    .line 4052
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    .line 4053
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3099
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3100
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourcePort_:Ljava/lang/String;

    .line 3101
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourceChannel_:Ljava/lang/String;

    .line 3102
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sender_:Ljava/lang/String;

    .line 3103
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->receiver_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4100()Lwallet/core/jni/proto/Cosmos$Message$Transfer;
    .locals 1

    .line 3094
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object v0
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setSourcePort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->clearSourcePort()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setSourcePortBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setSourceChannel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->clearSourceChannel()V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setSourceChannelBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setToken(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->mergeToken(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->clearToken()V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setSender(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->clearSender()V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setSenderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setReceiver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->clearReceiver()V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setReceiverBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Height;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setTimeoutHeight(Lwallet/core/jni/proto/Cosmos$Height;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Cosmos$Message$Transfer;Lwallet/core/jni/proto/Cosmos$Height;)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->mergeTimeoutHeight(Lwallet/core/jni/proto/Cosmos$Height;)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->clearTimeoutHeight()V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Cosmos$Message$Transfer;J)V
    .locals 0

    .line 3094
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->setTimeoutTimestamp(J)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)V
    .locals 0

    .line 3094
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->clearTimeoutTimestamp()V

    return-void
.end method

.method private clearReceiver()V
    .locals 1

    .line 3366
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getReceiver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->receiver_:Ljava/lang/String;

    return-void
.end method

.method private clearSender()V
    .locals 1

    .line 3319
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sender_:Ljava/lang/String;

    return-void
.end method

.method private clearSourceChannel()V
    .locals 1

    .line 3222
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSourceChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourceChannel_:Ljava/lang/String;

    return-void
.end method

.method private clearSourcePort()V
    .locals 1

    .line 3155
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->getSourcePort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourcePort_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeoutHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 3446
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    return-void
.end method

.method private clearTimeoutTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3485
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutTimestamp_:J

    return-void
.end method

.method private clearToken()V
    .locals 1

    const/4 v0, 0x0

    .line 3281
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Transfer;
    .locals 1

    .line 4058
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object v0
.end method

.method private mergeTimeoutHeight(Lwallet/core/jni/proto/Cosmos$Height;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3428
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3429
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    if-eqz v0, :cond_0

    .line 3430
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Height;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Height;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3431
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    .line 3432
    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Height;->newBuilder(Lwallet/core/jni/proto/Cosmos$Height;)Lwallet/core/jni/proto/Cosmos$Height$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Height$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Height;

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    goto :goto_0

    .line 3434
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    :goto_0
    return-void
.end method

.method private mergeToken(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3269
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    .line 3270
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3271
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

    .line 3272
    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Amount;->newBuilder(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

    goto :goto_0

    .line 3274
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1

    .line 3563
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Transfer;)Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3566
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3540
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3546
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3504
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3511
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3551
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3558
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3528
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3535
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3491
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3498
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3516
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Transfer;
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

    .line 3523
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Transfer;",
            ">;"
        }
    .end annotation

    .line 4064
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReceiver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3359
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->receiver_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3374
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3375
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->receiver_:Ljava/lang/String;

    return-void
.end method

.method private setSender(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3312
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSenderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3327
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3328
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSourceChannel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3211
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourceChannel_:Ljava/lang/String;

    return-void
.end method

.method private setSourceChannelBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3234
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3235
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourceChannel_:Ljava/lang/String;

    return-void
.end method

.method private setSourcePort(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3144
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourcePort_:Ljava/lang/String;

    return-void
.end method

.method private setSourcePortBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3167
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3168
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourcePort_:Ljava/lang/String;

    return-void
.end method

.method private setTimeoutHeight(Lwallet/core/jni/proto/Cosmos$Height;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3415
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    return-void
.end method

.method private setTimeoutTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3474
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutTimestamp_:J

    return-void
.end method

.method private setToken(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3260
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

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

    .line 3994
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4042
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4036
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4021
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4023
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    monitor-enter p2

    .line 4024
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4026
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4029
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 4031
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

    .line 4018
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sourcePort_"

    aput-object v0, p1, p3

    const-string p3, "sourceChannel_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "token_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "sender_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "receiver_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "timeoutHeight_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "timeoutTimestamp_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\t\u0004\u0208\u0005\u0208\u0006\t\u0007\u0003"

    .line 4014
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3999
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$Transfer$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 3996
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$Transfer;-><init>()V

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

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 3340
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->receiver_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3349
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->receiver_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 3293
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sender_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3302
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sender_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSourceChannel()Ljava/lang/String;
    .locals 1

    .line 3184
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourceChannel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3197
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourceChannel_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSourcePort()Ljava/lang/String;
    .locals 1

    .line 3117
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourcePort_:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePortBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3130
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->sourcePort_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutHeight()Lwallet/core/jni/proto/Cosmos$Height;
    .locals 1

    .line 3403
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Height;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Height;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeoutTimestamp()J
    .locals 2

    .line 3462
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutTimestamp_:J

    return-wide v0
.end method

.method public getToken()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 3253
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTimeoutHeight()Z
    .locals 1

    .line 3391
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->timeoutHeight_:Lwallet/core/jni/proto/Cosmos$Height;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasToken()Z
    .locals 1

    .line 3246
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Transfer;->token_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
