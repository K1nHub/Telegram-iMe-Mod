.class public final Lwallet/core/jni/proto/Cardano$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$SigningOutput;",
        "Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x1

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private encoded_:Lcom/google/protobuf/ByteString;

.field private error_:I

.field private txId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10281
    new-instance v0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;-><init>()V

    .line 10284
    sput-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    .line 10285
    const-class v1, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9834
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9835
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    .line 9836
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->txId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$17300()Lwallet/core/jni/proto/Cardano$SigningOutput;
    .locals 1

    .line 9829
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object v0
.end method

.method static synthetic access$17400(Lwallet/core/jni/proto/Cardano$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9829
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->setEncoded(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17500(Lwallet/core/jni/proto/Cardano$SigningOutput;)V
    .locals 0

    .line 9829
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$17600(Lwallet/core/jni/proto/Cardano$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9829
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->setTxId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17700(Lwallet/core/jni/proto/Cardano$SigningOutput;)V
    .locals 0

    .line 9829
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->clearTxId()V

    return-void
.end method

.method static synthetic access$17800(Lwallet/core/jni/proto/Cardano$SigningOutput;I)V
    .locals 0

    .line 9829
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$17900(Lwallet/core/jni/proto/Cardano$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 9829
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$18000(Lwallet/core/jni/proto/Cardano$SigningOutput;)V
    .locals 0

    .line 9829
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->clearError()V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 9874
    invoke-static {}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 9975
    iput v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->error_:I

    return-void
.end method

.method private clearTxId()V
    .locals 1

    .line 9913
    invoke-static {}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$SigningOutput;->getTxId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->txId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$SigningOutput;
    .locals 1

    .line 10290
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1

    .line 10053
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$SigningOutput;)Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10056
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10030
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10036
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 9994
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10001
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10041
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10048
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10018
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10025
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 9981
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 9988
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10006
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningOutput;
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

    .line 10013
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 10296
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEncoded(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9861
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9863
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

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

    .line 9963
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->error_:I

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

    .line 9952
    iput p1, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->error_:I

    return-void
.end method

.method private setTxId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9902
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->txId_:Lcom/google/protobuf/ByteString;

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

    .line 10230
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10274
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 10268
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10253
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10255
    const-class p2, Lwallet/core/jni/proto/Cardano$SigningOutput;

    monitor-enter p2

    .line 10256
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10258
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10261
    sput-object p1, Lwallet/core/jni/proto/Cardano$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 10263
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

    .line 10250
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "encoded_"

    aput-object v0, p1, p3

    const-string p3, "txId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "error_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u000c"

    .line 10246
    sget-object p3, Lwallet/core/jni/proto/Cardano$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10235
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 10232
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$SigningOutput;-><init>()V

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

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9850
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 9940
    iget v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9941
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 9928
    iget v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->error_:I

    return v0
.end method

.method public getTxId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9889
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningOutput;->txId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
