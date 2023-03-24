.class public final Lwallet/core/jni/proto/Nervos$SudtTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$SudtTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SudtTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$SudtTransfer;",
        "Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$SudtTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$SudtTransfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUDT_ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final USE_MAX_AMOUNT_FIELD_NUMBER:I = 0x5


# instance fields
.field private amount_:Ljava/lang/String;

.field private changeAddress_:Ljava/lang/String;

.field private sudtAddress_:Lcom/google/protobuf/ByteString;

.field private toAddress_:Ljava/lang/String;

.field private useMaxAmount_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5270
    new-instance v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;-><init>()V

    .line 5273
    sput-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    .line 5274
    const-class v1, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 4540
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4541
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->toAddress_:Ljava/lang/String;

    .line 4542
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->changeAddress_:Ljava/lang/String;

    .line 4543
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->sudtAddress_:Lcom/google/protobuf/ByteString;

    .line 4544
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7600()Lwallet/core/jni/proto/Nervos$SudtTransfer;
    .locals 1

    .line 4535
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object v0
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Nervos$SudtTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0

    .line 4535
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->clearToAddress()V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Nervos$SudtTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0

    .line 4535
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setSudtAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0

    .line 4535
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->clearSudtAddress()V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Nervos$SudtTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0

    .line 4535
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Nervos$SudtTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Nervos$SudtTransfer;Z)V
    .locals 0

    .line 4535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->setUseMaxAmount(Z)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Nervos$SudtTransfer;)V
    .locals 0

    .line 4535
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->clearUseMaxAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 4769
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 4663
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearSudtAddress()V
    .locals 1

    .line 4716
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getSudtAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->sudtAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 4596
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SudtTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SudtTransfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearUseMaxAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 4821
    iput-boolean v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->useMaxAmount_:Z

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$SudtTransfer;
    .locals 1

    .line 5279
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1

    .line 4899
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$SudtTransfer;)Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4902
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4876
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4882
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4840
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4847
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4887
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4894
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4864
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4871
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4827
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4834
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4852
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SudtTransfer;
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

    .line 4859
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$SudtTransfer;",
            ">;"
        }
    .end annotation

    .line 5285
    sget-object v0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4756
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4758
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4781
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4782
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->amount_:Ljava/lang/String;

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

    .line 4650
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4652
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->changeAddress_:Ljava/lang/String;

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

    .line 4675
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4676
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setSudtAddress(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4703
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4705
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->sudtAddress_:Lcom/google/protobuf/ByteString;

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

    .line 4583
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4585
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->toAddress_:Ljava/lang/String;

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

    .line 4608
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4609
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->toAddress_:Ljava/lang/String;

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

    .line 4810
    iput-boolean p1, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->useMaxAmount_:Z

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

    .line 5217
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5257
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5242
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$SudtTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5244
    const-class p2, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    monitor-enter p2

    .line 5245
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$SudtTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5247
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5250
    sput-object p1, Lwallet/core/jni/proto/Nervos$SudtTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 5252
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

    .line 5239
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "toAddress_"

    aput-object v0, p1, p3

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "sudtAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "useMaxAmount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n\u0004\u0208\u0005\u0007"

    .line 5235
    sget-object p3, Lwallet/core/jni/proto/Nervos$SudtTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5222
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$SudtTransfer$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 5219
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$SudtTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$SudtTransfer;-><init>()V

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

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 4731
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4744
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 4625
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4638
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSudtAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4692
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->sudtAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 4558
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4571
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 4798
    iget-boolean v0, p0, Lwallet/core/jni/proto/Nervos$SudtTransfer;->useMaxAmount_:Z

    return v0
.end method
