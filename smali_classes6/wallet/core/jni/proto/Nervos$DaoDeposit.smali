.class public final Lwallet/core/jni/proto/Nervos$DaoDeposit;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$DaoDepositOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaoDeposit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$DaoDeposit;",
        "Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$DaoDepositOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$DaoDeposit;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:J

.field private changeAddress_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5866
    new-instance v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;-><init>()V

    .line 5869
    sput-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    .line 5870
    const-class v1, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5355
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5356
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->toAddress_:Ljava/lang/String;

    .line 5357
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9100()Lwallet/core/jni/proto/Nervos$DaoDeposit;
    .locals 1

    .line 5350
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object v0
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Nervos$DaoDeposit;Ljava/lang/String;)V
    .locals 0

    .line 5350
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V
    .locals 0

    .line 5350
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->clearToAddress()V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Nervos$DaoDeposit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5350
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Nervos$DaoDeposit;Ljava/lang/String;)V
    .locals 0

    .line 5350
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V
    .locals 0

    .line 5350
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Nervos$DaoDeposit;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5350
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Nervos$DaoDeposit;J)V
    .locals 0

    .line 5350
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->setAmount(J)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Nervos$DaoDeposit;)V
    .locals 0

    .line 5350
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5528
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->amount_:J

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 5476
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoDeposit;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 5409
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoDeposit;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoDeposit;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoDeposit;
    .locals 1

    .line 5875
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1

    .line 5606
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$DaoDeposit;)Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5609
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5583
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5589
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5547
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5554
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5594
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5601
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5571
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5578
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5534
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5541
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5559
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoDeposit;
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

    .line 5566
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$DaoDeposit;",
            ">;"
        }
    .end annotation

    .line 5881
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

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

    .line 5517
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->amount_:J

    return-void
.end method

.method private setChangeAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5463
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5465
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5488
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5489
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5398
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5421
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5422
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->toAddress_:Ljava/lang/String;

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

    .line 5815
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5859
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5853
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5838
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoDeposit;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5840
    const-class p2, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    monitor-enter p2

    .line 5841
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoDeposit;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5843
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5846
    sput-object p1, Lwallet/core/jni/proto/Nervos$DaoDeposit;->PARSER:Lcom/google/protobuf/Parser;

    .line 5848
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

    .line 5835
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "toAddress_"

    aput-object v0, p1, p3

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0003"

    .line 5831
    sget-object p3, Lwallet/core/jni/proto/Nervos$DaoDeposit;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5820
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$DaoDeposit$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 5817
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$DaoDeposit;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$DaoDeposit;-><init>()V

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

    .line 5505
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->amount_:J

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 5438
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5451
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 5371
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5384
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoDeposit;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
