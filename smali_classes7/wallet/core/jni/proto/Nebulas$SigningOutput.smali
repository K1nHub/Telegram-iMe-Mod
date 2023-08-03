.class public final Lwallet/core/jni/proto/Nebulas$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nebulas$SigningOutput;",
        "Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALGORITHM_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_FIELD_NUMBER:I = 0x3

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2


# instance fields
.field private algorithm_:I

.field private raw_:Ljava/lang/String;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1823
    new-instance v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;-><init>()V

    .line 1826
    sput-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    .line 1827
    const-class v1, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1369
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1370
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 1371
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->raw_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2500()Lwallet/core/jni/proto/Nebulas$SigningOutput;
    .locals 1

    .line 1364
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object v0
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Nebulas$SigningOutput;I)V
    .locals 0

    .line 1364
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->setAlgorithm(I)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Nebulas$SigningOutput;)V
    .locals 0

    .line 1364
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->clearAlgorithm()V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Nebulas$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1364
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Nebulas$SigningOutput;)V
    .locals 0

    .line 1364
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->clearSignature()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Nebulas$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 1364
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->setRaw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Nebulas$SigningOutput;)V
    .locals 0

    .line 1364
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->clearRaw()V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Nebulas$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1364
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->setRawBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAlgorithm()V
    .locals 1

    const/4 v0, 0x0

    .line 1408
    iput v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->algorithm_:I

    return-void
.end method

.method private clearRaw()V
    .locals 1

    .line 1500
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getRaw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->raw_:Ljava/lang/String;

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 1447
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nebulas$SigningOutput;
    .locals 1

    .line 1832
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1

    .line 1592
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nebulas$SigningOutput;)Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1595
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1569
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1575
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1533
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1540
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1580
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1587
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1557
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1564
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1520
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1527
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1545
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$SigningOutput;
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

    .line 1552
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 1838
    sget-object v0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlgorithm(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1397
    iput p1, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->algorithm_:I

    return-void
.end method

.method private setRaw(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1489
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->raw_:Ljava/lang/String;

    return-void
.end method

.method private setRawBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1512
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1513
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->raw_:Ljava/lang/String;

    return-void
.end method

.method private setSignature(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1434
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1436
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

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

    .line 1772
    sget-object p2, Lwallet/core/jni/proto/Nebulas$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1816
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1810
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1795
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nebulas$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1797
    const-class p2, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    monitor-enter p2

    .line 1798
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nebulas$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1800
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1803
    sput-object p1, Lwallet/core/jni/proto/Nebulas$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1805
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

    .line 1792
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "algorithm_"

    aput-object v0, p1, p3

    const-string p3, "signature_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "raw_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\u0208"

    .line 1788
    sget-object p3, Lwallet/core/jni/proto/Nebulas$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1777
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nebulas$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Nebulas$1;)V

    return-object p1

    .line 1774
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nebulas$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nebulas$SigningOutput;-><init>()V

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

.method public getAlgorithm()I
    .locals 1

    .line 1385
    iget v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->algorithm_:I

    return v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1462
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->raw_:Ljava/lang/String;

    return-object v0
.end method

.method public getRawBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1475
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->raw_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1423
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
