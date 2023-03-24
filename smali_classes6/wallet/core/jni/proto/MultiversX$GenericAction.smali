.class public final Lwallet/core/jni/proto/MultiversX$GenericAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$GenericActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/MultiversX$GenericAction;",
        "Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$GenericActionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNTS_FIELD_NUMBER:I = 0x1

.field public static final DATA_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

.field public static final OPTIONS_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$GenericAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

.field private data_:Ljava/lang/String;

.field private options_:I

.field private value_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 848
    new-instance v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-direct {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;-><init>()V

    .line 851
    sput-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    .line 852
    const-class v1, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->value_:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->data_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/MultiversX$GenericAction;
    .locals 1

    .line 103
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/MultiversX$GenericAction;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/MultiversX$GenericAction;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->setVersion(I)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->clearVersion()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/MultiversX$GenericAction;I)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->setOptions(I)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->clearOptions()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/MultiversX$GenericAction;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->clearAccounts()V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/MultiversX$GenericAction;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->clearValue()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/MultiversX$GenericAction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->setValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/MultiversX$GenericAction;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->setData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->clearData()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/MultiversX$GenericAction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;->setDataBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAccounts()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 295
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$GenericAction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->data_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->options_:I

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 228
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$GenericAction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->value_:Ljava/lang/String;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/MultiversX$GenericAction;
    .locals 1

    .line 857
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object v0
.end method

.method private mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    .line 161
    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->newBuilder(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    goto :goto_0

    .line 163
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1

    .line 469
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/MultiversX$GenericAction;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 472
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 446
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 452
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 410
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 417
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 457
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 464
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 434
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 441
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 397
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 404
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 422
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$GenericAction;
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

    .line 429
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$GenericAction;",
            ">;"
        }
    .end annotation

    .line 863
    sget-object v0, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-void
.end method

.method private setData(Ljava/lang/String;)V
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
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->data_:Ljava/lang/String;

    return-void
.end method

.method private setDataBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 307
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 308
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->data_:Ljava/lang/String;

    return-void
.end method

.method private setOptions(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 378
    iput p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->options_:I

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

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->value_:Ljava/lang/String;

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

    .line 240
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 241
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->value_:Ljava/lang/String;

    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 336
    iput p1, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->version_:I

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

    .line 795
    sget-object p2, Lwallet/core/jni/proto/MultiversX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 841
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 835
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 820
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/MultiversX$GenericAction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 822
    const-class p2, Lwallet/core/jni/proto/MultiversX$GenericAction;

    monitor-enter p2

    .line 823
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/MultiversX$GenericAction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 825
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 828
    sput-object p1, Lwallet/core/jni/proto/MultiversX$GenericAction;->PARSER:Lcom/google/protobuf/Parser;

    .line 830
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

    .line 817
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "accounts_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "version_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "options_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0208\u0004\u000b\u0005\u000b"

    .line 813
    sget-object p3, Lwallet/core/jni/proto/MultiversX$GenericAction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 800
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;-><init>(Lwallet/core/jni/proto/MultiversX$1;)V

    return-object p1

    .line 797
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-direct {p1}, Lwallet/core/jni/proto/MultiversX$GenericAction;-><init>()V

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

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 134
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public getDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 270
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->data_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .line 364
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->options_:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 203
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 324
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->version_:I

    return v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$GenericAction;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
