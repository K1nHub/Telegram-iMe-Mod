.class public final Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TheOpenNetwork.java"

# interfaces
.implements Lwallet/core/jni/proto/TheOpenNetwork$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x1

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoded_:Ljava/lang/String;

.field private errorMessage_:Ljava/lang/String;

.field private error_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2335
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;-><init>()V

    .line 2338
    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    .line 2339
    const-class v1, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1774
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1775
    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->encoded_:Ljava/lang/String;

    .line 1776
    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2700()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
    .locals 1

    .line 1769
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object v0
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 1769
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->setEncoded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;)V
    .locals 0

    .line 1769
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1769
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->setEncodedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;I)V
    .locals 0

    .line 1769
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 1769
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;)V
    .locals 0

    .line 1769
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->clearError()V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 1769
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;)V
    .locals 0

    .line 1769
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->clearErrorMessage()V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1769
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 1828
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 1904
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->error_:I

    return-void
.end method

.method private clearErrorMessage()V
    .locals 1

    .line 1957
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
    .locals 1

    .line 2344
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
    .locals 1

    .line 2049
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;
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
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 2350
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEncoded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1817
    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private setEncodedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1840
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1841
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private setError(Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1892
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->error_:I

    return-void
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1944
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1946
    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1969
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1970
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private setErrorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1881
    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->error_:I

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

    .line 2284
    sget-object p2, Lwallet/core/jni/proto/TheOpenNetwork$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2328
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2322
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2307
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2309
    const-class p2, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    monitor-enter p2

    .line 2310
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2312
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2315
    sput-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2317
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

    .line 2304
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "encoded_"

    aput-object v0, p1, p3

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "errorMessage_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u0208"

    .line 2300
    sget-object p3, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2289
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/TheOpenNetwork$1;)V

    return-object p1

    .line 2286
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;-><init>()V

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

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 1790
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->encoded_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1803
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->encoded_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 1869
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1870
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1919
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1932
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->errorMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 1857
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$SigningOutput;->error_:I

    return v0
.end method
