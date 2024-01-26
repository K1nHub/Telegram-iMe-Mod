.class public final Lwallet/core/jni/proto/Decred$TransactionInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$TransactionInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Decred$TransactionInput;",
        "Lwallet/core/jni/proto/Decred$TransactionInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$TransactionInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final BLOCKHEIGHT_FIELD_NUMBER:I = 0x4

.field public static final BLOCKINDEX_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIOUSOUTPUT_FIELD_NUMBER:I = 0x1

.field public static final SCRIPT_FIELD_NUMBER:I = 0x6

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x2

.field public static final VALUEIN_FIELD_NUMBER:I = 0x3


# instance fields
.field private blockHeight_:I

.field private blockIndex_:I

.field private previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

.field private script_:Lcom/google/protobuf/ByteString;

.field private sequence_:I

.field private valueIn_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1968
    new-instance v0, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;-><init>()V

    .line 1971
    sput-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    .line 1972
    const-class v1, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1277
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1278
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2200()Lwallet/core/jni/proto/Decred$TransactionInput;
    .locals 1

    .line 1272
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object v0
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Decred$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Decred$TransactionInput;Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->mergePreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 1272
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionInput;->clearPreviousOutput()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Decred$TransactionInput;I)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->setSequence(I)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 1272
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionInput;->clearSequence()V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Decred$TransactionInput;J)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Decred$TransactionInput;->setValueIn(J)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 1272
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionInput;->clearValueIn()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Decred$TransactionInput;I)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->setBlockHeight(I)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 1272
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionInput;->clearBlockHeight()V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Decred$TransactionInput;I)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->setBlockIndex(I)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 1272
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionInput;->clearBlockIndex()V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Decred$TransactionInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionInput;->setScript(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 1272
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionInput;->clearScript()V

    return-void
.end method

.method private clearBlockHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 1457
    iput v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->blockHeight_:I

    return-void
.end method

.method private clearBlockIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 1495
    iput v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->blockIndex_:I

    return-void
.end method

.method private clearPreviousOutput()V
    .locals 1

    const/4 v0, 0x0

    .line 1342
    iput-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-void
.end method

.method private clearScript()V
    .locals 1

    .line 1534
    invoke-static {}, Lwallet/core/jni/proto/Decred$TransactionInput;->getDefaultInstance()Lwallet/core/jni/proto/Decred$TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionInput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 1381
    iput v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->sequence_:I

    return-void
.end method

.method private clearValueIn()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1419
    iput-wide v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->valueIn_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Decred$TransactionInput;
    .locals 1

    .line 1977
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object v0
.end method

.method private mergePreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    if-eqz v0, :cond_0

    .line 1327
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1328
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    .line 1329
    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->newBuilder(Lwallet/core/jni/proto/Bitcoin$OutPoint;)Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$OutPoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$OutPoint;

    iput-object p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    goto :goto_0

    .line 1331
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1

    .line 1612
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Decred$TransactionInput;)Lwallet/core/jni/proto/Decred$TransactionInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1615
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1589
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1595
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1553
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1560
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1600
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1607
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1577
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1584
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1540
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1547
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1565
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionInput;
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

    .line 1572
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 1983
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBlockHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1446
    iput p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->blockHeight_:I

    return-void
.end method

.method private setBlockIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1484
    iput p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->blockIndex_:I

    return-void
.end method

.method private setPreviousOutput(Lwallet/core/jni/proto/Bitcoin$OutPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1313
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    return-void
.end method

.method private setScript(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1521
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1523
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSequence(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1370
    iput p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->sequence_:I

    return-void
.end method

.method private setValueIn(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1408
    iput-wide p1, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->valueIn_:J

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

    .line 1914
    sget-object p2, Lwallet/core/jni/proto/Decred$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1961
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1955
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1940
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Decred$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1942
    const-class p2, Lwallet/core/jni/proto/Decred$TransactionInput;

    monitor-enter p2

    .line 1943
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Decred$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1945
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1948
    sput-object p1, Lwallet/core/jni/proto/Decred$TransactionInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1950
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

    .line 1937
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "previousOutput_"

    aput-object v0, p1, p3

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "valueIn_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "blockHeight_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "blockIndex_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "script_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u0002\u0004\u000b\u0005\u000b\u0006\n"

    .line 1933
    sget-object p3, Lwallet/core/jni/proto/Decred$TransactionInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1919
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Decred$TransactionInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Decred$TransactionInput$Builder;-><init>(Lwallet/core/jni/proto/Decred$1;)V

    return-object p1

    .line 1916
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Decred$TransactionInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Decred$TransactionInput;-><init>()V

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

.method public getBlockHeight()I
    .locals 1

    .line 1434
    iget v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->blockHeight_:I

    return v0
.end method

.method public getBlockIndex()I
    .locals 1

    .line 1472
    iget v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->blockIndex_:I

    return v0
.end method

.method public getPreviousOutput()Lwallet/core/jni/proto/Bitcoin$OutPoint;
    .locals 1

    .line 1302
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$OutPoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1510
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->script_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()I
    .locals 1

    .line 1358
    iget v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->sequence_:I

    return v0
.end method

.method public getValueIn()J
    .locals 2

    .line 1396
    iget-wide v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->valueIn_:J

    return-wide v0
.end method

.method public hasPreviousOutput()Z
    .locals 1

    .line 1291
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionInput;->previousOutput_:Lwallet/core/jni/proto/Bitcoin$OutPoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
