.class public final Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$NewFundsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewFundsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;",
        "Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$NewFundsRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

.field public static final FEE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYEE_FIO_NAME_FIELD_NUMBER:I = 0x3

.field public static final PAYER_FIO_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final PAYER_FIO_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

.field private fee_:J

.field private payeeFioName_:Ljava/lang/String;

.field private payerFioAddress_:Ljava/lang/String;

.field private payerFioName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5106
    new-instance v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;-><init>()V

    .line 5109
    sput-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    .line 5110
    const-class v1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4319
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioName_:Ljava/lang/String;

    .line 4320
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioAddress_:Ljava/lang/String;

    .line 4321
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payeeFioName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7000()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
    .locals 1

    .line 4313
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object v0
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Ljava/lang/String;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setPayerFioName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0

    .line 4313
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->clearPayerFioName()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setPayerFioNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Ljava/lang/String;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setPayerFioAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0

    .line 4313
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->clearPayerFioAddress()V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setPayerFioAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Ljava/lang/String;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setPayeeFioName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0

    .line 4313
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->clearPayeeFioName()V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setPayeeFioNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setContent(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->mergeContent(Lwallet/core/jni/proto/FIO$NewFundsContent;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0

    .line 4313
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->clearContent()V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;J)V
    .locals 0

    .line 4313
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->setFee(J)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)V
    .locals 0

    .line 4313
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->clearFee()V

    return-void
.end method

.method private clearContent()V
    .locals 1

    const/4 v0, 0x0

    .line 4586
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4625
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->fee_:J

    return-void
.end method

.method private clearPayeeFioName()V
    .locals 1

    .line 4507
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayeeFioName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payeeFioName_:Ljava/lang/String;

    return-void
.end method

.method private clearPayerFioAddress()V
    .locals 1

    .line 4440
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayerFioAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearPayerFioName()V
    .locals 1

    .line 4373
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->getPayerFioName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioName_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
    .locals 1

    .line 5115
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object v0
.end method

.method private mergeContent(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4569
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4570
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    if-eqz v0, :cond_0

    .line 4571
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4572
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    .line 4573
    invoke-static {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->newBuilder(Lwallet/core/jni/proto/FIO$NewFundsContent;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$NewFundsContent;

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    goto :goto_0

    .line 4575
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1

    .line 4703
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4706
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4680
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4686
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4644
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4651
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4691
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4698
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4668
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4675
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4631
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4638
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4656
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;
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

    .line 4663
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;",
            ">;"
        }
    .end annotation

    .line 5121
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setContent(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4557
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4614
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->fee_:J

    return-void
.end method

.method private setPayeeFioName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4494
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4496
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payeeFioName_:Ljava/lang/String;

    return-void
.end method

.method private setPayeeFioNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4519
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4520
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payeeFioName_:Ljava/lang/String;

    return-void
.end method

.method private setPayerFioAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4429
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioAddress_:Ljava/lang/String;

    return-void
.end method

.method private setPayerFioAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4452
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4453
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioAddress_:Ljava/lang/String;

    return-void
.end method

.method private setPayerFioName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4362
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioName_:Ljava/lang/String;

    return-void
.end method

.method private setPayerFioNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4385
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4386
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioName_:Ljava/lang/String;

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

    .line 5053
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5099
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5093
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5078
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5080
    const-class p2, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    monitor-enter p2

    .line 5081
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5083
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5086
    sput-object p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 5088
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

    .line 5075
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payerFioName_"

    aput-object v0, p1, p3

    const-string p3, "payerFioAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "payeeFioName_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "content_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\t\u0005\u0003"

    .line 5071
    sget-object p3, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5058
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 5055
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;-><init>()V

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

.method public getContent()Lwallet/core/jni/proto/FIO$NewFundsContent;
    .locals 1

    .line 4546
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 4602
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->fee_:J

    return-wide v0
.end method

.method public getPayeeFioName()Ljava/lang/String;
    .locals 1

    .line 4469
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payeeFioName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayeeFioNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4482
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payeeFioName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayerFioAddress()Ljava/lang/String;
    .locals 1

    .line 4402
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4415
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayerFioName()Ljava/lang/String;
    .locals 1

    .line 4335
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerFioNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4348
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->payerFioName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 4535
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$NewFundsRequest;->content_:Lwallet/core/jni/proto/FIO$NewFundsContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
