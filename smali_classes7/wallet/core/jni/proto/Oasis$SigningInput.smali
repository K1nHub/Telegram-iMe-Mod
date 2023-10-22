.class public final Lwallet/core/jni/proto/Oasis$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Oasis.java"

# interfaces
.implements Lwallet/core/jni/proto/Oasis$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Oasis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Oasis$SigningInput$Builder;,
        Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Oasis$SigningInput;",
        "Lwallet/core/jni/proto/Oasis$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Oasis$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Oasis$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final TRANSFER_FIELD_NUMBER:I = 0x2


# instance fields
.field private messageCase_:I

.field private message_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1442
    new-instance v0, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;-><init>()V

    .line 1445
    sput-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    .line 1446
    const-class v1, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1051
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1054
    iput v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    .line 1052
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1800()Lwallet/core/jni/proto/Oasis$SigningInput;
    .locals 1

    .line 1046
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object v0
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Oasis$SigningInput;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$SigningInput;->clearMessage()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Oasis$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Oasis$SigningInput;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Oasis$SigningInput;Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$SigningInput;->setTransfer(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Oasis$SigningInput;Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0

    .line 1046
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Oasis$SigningInput;->mergeTransfer(Lwallet/core/jni/proto/Oasis$TransferMessage;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Oasis$SigningInput;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lwallet/core/jni/proto/Oasis$SigningInput;->clearTransfer()V

    return-void
.end method

.method private clearMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 1091
    iput v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    const/4 v0, 0x0

    .line 1092
    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1131
    invoke-static {}, Lwallet/core/jni/proto/Oasis$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Oasis$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Oasis$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 1178
    iget v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1179
    iput v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    const/4 v0, 0x0

    .line 1180
    iput-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Oasis$SigningInput;
    .locals 1

    .line 1451
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object v0
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1165
    iget v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    .line 1166
    invoke-static {}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1167
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$TransferMessage;->newBuilder(Lwallet/core/jni/proto/Oasis$TransferMessage;)Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;

    move-result-object v0

    .line 1168
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Oasis$TransferMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 1170
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    .line 1172
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1

    .line 1259
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Oasis$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Oasis$SigningInput;)Lwallet/core/jni/proto/Oasis$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1262
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1236
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1242
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1200
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1207
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1247
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1254
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1224
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1231
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1187
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1194
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1212
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Oasis$SigningInput;
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

    .line 1219
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Oasis$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1457
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

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

    .line 1118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1120
    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Oasis$TransferMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1157
    iput-object p1, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1158
    iput p1, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

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

    .line 1390
    sget-object p2, Lwallet/core/jni/proto/Oasis$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1435
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1429
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1414
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Oasis$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1416
    const-class p2, Lwallet/core/jni/proto/Oasis$SigningInput;

    monitor-enter p2

    .line 1417
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Oasis$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1419
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1422
    sput-object p1, Lwallet/core/jni/proto/Oasis$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1424
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

    .line 1411
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "message_"

    aput-object v0, p1, p3

    const-string p3, "messageCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1398
    const-class p3, Lwallet/core/jni/proto/Oasis$TransferMessage;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002<\u0000"

    .line 1407
    sget-object p3, Lwallet/core/jni/proto/Oasis$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1395
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Oasis$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Oasis$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Oasis$1;)V

    return-object p1

    .line 1392
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Oasis$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Oasis$SigningInput;-><init>()V

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

.method public getMessageCase()Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
    .locals 1

    .line 1086
    iget v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->forNumber(I)Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1107
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Oasis$TransferMessage;
    .locals 2

    .line 1147
    iget v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1148
    iget-object v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Oasis$TransferMessage;

    return-object v0

    .line 1150
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Oasis$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Oasis$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 1140
    iget v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput;->messageCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
