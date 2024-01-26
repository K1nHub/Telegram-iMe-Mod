.class public final Lwallet/core/jni/proto/Oasis$TransferMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Oasis.java"

# interfaces
.implements Lwallet/core/jni/proto/Oasis$TransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Oasis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Oasis$TransferMessage;",
        "Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Oasis$TransferMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final CONTEXT_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

.field public static final GAS_AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x2

.field public static final NONCE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Oasis$TransferMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Ljava/lang/String;

.field private context_:Ljava/lang/String;

.field private gasAmount_:Ljava/lang/String;

.field private gasPrice_:J

.field private nonce_:J

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 993
    new-instance v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;-><init>()V

    .line 996
    sput-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    .line 997
    const-class v1, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 128
    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->to_:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasAmount_:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->amount_:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->context_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Oasis$TransferMessage;
    .locals 1

    .line 122
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->clearAmount()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Oasis$TransferMessage;J)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setNonce(J)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->clearNonce()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setContext(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->clearContext()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setContextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->clearTo()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Oasis$TransferMessage;J)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setGasPrice(J)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setGasAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->clearGasAmount()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Oasis$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setGasAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Oasis$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 355
    invoke-static {}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->amount_:Ljava/lang/String;

    return-void
.end method

.method private clearContext()V
    .locals 1

    .line 460
    invoke-static {}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->context_:Ljava/lang/String;

    return-void
.end method

.method private clearGasAmount()V
    .locals 1

    .line 288
    invoke-static {}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getGasAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasAmount_:Ljava/lang/String;

    return-void
.end method

.method private clearGasPrice()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 235
    iput-wide v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasPrice_:J

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 407
    iput-wide v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->nonce_:J

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 183
    invoke-static {}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Oasis$TransferMessage;
    .locals 1

    .line 1002
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1

    .line 552
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Oasis$TransferMessage;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 555
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 529
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 535
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 493
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 500
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 540
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 547
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 517
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 524
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 480
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 487
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 505
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$TransferMessage;
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

    .line 512
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Oasis$TransferMessage;",
            ">;"
        }
    .end annotation

    .line 1008
    sget-object v0, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 342
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 367
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 368
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setContext(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 449
    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->context_:Ljava/lang/String;

    return-void
.end method

.method private setContextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 472
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 473
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->context_:Ljava/lang/String;

    return-void
.end method

.method private setGasAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasAmount_:Ljava/lang/String;

    return-void
.end method

.method private setGasAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 300
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 301
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasAmount_:Ljava/lang/String;

    return-void
.end method

.method private setGasPrice(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 224
    iput-wide p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasPrice_:J

    return-void
.end method

.method private setNonce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 396
    iput-wide p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->nonce_:J

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 170
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 195
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 196
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->to_:Ljava/lang/String;

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

    .line 939
    sget-object p2, Lwallet/core/jni/proto/Oasis$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 986
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 980
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 965
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Oasis$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 967
    const-class p2, Lwallet/core/jni/proto/Oasis$TransferMessage;

    monitor-enter p2

    .line 968
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Oasis$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 970
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 973
    sput-object p1, Lwallet/core/jni/proto/Oasis$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 975
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

    .line 962
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "to_"

    aput-object v0, p1, p3

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "gasAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "context_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0003\u0003\u0208\u0004\u0208\u0005\u0003\u0006\u0208"

    .line 958
    sget-object p3, Lwallet/core/jni/proto/Oasis$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 944
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;-><init>(Lwallet/core/jni/proto/Oasis$1;)V

    return-object p1

    .line 941
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Oasis$TransferMessage;-><init>()V

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

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 317
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 330
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .line 422
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->context_:Ljava/lang/String;

    return-object v0
.end method

.method public getContextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 435
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->context_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasAmount()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getGasAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 263
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasAmount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasPrice()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->gasPrice_:J

    return-wide v0
.end method

.method public getNonce()J
    .locals 2

    .line 384
    iget-wide v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->nonce_:J

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 158
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$TransferMessage;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
