.class public final Lwallet/core/jni/proto/Hedera$TransferMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TransferMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Hedera$TransferMessage;",
        "Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TransferMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$TransferMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:J

.field private from_:Ljava/lang/String;

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1711
    new-instance v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;-><init>()V

    .line 1714
    sput-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    .line 1715
    const-class v1, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1201
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->from_:Ljava/lang/String;

    .line 1202
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1800()Lwallet/core/jni/proto/Hedera$TransferMessage;
    .locals 1

    .line 1195
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object v0
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Hedera$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->setFrom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Hedera$TransferMessage;)V
    .locals 0

    .line 1195
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->clearFrom()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Hedera$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->setFromBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Hedera$TransferMessage;Ljava/lang/String;)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Hedera$TransferMessage;)V
    .locals 0

    .line 1195
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->clearTo()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Hedera$TransferMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Hedera$TransferMessage;J)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Hedera$TransferMessage;->setAmount(J)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Hedera$TransferMessage;)V
    .locals 0

    .line 1195
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1373
    iput-wide v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->amount_:J

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 1254
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->from_:Ljava/lang/String;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 1321
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransferMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransferMessage;
    .locals 1

    .line 1720
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1

    .line 1451
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Hedera$TransferMessage;)Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1454
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1428
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1434
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1392
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1399
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1439
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1446
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1416
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1423
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1379
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1386
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1404
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransferMessage;
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

    .line 1411
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$TransferMessage;",
            ">;"
        }
    .end annotation

    .line 1726
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1362
    iput-wide p1, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->amount_:J

    return-void
.end method

.method private setFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->from_:Ljava/lang/String;

    return-void
.end method

.method private setFromBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1266
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1267
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->from_:Ljava/lang/String;

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

    .line 1308
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1310
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->to_:Ljava/lang/String;

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

    .line 1333
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1334
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->to_:Ljava/lang/String;

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

    .line 1660
    sget-object p2, Lwallet/core/jni/proto/Hedera$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1704
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1698
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1683
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1685
    const-class p2, Lwallet/core/jni/proto/Hedera$TransferMessage;

    monitor-enter p2

    .line 1686
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1688
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1691
    sput-object p1, Lwallet/core/jni/proto/Hedera$TransferMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1693
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

    .line 1680
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0010"

    .line 1676
    sget-object p3, Lwallet/core/jni/proto/Hedera$TransferMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1665
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;-><init>(Lwallet/core/jni/proto/Hedera$1;)V

    return-object p1

    .line 1662
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Hedera$TransferMessage;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 1350
    iget-wide v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->amount_:J

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 1216
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->from_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1229
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->from_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1283
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1296
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransferMessage;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
