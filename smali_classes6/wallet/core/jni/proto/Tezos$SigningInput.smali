.class public final Lwallet/core/jni/proto/Tezos$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$SigningInput;",
        "Lwallet/core/jni/proto/Tezos$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

.field public static final ENCODED_OPERATIONS_FIELD_NUMBER:I = 0x2

.field public static final OPERATION_LIST_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x3


# instance fields
.field private encodedOperations_:Lcom/google/protobuf/ByteString;

.field private operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 524
    new-instance v0, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;-><init>()V

    .line 527
    sput-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    .line 528
    const-class v1, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 68
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->encodedOperations_:Lcom/google/protobuf/ByteString;

    .line 69
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Tezos$SigningInput;
    .locals 1

    .line 62
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Tezos$SigningInput;Lwallet/core/jni/proto/Tezos$OperationList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->setOperationList(Lwallet/core/jni/proto/Tezos$OperationList;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Tezos$SigningInput;Lwallet/core/jni/proto/Tezos$OperationList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->mergeOperationList(Lwallet/core/jni/proto/Tezos$OperationList;)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Tezos$SigningInput;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$SigningInput;->clearOperationList()V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Tezos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->setEncodedOperations(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Tezos$SigningInput;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$SigningInput;->clearEncodedOperations()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Tezos$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Tezos$SigningInput;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method private clearEncodedOperations()V
    .locals 1

    .line 173
    invoke-static {}, Lwallet/core/jni/proto/Tezos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->getEncodedOperations()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->encodedOperations_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearOperationList()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 212
    invoke-static {}, Lwallet/core/jni/proto/Tezos$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$SigningInput;
    .locals 1

    .line 533
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object v0
.end method

.method private mergeOperationList(Lwallet/core/jni/proto/Tezos$OperationList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lwallet/core/jni/proto/Tezos$OperationList;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$OperationList;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

    .line 120
    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->newBuilder(Lwallet/core/jni/proto/Tezos$OperationList;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$OperationList$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$OperationList;

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

    goto :goto_0

    .line 122
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1

    .line 290
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$SigningInput;)Lwallet/core/jni/proto/Tezos$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 293
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 267
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 273
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 231
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 238
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 278
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 285
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 255
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 262
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 218
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 225
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 243
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$SigningInput;
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

    .line 250
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$SigningInput;",
            ">;"
        }
    .end annotation

    .line 539
    sget-object v0, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEncodedOperations(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->encodedOperations_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setOperationList(Lwallet/core/jni/proto/Tezos$OperationList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

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

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 473
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 517
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 511
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 496
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 498
    const-class p2, Lwallet/core/jni/proto/Tezos$SigningInput;

    monitor-enter p2

    .line 499
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 501
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 504
    sput-object p1, Lwallet/core/jni/proto/Tezos$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 506
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

    .line 493
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "operationList_"

    aput-object v0, p1, p3

    const-string p3, "encodedOperations_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\n\u0003\n"

    .line 489
    sget-object p3, Lwallet/core/jni/proto/Tezos$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 478
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 475
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$SigningInput;-><init>()V

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

.method public getEncodedOperations()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 149
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->encodedOperations_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOperationList()Lwallet/core/jni/proto/Tezos$OperationList;
    .locals 1

    .line 93
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Tezos$OperationList;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$OperationList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 188
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasOperationList()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$SigningInput;->operationList_:Lwallet/core/jni/proto/Tezos$OperationList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
