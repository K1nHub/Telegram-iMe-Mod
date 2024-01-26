.class public final Lwallet/core/jni/proto/Stellar$OperationPayment;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationPaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationPayment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$OperationPayment;",
        "Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationPaymentOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final ASSET_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

.field public static final DESTINATION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$OperationPayment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount_:J

.field private asset_:Lwallet/core/jni/proto/Stellar$Asset;

.field private destination_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1620
    new-instance v0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;-><init>()V

    .line 1623
    sput-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    .line 1624
    const-class v1, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1109
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1110
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->destination_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1500()Lwallet/core/jni/proto/Stellar$OperationPayment;
    .locals 1

    .line 1104
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object v0
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Stellar$OperationPayment;Ljava/lang/String;)V
    .locals 0

    .line 1104
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->setDestination(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Stellar$OperationPayment;)V
    .locals 0

    .line 1104
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->clearDestination()V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Stellar$OperationPayment;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1104
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->setDestinationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Stellar$OperationPayment;Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 1104
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->setAsset(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Stellar$OperationPayment;Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 1104
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;->mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Stellar$OperationPayment;)V
    .locals 0

    .line 1104
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->clearAsset()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Stellar$OperationPayment;J)V
    .locals 0

    .line 1104
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationPayment;->setAmount(J)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Stellar$OperationPayment;)V
    .locals 0

    .line 1104
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1280
    iput-wide v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->amount_:J

    return-void
.end method

.method private clearAsset()V
    .locals 1

    const/4 v0, 0x0

    .line 1241
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    return-void
.end method

.method private clearDestination()V
    .locals 1

    .line 1162
    invoke-static {}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationPayment;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$OperationPayment;->getDestination()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->destination_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationPayment;
    .locals 1

    .line 1629
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object v0
.end method

.method private mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1224
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1225
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-eqz v0, :cond_0

    .line 1226
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1227
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    .line 1228
    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$Asset;->newBuilder(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$Asset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset;

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    goto :goto_0

    .line 1230
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1

    .line 1358
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$OperationPayment;)Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1361
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1335
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1341
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1299
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1306
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1346
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1353
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1323
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1330
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1286
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1293
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1311
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationPayment;
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

    .line 1318
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$OperationPayment;",
            ">;"
        }
    .end annotation

    .line 1635
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

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

    .line 1269
    iput-wide p1, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->amount_:J

    return-void
.end method

.method private setAsset(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1212
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

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

    .line 1149
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1151
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->destination_:Ljava/lang/String;

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

    .line 1174
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1175
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->destination_:Ljava/lang/String;

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

    .line 1569
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1613
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1607
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1592
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationPayment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1594
    const-class p2, Lwallet/core/jni/proto/Stellar$OperationPayment;

    monitor-enter p2

    .line 1595
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationPayment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1597
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1600
    sput-object p1, Lwallet/core/jni/proto/Stellar$OperationPayment;->PARSER:Lcom/google/protobuf/Parser;

    .line 1602
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

    .line 1589
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "destination_"

    aput-object v0, p1, p3

    const-string p3, "asset_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\u0002"

    .line 1585
    sget-object p3, Lwallet/core/jni/proto/Stellar$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1574
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Stellar$OperationPayment$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 1571
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$OperationPayment;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$OperationPayment;-><init>()V

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

    .line 1257
    iget-wide v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->amount_:J

    return-wide v0
.end method

.method public getAsset()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 1201
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 1124
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->destination_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1137
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->destination_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 1190
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationPayment;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
