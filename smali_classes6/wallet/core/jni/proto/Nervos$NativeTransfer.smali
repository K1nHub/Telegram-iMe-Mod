.class public final Lwallet/core/jni/proto/Nervos$NativeTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$NativeTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$NativeTransfer;",
        "Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$NativeTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$NativeTransfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final USE_MAX_AMOUNT_FIELD_NUMBER:I = 0x4


# instance fields
.field private amount_:J

.field private changeAddress_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;

.field private useMaxAmount_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4425
    new-instance v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;-><init>()V

    .line 4428
    sput-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    .line 4429
    const-class v1, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3835
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3836
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->toAddress_:Ljava/lang/String;

    .line 3837
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6400()Lwallet/core/jni/proto/Nervos$NativeTransfer;
    .locals 1

    .line 3830
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object v0
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Nervos$NativeTransfer;Ljava/lang/String;)V
    .locals 0

    .line 3830
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 0

    .line 3830
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->clearToAddress()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Nervos$NativeTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3830
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Nervos$NativeTransfer;Ljava/lang/String;)V
    .locals 0

    .line 3830
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 0

    .line 3830
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Nervos$NativeTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3830
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Nervos$NativeTransfer;J)V
    .locals 0

    .line 3830
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->setAmount(J)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 0

    .line 3830
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Nervos$NativeTransfer;Z)V
    .locals 0

    .line 3830
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->setUseMaxAmount(Z)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Nervos$NativeTransfer;)V
    .locals 0

    .line 3830
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->clearUseMaxAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4008
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->amount_:J

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 3956
    invoke-static {}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$NativeTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 3889
    invoke-static {}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$NativeTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$NativeTransfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearUseMaxAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 4046
    iput-boolean v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->useMaxAmount_:Z

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$NativeTransfer;
    .locals 1

    .line 4434
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1

    .line 4124
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$NativeTransfer;)Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4127
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4101
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4107
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4065
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4072
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4112
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4119
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4089
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4096
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4052
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4059
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4077
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$NativeTransfer;
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

    .line 4084
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$NativeTransfer;",
            ">;"
        }
    .end annotation

    .line 4440
    sget-object v0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

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

    .line 3997
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->amount_:J

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

    .line 3943
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3945
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->changeAddress_:Ljava/lang/String;

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

    .line 3968
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3969
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->changeAddress_:Ljava/lang/String;

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

    .line 3876
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3878
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->toAddress_:Ljava/lang/String;

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

    .line 3901
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3902
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setUseMaxAmount(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4035
    iput-boolean p1, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->useMaxAmount_:Z

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

    .line 4373
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4418
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4412
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4397
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$NativeTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4399
    const-class p2, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    monitor-enter p2

    .line 4400
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$NativeTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4402
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4405
    sput-object p1, Lwallet/core/jni/proto/Nervos$NativeTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 4407
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

    .line 4394
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "toAddress_"

    aput-object v0, p1, p3

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "useMaxAmount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0003\u0004\u0007"

    .line 4390
    sget-object p3, Lwallet/core/jni/proto/Nervos$NativeTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4378
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$NativeTransfer$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 4375
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$NativeTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$NativeTransfer;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 3985
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->amount_:J

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 3918
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3931
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 3851
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3864
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 4023
    iget-boolean v0, p0, Lwallet/core/jni/proto/Nervos$NativeTransfer;->useMaxAmount_:Z

    return v0
.end method
