.class public final Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$RegisterFioAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegisterFioAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;",
        "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddressOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field public static final FIO_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final OWNER_FIO_PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;",
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

    .line 2309
    new-instance v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;-><init>()V

    .line 2312
    sput-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    .line 2313
    const-class v1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1798
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1799
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fioAddress_:Ljava/lang/String;

    .line 1800
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2800()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
    .locals 1

    .line 1793
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object v0
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Ljava/lang/String;)V
    .locals 0

    .line 1793
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->setFioAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V
    .locals 0

    .line 1793
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->clearFioAddress()V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1793
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->setFioAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Ljava/lang/String;)V
    .locals 0

    .line 1793
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->setOwnerFioPublicKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V
    .locals 0

    .line 1793
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->clearOwnerFioPublicKey()V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1793
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->setOwnerFioPublicKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;J)V
    .locals 0

    .line 1793
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->setFee(J)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)V
    .locals 0

    .line 1793
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->clearFee()V

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1971
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fee_:J

    return-void
.end method

.method private clearFioAddress()V
    .locals 1

    .line 1852
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getFioAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fioAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearOwnerFioPublicKey()V
    .locals 1

    .line 1919
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->getOwnerFioPublicKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
    .locals 1

    .line 2318
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1

    .line 2049
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2052
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2026
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2032
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 1990
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 1997
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2037
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2044
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2014
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2021
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 1977
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 1984
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2002
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;
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

    .line 2009
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;",
            ">;"
        }
    .end annotation

    .line 2324
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

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

    .line 1960
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fee_:J

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

    .line 1839
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1841
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fioAddress_:Ljava/lang/String;

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

    .line 1864
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1865
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fioAddress_:Ljava/lang/String;

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

    .line 1906
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1908
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

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

    .line 1931
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1932
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

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

    .line 2258
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2296
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2281
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2283
    const-class p2, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    monitor-enter p2

    .line 2284
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2286
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2289
    sput-object p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 2291
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

    .line 2278
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

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

    .line 2274
    sget-object p3, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2263
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 2260
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;-><init>()V

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

    .line 1948
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fee_:J

    return-wide v0
.end method

.method public getFioAddress()Ljava/lang/String;
    .locals 1

    .line 1814
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fioAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1827
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->fioAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerFioPublicKey()Ljava/lang/String;
    .locals 1

    .line 1881
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerFioPublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1894
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$RegisterFioAddress;->ownerFioPublicKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
