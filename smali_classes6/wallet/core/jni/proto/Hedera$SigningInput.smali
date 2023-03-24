.class public final Lwallet/core/jni/proto/Hedera$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Hedera$SigningInput;",
        "Lwallet/core/jni/proto/Hedera$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1


# instance fields
.field private body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3223
    new-instance v0, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Hedera$SigningInput;-><init>()V

    .line 3226
    sput-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    .line 3227
    const-class v1, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2849
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2850
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4700()Lwallet/core/jni/proto/Hedera$SigningInput;
    .locals 1

    .line 2844
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object v0
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Hedera$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2844
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Hedera$SigningInput;)V
    .locals 0

    .line 2844
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Hedera$SigningInput;Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 2844
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$SigningInput;->setBody(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Hedera$SigningInput;Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 2844
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$SigningInput;->mergeBody(Lwallet/core/jni/proto/Hedera$TransactionBody;)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Hedera$SigningInput;)V
    .locals 0

    .line 2844
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$SigningInput;->clearBody()V

    return-void
.end method

.method private clearBody()V
    .locals 1

    const/4 v0, 0x0

    .line 2953
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 2888
    invoke-static {}, Lwallet/core/jni/proto/Hedera$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Hedera$SigningInput;
    .locals 1

    .line 3232
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object v0
.end method

.method private mergeBody(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2936
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2937
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    if-eqz v0, :cond_0

    .line 2938
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionBody;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2939
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    .line 2940
    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->newBuilder(Lwallet/core/jni/proto/Hedera$TransactionBody;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransactionBody;

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    goto :goto_0

    .line 2942
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1

    .line 3032
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Hedera$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Hedera$SigningInput;)Lwallet/core/jni/proto/Hedera$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3035
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 3009
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 3015
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 2973
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 2980
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 3020
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 3027
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 2997
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 3004
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 2960
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 2967
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 2985
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$SigningInput;
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

    .line 2992
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$SigningInput;",
            ">;"
        }
    .end annotation

    .line 3238
    sget-object v0, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBody(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2923
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2924
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2877
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 3174
    sget-object p2, Lwallet/core/jni/proto/Hedera$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3216
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3210
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3195
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Hedera$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3197
    const-class p2, Lwallet/core/jni/proto/Hedera$SigningInput;

    monitor-enter p2

    .line 3198
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Hedera$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3200
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3203
    sput-object p1, Lwallet/core/jni/proto/Hedera$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 3205
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

    .line 3192
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "privateKey_"

    aput-object v0, p1, p3

    const-string p3, "body_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\t"

    .line 3188
    sget-object p3, Lwallet/core/jni/proto/Hedera$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3179
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Hedera$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Hedera$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Hedera$1;)V

    return-object p1

    .line 3176
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Hedera$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Hedera$SigningInput;-><init>()V

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

.method public getBody()Lwallet/core/jni/proto/Hedera$TransactionBody;
    .locals 1

    .line 2913
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionBody;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2864
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .line 2902
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$SigningInput;->body_:Lwallet/core/jni/proto/Hedera$TransactionBody;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
