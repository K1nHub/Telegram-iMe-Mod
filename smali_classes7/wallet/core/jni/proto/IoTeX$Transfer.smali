.class public final Lwallet/core/jni/proto/IoTeX$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$Transfer;",
        "Lwallet/core/jni/proto/IoTeX$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$TransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final RECIPIENT_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Ljava/lang/String;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private recipient_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 590
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;-><init>()V

    .line 593
    sput-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    .line 594
    const-class v1, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->amount_:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->recipient_:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/IoTeX$Transfer;
    .locals 1

    .line 72
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/IoTeX$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Transfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/IoTeX$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/IoTeX$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->setRecipient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Transfer;->clearRecipient()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/IoTeX$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->setRecipientBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/IoTeX$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Transfer;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Transfer;->clearPayload()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 132
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 252
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRecipient()V
    .locals 1

    .line 199
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->getRecipient()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->recipient_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;
    .locals 1

    .line 599
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1

    .line 330
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$Transfer;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 333
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 307
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 313
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 271
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 278
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 318
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 325
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 295
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 302
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 258
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 265
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 283
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Transfer;
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

    .line 290
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Transfer;",
            ">;"
        }
    .end annotation

    .line 605
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

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

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->amount_:Ljava/lang/String;

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

    .line 144
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 145
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRecipient(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->recipient_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 211
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->recipient_:Ljava/lang/String;

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

    .line 539
    sget-object p2, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 583
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 577
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 562
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 564
    const-class p2, Lwallet/core/jni/proto/IoTeX$Transfer;

    monitor-enter p2

    .line 565
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 567
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 570
    sput-object p1, Lwallet/core/jni/proto/IoTeX$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 572
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

    .line 559
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const-string p3, "recipient_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n"

    .line 555
    sget-object p3, Lwallet/core/jni/proto/IoTeX$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 544
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/IoTeX$Transfer$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 541
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$Transfer;-><init>()V

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

    .line 94
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 107
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 228
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->recipient_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 174
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Transfer;->recipient_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
