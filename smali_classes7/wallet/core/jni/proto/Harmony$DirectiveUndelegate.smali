.class public final Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveUndelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectiveUndelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;",
        "Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveUndelegateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

.field public static final DELEGATOR_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALIDATOR_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private delegatorAddress_:Ljava/lang/String;

.field private validatorAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8288
    new-instance v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;-><init>()V

    .line 8291
    sput-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    .line 8292
    const-class v1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 7776
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->delegatorAddress_:Ljava/lang/String;

    .line 7777
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->validatorAddress_:Ljava/lang/String;

    .line 7778
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$15800()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
    .locals 1

    .line 7770
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object v0
.end method

.method static synthetic access$15900(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Ljava/lang/String;)V
    .locals 0

    .line 7770
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->setDelegatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V
    .locals 0

    .line 7770
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->clearDelegatorAddress()V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7770
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Ljava/lang/String;)V
    .locals 0

    .line 7770
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->setValidatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16300(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V
    .locals 0

    .line 7770
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->clearValidatorAddress()V

    return-void
.end method

.method static synthetic access$16400(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7770
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16500(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7770
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16600(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V
    .locals 0

    .line 7770
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 7950
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearDelegatorAddress()V
    .locals 1

    .line 7830
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearValidatorAddress()V
    .locals 1

    .line 7897
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
    .locals 1

    .line 8297
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1

    .line 8028
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8031
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 8005
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 8011
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 7969
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 7976
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 8016
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 8023
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 7993
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 8000
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 7956
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 7963
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 7981
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
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

    .line 7988
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;",
            ">;"
        }
    .end annotation

    .line 8303
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7937
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7939
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setDelegatorAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7819
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7842
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7843
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7884
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7886
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7909
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7910
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->validatorAddress_:Ljava/lang/String;

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

    .line 8237
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8281
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8275
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8260
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8262
    const-class p2, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    monitor-enter p2

    .line 8263
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8265
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8268
    sput-object p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 8270
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

    .line 8257
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "delegatorAddress_"

    aput-object v0, p1, p3

    const-string p3, "validatorAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n"

    .line 8253
    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8242
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 8239
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7926
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 7792
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->delegatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7805
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->delegatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 7859
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->validatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7872
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->validatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
