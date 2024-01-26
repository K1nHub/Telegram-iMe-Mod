.class public final Lwallet/core/jni/proto/Sui$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Sui.java"

# interfaces
.implements Lwallet/core/jni/proto/Sui$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Sui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Sui$SigningInput$Builder;,
        Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Sui$SigningInput;",
        "Lwallet/core/jni/proto/Sui$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Sui$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Sui$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final SIGN_DIRECT_MESSAGE_FIELD_NUMBER:I = 0x2


# instance fields
.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private transactionPayloadCase_:I

.field private transactionPayload_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 789
    new-instance v0, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Sui$SigningInput;-><init>()V

    .line 792
    sput-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    .line 793
    const-class v1, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 398
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    .line 399
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Sui$SigningInput;Lwallet/core/jni/proto/Sui$SignDirect;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Sui$SigningInput;->mergeSignDirectMessage(Lwallet/core/jni/proto/Sui$SignDirect;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Sui$SigningInput;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lwallet/core/jni/proto/Sui$SigningInput;->clearSignDirectMessage()V

    return-void
.end method

.method static synthetic access$500()Lwallet/core/jni/proto/Sui$SigningInput;
    .locals 1

    .line 393
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    return-object v0
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Sui$SigningInput;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lwallet/core/jni/proto/Sui$SigningInput;->clearTransactionPayload()V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Sui$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Sui$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Sui$SigningInput;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Lwallet/core/jni/proto/Sui$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Sui$SigningInput;Lwallet/core/jni/proto/Sui$SignDirect;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Sui$SigningInput;->setSignDirectMessage(Lwallet/core/jni/proto/Sui$SignDirect;)V

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 478
    invoke-static {}, Lwallet/core/jni/proto/Sui$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Sui$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Sui$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSignDirectMessage()V
    .locals 2

    .line 525
    iget v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 526
    iput v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransactionPayload()V
    .locals 1

    const/4 v0, 0x0

    .line 438
    iput v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Sui$SigningInput;
    .locals 1

    .line 798
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    return-object v0
.end method

.method private mergeSignDirectMessage(Lwallet/core/jni/proto/Sui$SignDirect;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    iget v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 513
    invoke-static {}, Lwallet/core/jni/proto/Sui$SignDirect;->getDefaultInstance()Lwallet/core/jni/proto/Sui$SignDirect;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 514
    iget-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Sui$SignDirect;

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SignDirect;->newBuilder(Lwallet/core/jni/proto/Sui$SignDirect;)Lwallet/core/jni/proto/Sui$SignDirect$Builder;

    move-result-object v0

    .line 515
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Sui$SignDirect$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 517
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    .line 519
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1

    .line 606
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Sui$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Sui$SigningInput;)Lwallet/core/jni/proto/Sui$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 609
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 583
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 589
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 547
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 554
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 594
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 601
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 571
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 578
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 534
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 541
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 559
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Sui$SigningInput;
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

    .line 566
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Sui$SigningInput;",
            ">;"
        }
    .end annotation

    .line 804
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

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

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    iput-object p1, p0, Lwallet/core/jni/proto/Sui$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSignDirectMessage(Lwallet/core/jni/proto/Sui$SignDirect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 503
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    iput-object p1, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 505
    iput p1, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

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

    .line 737
    sget-object p2, Lwallet/core/jni/proto/Sui$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 782
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 776
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 761
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Sui$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 763
    const-class p2, Lwallet/core/jni/proto/Sui$SigningInput;

    monitor-enter p2

    .line 764
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Sui$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 766
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 769
    sput-object p1, Lwallet/core/jni/proto/Sui$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 771
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

    .line 758
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transactionPayload_"

    aput-object v0, p1, p3

    const-string p3, "transactionPayloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 745
    const-class p3, Lwallet/core/jni/proto/Sui$SignDirect;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002<\u0000"

    .line 754
    sget-object p3, Lwallet/core/jni/proto/Sui$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 742
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Sui$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Sui$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Sui$1;)V

    return-object p1

    .line 739
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Sui$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Sui$SigningInput;-><init>()V

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

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 454
    iget-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignDirectMessage()Lwallet/core/jni/proto/Sui$SignDirect;
    .locals 2

    .line 494
    iget v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Sui$SignDirect;

    return-object v0

    .line 497
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Sui$SignDirect;->getDefaultInstance()Lwallet/core/jni/proto/Sui$SignDirect;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionPayloadCase()Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
    .locals 1

    .line 433
    iget v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->forNumber(I)Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public hasSignDirectMessage()Z
    .locals 2

    .line 487
    iget v0, p0, Lwallet/core/jni/proto/Sui$SigningInput;->transactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
