.class public final Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$EGLDTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EGLDTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/MultiversX$EGLDTransfer;",
        "Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$EGLDTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNTS_FIELD_NUMBER:I = 0x1

.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$EGLDTransfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

.field private amount_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1354
    new-instance v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;-><init>()V

    .line 1357
    sput-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    .line 1358
    const-class v1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 922
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 923
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1500()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
    .locals 1

    .line 917
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object v0
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 917
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->setAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 917
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->mergeAccounts(Lwallet/core/jni/proto/MultiversX$Accounts;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V
    .locals 0

    .line 917
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->clearAccounts()V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Ljava/lang/String;)V
    .locals 0

    .line 917
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V
    .locals 0

    .line 917
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 917
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAccounts()V
    .locals 1

    const/4 v0, 0x0

    .line 987
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 1041
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->amount_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
    .locals 1

    .line 1363
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

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

    .line 970
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    .line 972
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 973
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    .line 974
    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->newBuilder(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    goto :goto_0

    .line 976
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1

    .line 1133
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1136
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1110
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1116
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1074
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1081
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1121
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1128
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1098
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1105
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1061
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1068
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1086
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
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

    .line 1093
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$EGLDTransfer;",
            ">;"
        }
    .end annotation

    .line 1369
    sget-object v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

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

    .line 957
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-void
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

    .line 1028
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->amount_:Ljava/lang/String;

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

    .line 1053
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1054
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->amount_:Ljava/lang/String;

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

    .line 1304
    sget-object p2, Lwallet/core/jni/proto/MultiversX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1347
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1341
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1326
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1328
    const-class p2, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    monitor-enter p2

    .line 1329
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1331
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1334
    sput-object p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1336
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

    .line 1323
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "accounts_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u0208"

    .line 1319
    sget-object p3, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1309
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;-><init>(Lwallet/core/jni/proto/MultiversX$1;)V

    return-object p1

    .line 1306
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;-><init>()V

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

.method public getAccounts()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 947
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 1003
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1016
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAccounts()Z
    .locals 1

    .line 936
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->accounts_:Lwallet/core/jni/proto/MultiversX$Accounts;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
