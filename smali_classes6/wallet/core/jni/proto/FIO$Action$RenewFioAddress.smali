.class public final Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$RenewFioAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenewFioAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;",
        "Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$RenewFioAddressOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field public static final FIO_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final OWNER_FIO_PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fee_:J

.field private fioAddress_:Ljava/lang/String;

.field private ownerFioPublicKey_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4193
    new-instance v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;-><init>()V

    .line 4196
    sput-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    .line 4197
    const-class v1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3681
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3682
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fioAddress_:Ljava/lang/String;

    .line 3683
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6000()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
    .locals 1

    .line 3676
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object v0
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Ljava/lang/String;)V
    .locals 0

    .line 3676
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->setFioAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V
    .locals 0

    .line 3676
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->clearFioAddress()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3676
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->setFioAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Ljava/lang/String;)V
    .locals 0

    .line 3676
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->setOwnerFioPublicKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V
    .locals 0

    .line 3676
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->clearOwnerFioPublicKey()V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3676
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->setOwnerFioPublicKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;J)V
    .locals 0

    .line 3676
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->setFee(J)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)V
    .locals 0

    .line 3676
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->clearFee()V

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3854
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fee_:J

    return-void
.end method

.method private clearFioAddress()V
    .locals 1

    .line 3735
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getFioAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fioAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearOwnerFioPublicKey()V
    .locals 1

    .line 3802
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->getOwnerFioPublicKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
    .locals 1

    .line 4202
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1

    .line 3932
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3935
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3909
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3915
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3873
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3880
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3920
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3927
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3897
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3904
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3860
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3867
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3885
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;
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

    .line 3892
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;",
            ">;"
        }
    .end annotation

    .line 4208
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 3843
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fee_:J

    return-void
.end method

.method private setFioAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3722
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3724
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fioAddress_:Ljava/lang/String;

    return-void
.end method

.method private setFioAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3747
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3748
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fioAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerFioPublicKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3789
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3791
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerFioPublicKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3814
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3815
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

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

    .line 4142
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4186
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4180
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4165
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4167
    const-class p2, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    monitor-enter p2

    .line 4168
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4170
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4173
    sput-object p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 4175
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

    .line 4162
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fioAddress_"

    aput-object v0, p1, p3

    const-string p3, "ownerFioPublicKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0003"

    .line 4158
    sget-object p3, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4147
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 4144
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;-><init>()V

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

.method public getFee()J
    .locals 2

    .line 3831
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fee_:J

    return-wide v0
.end method

.method public getFioAddress()Ljava/lang/String;
    .locals 1

    .line 3697
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fioAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3710
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->fioAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerFioPublicKey()Ljava/lang/String;
    .locals 1

    .line 3764
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerFioPublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3777
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RenewFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
