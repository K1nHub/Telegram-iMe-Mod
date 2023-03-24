.class public final Lwallet/core/jni/proto/Ripple$OperationPayment;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationPaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationPayment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;,
        Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ripple$OperationPayment;",
        "Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationPaymentOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final CURRENCY_AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

.field public static final DESTINATION_FIELD_NUMBER:I = 0x3

.field public static final DESTINATION_TAG_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationPayment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amountOneofCase_:I

.field private amountOneof_:Ljava/lang/Object;

.field private destinationTag_:J

.field private destination_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1680
    new-instance v0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;-><init>()V

    .line 1683
    sput-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    .line 1684
    const-class v1, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1077
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1080
    iput v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const-string v0, ""

    .line 1078
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destination_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1600()Lwallet/core/jni/proto/Ripple$OperationPayment;
    .locals 1

    .line 1072
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object v0
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0

    .line 1072
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->clearAmountOneof()V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Ripple$OperationPayment;J)V
    .locals 0

    .line 1072
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Ripple$OperationPayment;->setAmount(J)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0

    .line 1072
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->clearAmount()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Ripple$OperationPayment;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0

    .line 1072
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->setCurrencyAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Ripple$OperationPayment;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0

    .line 1072
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->mergeCurrencyAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0

    .line 1072
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->clearCurrencyAmount()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Ripple$OperationPayment;Ljava/lang/String;)V
    .locals 0

    .line 1072
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->setDestination(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0

    .line 1072
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->clearDestination()V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Ripple$OperationPayment;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1072
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;->setDestinationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Ripple$OperationPayment;J)V
    .locals 0

    .line 1072
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Ripple$OperationPayment;->setDestinationTag(J)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Ripple$OperationPayment;)V
    .locals 0

    .line 1072
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->clearDestinationTag()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    .line 1155
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1156
    iput v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v0, 0x0

    .line 1157
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAmountOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 1119
    iput v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v0, 0x0

    .line 1120
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearCurrencyAmount()V
    .locals 2

    .line 1205
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1206
    iput v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v0, 0x0

    .line 1207
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDestination()V
    .locals 1

    .line 1261
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationPayment;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment;->getDestination()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destination_:Ljava/lang/String;

    return-void
.end method

.method private clearDestinationTag()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1313
    iput-wide v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destinationTag_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationPayment;
    .locals 1

    .line 1689
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object v0
.end method

.method private mergeCurrencyAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1191
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1192
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    .line 1193
    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1194
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->newBuilder(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;

    move-result-object v0

    .line 1195
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1197
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    .line 1199
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1

    .line 1391
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ripple$OperationPayment;)Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1394
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1368
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1374
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1332
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1339
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1379
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1386
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1356
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1363
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1319
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1326
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1344
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationPayment;
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

    .line 1351
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationPayment;",
            ">;"
        }
    .end annotation

    .line 1695
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1148
    iput v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    .line 1149
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    return-void
.end method

.method private setCurrencyAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1184
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1185
    iput p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

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

    .line 1248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1250
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destination_:Ljava/lang/String;

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

    .line 1273
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1274
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destination_:Ljava/lang/String;

    return-void
.end method

.method private setDestinationTag(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1302
    iput-wide p1, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destinationTag_:J

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

    .line 1627
    sget-object p2, Lwallet/core/jni/proto/Ripple$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationPayment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1654
    const-class p2, Lwallet/core/jni/proto/Ripple$OperationPayment;

    monitor-enter p2

    .line 1655
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationPayment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1657
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1660
    sput-object p1, Lwallet/core/jni/proto/Ripple$OperationPayment;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amountOneof_"

    aput-object v0, p1, p3

    const-string p3, "amountOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1635
    const-class p3, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "destination_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "destinationTag_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u00015\u0000\u0002<\u0000\u0003\u0208\u0004\u0002"

    .line 1645
    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationPayment;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1632
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ripple$OperationPayment$Builder;-><init>(Lwallet/core/jni/proto/Ripple$1;)V

    return-object p1

    .line 1629
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationPayment;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ripple$OperationPayment;-><init>()V

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

    .line 1138
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1139
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAmountOneofCase()Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
    .locals 1

    .line 1114
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->forNumber(I)Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getCurrencyAmount()Lwallet/core/jni/proto/Ripple$CurrencyAmount;
    .locals 2

    .line 1174
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1175
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object v0

    .line 1177
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 1223
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destination_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1236
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destination_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationTag()J
    .locals 2

    .line 1290
    iget-wide v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->destinationTag_:J

    return-wide v0
.end method

.method public hasAmount()Z
    .locals 2

    .line 1130
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasCurrencyAmount()Z
    .locals 2

    .line 1167
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment;->amountOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
