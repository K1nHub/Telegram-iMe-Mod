.class public final Lwallet/core/jni/proto/Ripple$CurrencyAmount;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$CurrencyAmountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyAmount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ripple$CurrencyAmount;",
        "Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$CurrencyAmountOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURRENCY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

.field public static final ISSUER_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$CurrencyAmount;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private currency_:Ljava/lang/String;

.field private issuer_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 693
    new-instance v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;-><init>()V

    .line 696
    sput-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    .line 697
    const-class v1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->currency_:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->value_:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->issuer_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Ripple$CurrencyAmount;
    .locals 1

    .line 88
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->setCurrency(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->clearCurrency()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->setCurrencyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->clearValue()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->setValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->setIssuer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->clearIssuer()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Ripple$CurrencyAmount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->setIssuerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCurrency()V
    .locals 1

    .line 152
    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->currency_:Ljava/lang/String;

    return-void
.end method

.method private clearIssuer()V
    .locals 1

    .line 296
    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->issuer_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 224
    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->value_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;
    .locals 1

    .line 702
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1

    .line 389
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 392
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 366
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 372
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 330
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 337
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 377
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 384
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 354
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 361
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 317
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 324
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 342
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$CurrencyAmount;
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

    .line 349
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$CurrencyAmount;",
            ">;"
        }
    .end annotation

    .line 708
    sget-object v0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurrency(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->currency_:Ljava/lang/String;

    return-void
.end method

.method private setCurrencyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 165
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 166
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->currency_:Ljava/lang/String;

    return-void
.end method

.method private setIssuer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->issuer_:Ljava/lang/String;

    return-void
.end method

.method private setIssuerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 310
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->issuer_:Ljava/lang/String;

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->value_:Ljava/lang/String;

    return-void
.end method

.method private setValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 237
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 238
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->value_:Ljava/lang/String;

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

    .line 642
    sget-object p2, Lwallet/core/jni/proto/Ripple$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 686
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 680
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 665
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 667
    const-class p2, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    monitor-enter p2

    .line 668
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 670
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 673
    sput-object p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->PARSER:Lcom/google/protobuf/Parser;

    .line 675
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

    .line 662
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "currency_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "issuer_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 658
    sget-object p3, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 647
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;-><init>(Lwallet/core/jni/proto/Ripple$1;)V

    return-object p1

    .line 644
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;-><init>()V

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

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->currency_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 125
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->currency_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->issuer_:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 269
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->issuer_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 197
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
