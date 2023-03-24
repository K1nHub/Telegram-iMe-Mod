.class public final Lwallet/core/jni/proto/Nano$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nano.java"

# interfaces
.implements Lwallet/core/jni/proto/Nano$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nano$SigningInput$Builder;,
        Lwallet/core/jni/proto/Nano$SigningInput$LinkOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nano$SigningInput;",
        "Lwallet/core/jni/proto/Nano$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nano$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final BALANCE_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

.field public static final LINK_BLOCK_FIELD_NUMBER:I = 0x3

.field public static final LINK_RECIPIENT_FIELD_NUMBER:I = 0x4

.field public static final PARENT_BLOCK_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nano$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final REPRESENTATIVE_FIELD_NUMBER:I = 0x5

.field public static final WORK_FIELD_NUMBER:I = 0x7


# instance fields
.field private balance_:Ljava/lang/String;

.field private linkOneofCase_:I

.field private linkOneof_:Ljava/lang/Object;

.field private parentBlock_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private representative_:Ljava/lang/String;

.field private work_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1222
    new-instance v0, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nano$SigningInput;-><init>()V

    .line 1225
    sput-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    .line 1226
    const-class v1, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    .line 158
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    .line 159
    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->parentBlock_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 160
    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->representative_:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->balance_:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->work_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Nano$SigningInput;
    .locals 1

    .line 152
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearLinkOneof()V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setLinkRecipientBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setRepresentative(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearRepresentative()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setRepresentativeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setBalance(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearBalance()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setBalanceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setWork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearWork()V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setWorkBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setParentBlock(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearParentBlock()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Nano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setLinkBlock(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearLinkBlock()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Nano$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nano$SigningInput;->setLinkRecipient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Nano$SigningInput;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lwallet/core/jni/proto/Nano$SigningInput;->clearLinkRecipient()V

    return-void
.end method

.method private clearBalance()V
    .locals 1

    .line 545
    invoke-static {}, Lwallet/core/jni/proto/Nano$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nano$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->balance_:Ljava/lang/String;

    return-void
.end method

.method private clearLinkBlock()V
    .locals 2

    .line 334
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 335
    iput v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLinkOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearLinkRecipient()V
    .locals 2

    .line 408
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 409
    iput v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearParentBlock()V
    .locals 1

    .line 282
    invoke-static {}, Lwallet/core/jni/proto/Nano$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nano$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getParentBlock()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->parentBlock_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 243
    invoke-static {}, Lwallet/core/jni/proto/Nano$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nano$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRepresentative()V
    .locals 1

    .line 478
    invoke-static {}, Lwallet/core/jni/proto/Nano$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nano$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getRepresentative()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->representative_:Ljava/lang/String;

    return-void
.end method

.method private clearWork()V
    .locals 1

    .line 612
    invoke-static {}, Lwallet/core/jni/proto/Nano$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nano$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nano$SigningInput;->getWork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->work_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nano$SigningInput;
    .locals 1

    .line 1231
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1

    .line 704
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nano$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nano$SigningInput;)Lwallet/core/jni/proto/Nano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 707
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 681
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 687
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 645
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 652
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 692
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 699
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 669
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 676
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 632
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 639
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 657
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nano$SigningInput;
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

    .line 664
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nano$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1237
    sget-object v0, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBalance(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->balance_:Ljava/lang/String;

    return-void
.end method

.method private setBalanceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 557
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 558
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->balance_:Ljava/lang/String;

    return-void
.end method

.method private setLinkBlock(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    .line 323
    iput v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    .line 324
    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    return-void
.end method

.method private setLinkRecipient(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    .line 397
    iput v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    .line 398
    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    return-void
.end method

.method private setLinkRecipientBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 423
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 424
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 425
    iput p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    return-void
.end method

.method private setParentBlock(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->parentBlock_:Lcom/google/protobuf/ByteString;

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

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRepresentative(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->representative_:Ljava/lang/String;

    return-void
.end method

.method private setRepresentativeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 490
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 491
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->representative_:Ljava/lang/String;

    return-void
.end method

.method private setWork(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->work_:Ljava/lang/String;

    return-void
.end method

.method private setWorkBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 624
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 625
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nano$SigningInput;->work_:Ljava/lang/String;

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

    .line 1167
    sget-object p2, Lwallet/core/jni/proto/Nano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1215
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1209
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1194
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nano$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1196
    const-class p2, Lwallet/core/jni/proto/Nano$SigningInput;

    monitor-enter p2

    .line 1197
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nano$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1199
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1202
    sput-object p1, Lwallet/core/jni/proto/Nano$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1204
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

    .line 1191
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "linkOneof_"

    aput-object v0, p1, p3

    const-string p3, "linkOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "parentBlock_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "representative_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "balance_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "work_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\n\u0002\n\u0003=\u0000\u0004\u023b\u0000\u0005\u0208\u0006\u0208\u0007\u0208"

    .line 1187
    sget-object p3, Lwallet/core/jni/proto/Nano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1172
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nano$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nano$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Nano$1;)V

    return-object p1

    .line 1169
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nano$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nano$SigningInput;-><init>()V

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

.method public getBalance()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->balance_:Ljava/lang/String;

    return-object v0
.end method

.method public getBalanceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 520
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->balance_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLinkBlock()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 308
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 309
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 311
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLinkOneofCase()Lwallet/core/jni/proto/Nano$SigningInput$LinkOneofCase;
    .locals 1

    .line 198
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Nano$SigningInput$LinkOneofCase;->forNumber(I)Lwallet/core/jni/proto/Nano$SigningInput$LinkOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getLinkRecipient()Ljava/lang/String;
    .locals 2

    .line 364
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getLinkRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 381
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 384
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParentBlock()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 258
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->parentBlock_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 219
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRepresentative()Ljava/lang/String;
    .locals 1

    .line 440
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->representative_:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentativeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 453
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->representative_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWork()Ljava/lang/String;
    .locals 1

    .line 574
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->work_:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 587
    iget-object v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->work_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLinkBlock()Z
    .locals 2

    .line 296
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLinkRecipient()Z
    .locals 2

    .line 351
    iget v0, p0, Lwallet/core/jni/proto/Nano$SigningInput;->linkOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
