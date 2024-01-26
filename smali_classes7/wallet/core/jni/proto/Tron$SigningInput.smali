.class public final Lwallet/core/jni/proto/Tron$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$SigningInput;",
        "Lwallet/core/jni/proto/Tron$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x1


# instance fields
.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private transaction_:Lwallet/core/jni/proto/Tron$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13691
    new-instance v0, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$SigningInput;-><init>()V

    .line 13694
    sput-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    .line 13695
    const-class v1, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13317
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13318
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$24600()Lwallet/core/jni/proto/Tron$SigningInput;
    .locals 1

    .line 13312
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    return-object v0
.end method

.method static synthetic access$24700(Lwallet/core/jni/proto/Tron$SigningInput;Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 13312
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningInput;->setTransaction(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-void
.end method

.method static synthetic access$24800(Lwallet/core/jni/proto/Tron$SigningInput;Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 13312
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningInput;->mergeTransaction(Lwallet/core/jni/proto/Tron$Transaction;)V

    return-void
.end method

.method static synthetic access$24900(Lwallet/core/jni/proto/Tron$SigningInput;)V
    .locals 0

    .line 13312
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningInput;->clearTransaction()V

    return-void
.end method

.method static synthetic access$25000(Lwallet/core/jni/proto/Tron$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13312
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$25100(Lwallet/core/jni/proto/Tron$SigningInput;)V
    .locals 0

    .line 13312
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 13422
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    const/4 v0, 0x0

    .line 13382
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningInput;
    .locals 1

    .line 13700
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    return-object v0
.end method

.method private mergeTransaction(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13366
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

    if-eqz v0, :cond_0

    .line 13367
    invoke-static {}, Lwallet/core/jni/proto/Tron$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Tron$Transaction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13368
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

    .line 13369
    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction;->newBuilder(Lwallet/core/jni/proto/Tron$Transaction;)Lwallet/core/jni/proto/Tron$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$Transaction$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$Transaction;

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

    goto :goto_0

    .line 13371
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1

    .line 13500
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$SigningInput;)Lwallet/core/jni/proto/Tron$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 13503
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13477
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13483
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13441
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13448
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13488
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13495
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13465
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13472
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13428
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13435
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13453
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningInput;
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

    .line 13460
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$SigningInput;",
            ">;"
        }
    .end annotation

    .line 13706
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 13409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13411
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTransaction(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13353
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

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

    .line 13642
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 13684
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 13678
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13663
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 13665
    const-class p2, Lwallet/core/jni/proto/Tron$SigningInput;

    monitor-enter p2

    .line 13666
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 13668
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13671
    sput-object p1, Lwallet/core/jni/proto/Tron$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 13673
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

    .line 13660
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transaction_"

    aput-object v0, p1, p3

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\n"

    .line 13656
    sget-object p3, Lwallet/core/jni/proto/Tron$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13647
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 13644
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$SigningInput;-><init>()V

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

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13398
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Tron$Transaction;
    .locals 1

    .line 13342
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Tron$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Tron$Transaction;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 13331
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningInput;->transaction_:Lwallet/core/jni/proto/Tron$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
