.class public final Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TheOpenNetwork.java"

# interfaces
.implements Lwallet/core/jni/proto/TheOpenNetwork$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;,
        Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final TRANSFER_FIELD_NUMBER:I = 0x2


# instance fields
.field private actionOneofCase_:I

.field private actionOneof_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1680
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;-><init>()V

    .line 1683
    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    .line 1684
    const-class v1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1293
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1296
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    .line 1294
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1900()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
    .locals 1

    .line 1288
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object v0
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;)V
    .locals 0

    .line 1288
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->clearActionOneof()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;)V
    .locals 0

    .line 1288
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->setTransfer(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->mergeTransfer(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;)V
    .locals 0

    .line 1288
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->clearTransfer()V

    return-void
.end method

.method private clearActionOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 1333
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    const/4 v0, 0x0

    .line 1334
    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1373
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 1420
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1421
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    const/4 v0, 0x0

    .line 1422
    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
    .locals 1

    .line 1689
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object v0
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1407
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    .line 1408
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1409
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->newBuilder(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;

    move-result-object v0

    .line 1410
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1412
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    .line 1414
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1

    .line 1501
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1504
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1478
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1484
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1442
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1449
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1489
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1496
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1466
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1473
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1429
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1436
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1454
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;
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

    .line 1461
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1695
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1362
    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1399
    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1400
    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

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

    .line 1628
    sget-object p2, Lwallet/core/jni/proto/TheOpenNetwork$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1673
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1667
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1652
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1654
    const-class p2, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    monitor-enter p2

    .line 1655
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1657
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1660
    sput-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1662
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

    .line 1649
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "actionOneof_"

    aput-object v0, p1, p3

    const-string p3, "actionOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1636
    const-class p3, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002<\u0000"

    .line 1645
    sget-object p3, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1633
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/TheOpenNetwork$1;)V

    return-object p1

    .line 1630
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;-><init>()V

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

.method public getActionOneofCase()Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;
    .locals 1

    .line 1328
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;->forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$SigningInput$ActionOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1349
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
    .locals 2

    .line 1389
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1390
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object v0

    .line 1392
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 1382
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningInput;->actionOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
