.class public final Lwallet/core/jni/proto/Tezos$TransactionOperationData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$TransactionOperationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionOperationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$TransactionOperationData;",
        "Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$TransactionOperationDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

.field public static final DESTINATION_FIELD_NUMBER:I = 0x1

.field public static final PARAMETERS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$TransactionOperationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount_:J

.field private destination_:Ljava/lang/String;

.field private parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5927
    new-instance v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;-><init>()V

    .line 5930
    sput-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    .line 5931
    const-class v1, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5523
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5524
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->destination_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10600()Lwallet/core/jni/proto/Tezos$TransactionOperationData;
    .locals 1

    .line 5518
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object v0
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Ljava/lang/String;)V
    .locals 0

    .line 5518
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->setDestination(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V
    .locals 0

    .line 5518
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->clearDestination()V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5518
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->setDestinationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Tezos$TransactionOperationData;J)V
    .locals 0

    .line 5518
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->setAmount(J)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V
    .locals 0

    .line 5518
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->clearAmount()V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Lwallet/core/jni/proto/Tezos$OperationParameters;)V
    .locals 0

    .line 5518
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->setParameters(Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Tezos$TransactionOperationData;Lwallet/core/jni/proto/Tezos$OperationParameters;)V
    .locals 0

    .line 5518
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->mergeParameters(Lwallet/core/jni/proto/Tezos$OperationParameters;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)V
    .locals 0

    .line 5518
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->clearParameters()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5596
    iput-wide v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->amount_:J

    return-void
.end method

.method private clearDestination()V
    .locals 1

    .line 5560
    invoke-static {}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->getDestination()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->destination_:Ljava/lang/String;

    return-void
.end method

.method private clearParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 5641
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$TransactionOperationData;
    .locals 1

    .line 5936
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object v0
.end method

.method private mergeParameters(Lwallet/core/jni/proto/Tezos$OperationParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5628
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5629
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

    if-eqz v0, :cond_0

    .line 5630
    invoke-static {}, Lwallet/core/jni/proto/Tezos$OperationParameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$OperationParameters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5631
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

    .line 5632
    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->newBuilder(Lwallet/core/jni/proto/Tezos$OperationParameters;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$OperationParameters;

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

    goto :goto_0

    .line 5634
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1

    .line 5720
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$TransactionOperationData;)Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5723
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5697
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5703
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5661
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5668
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5708
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5715
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5685
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5692
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5648
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5655
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5673
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TransactionOperationData;
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

    .line 5680
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$TransactionOperationData;",
            ">;"
        }
    .end annotation

    .line 5942
    sget-object v0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

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

    .line 5589
    iput-wide p1, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->amount_:J

    return-void
.end method

.method private setDestination(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5551
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5553
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->destination_:Ljava/lang/String;

    return-void
.end method

.method private setDestinationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5568
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5569
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->destination_:Ljava/lang/String;

    return-void
.end method

.method private setParameters(Lwallet/core/jni/proto/Tezos$OperationParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5620
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

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

    .line 5876
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5920
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5914
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5899
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5901
    const-class p2, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    monitor-enter p2

    .line 5902
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5904
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5907
    sput-object p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 5909
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

    .line 5896
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "destination_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "parameters_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\t"

    .line 5892
    sget-object p3, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5881
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$TransactionOperationData$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 5878
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$TransactionOperationData;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$TransactionOperationData;-><init>()V

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

    .line 5581
    iget-wide v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->amount_:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 5534
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->destination_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5543
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->destination_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lwallet/core/jni/proto/Tezos$OperationParameters;
    .locals 1

    .line 5613
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Tezos$OperationParameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$OperationParameters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasParameters()Z
    .locals 1

    .line 5606
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TransactionOperationData;->parameters_:Lwallet/core/jni/proto/Tezos$OperationParameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
