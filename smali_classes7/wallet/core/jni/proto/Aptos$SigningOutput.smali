.class public final Lwallet/core/jni/proto/Aptos$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$SigningOutput;",
        "Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTHENTICATOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x3

.field public static final JSON_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_TXN_FIELD_NUMBER:I = 0x1


# instance fields
.field private authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

.field private encoded_:Lcom/google/protobuf/ByteString;

.field private json_:Ljava/lang/String;

.field private rawTxn_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8503
    new-instance v0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;-><init>()V

    .line 8506
    sput-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    .line 8507
    const-class v1, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7909
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7910
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->rawTxn_:Lcom/google/protobuf/ByteString;

    .line 7911
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 7912
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14200()Lwallet/core/jni/proto/Aptos$SigningOutput;
    .locals 1

    .line 7904
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object v0
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Aptos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7904
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->setRawTxn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/Aptos$SigningOutput;)V
    .locals 0

    .line 7904
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->clearRawTxn()V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/Aptos$SigningOutput;Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V
    .locals 0

    .line 7904
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->setAuthenticator(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/Aptos$SigningOutput;Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V
    .locals 0

    .line 7904
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->mergeAuthenticator(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V

    return-void
.end method

.method static synthetic access$14700(Lwallet/core/jni/proto/Aptos$SigningOutput;)V
    .locals 0

    .line 7904
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->clearAuthenticator()V

    return-void
.end method

.method static synthetic access$14800(Lwallet/core/jni/proto/Aptos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7904
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->setEncoded(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/Aptos$SigningOutput;)V
    .locals 0

    .line 7904
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/Aptos$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 7904
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->setJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15100(Lwallet/core/jni/proto/Aptos$SigningOutput;)V
    .locals 0

    .line 7904
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->clearJson()V

    return-void
.end method

.method static synthetic access$15200(Lwallet/core/jni/proto/Aptos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7904
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;->setJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAuthenticator()V
    .locals 1

    const/4 v0, 0x0

    .line 8015
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 8055
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearJson()V
    .locals 1

    .line 8108
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private clearRawTxn()V
    .locals 1

    .line 7950
    invoke-static {}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$SigningOutput;->getRawTxn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->rawTxn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$SigningOutput;
    .locals 1

    .line 8512
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object v0
.end method

.method private mergeAuthenticator(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7998
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7999
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    if-eqz v0, :cond_0

    .line 8000
    invoke-static {}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8001
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    .line 8002
    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->newBuilder(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    goto :goto_0

    .line 8004
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1

    .line 8200
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$SigningOutput;)Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8203
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8177
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8183
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8141
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8148
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8188
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8195
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8165
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8172
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8128
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8135
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8153
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$SigningOutput;
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

    .line 8160
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 8518
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAuthenticator(Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7985
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7986
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    return-void
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

    .line 8042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8044
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8095
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8097
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setJsonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8120
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8121
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setRawTxn(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7937
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7939
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->rawTxn_:Lcom/google/protobuf/ByteString;

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

    .line 8451
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8496
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8490
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8475
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8477
    const-class p2, Lwallet/core/jni/proto/Aptos$SigningOutput;

    monitor-enter p2

    .line 8478
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8480
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8483
    sput-object p1, Lwallet/core/jni/proto/Aptos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 8485
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

    .line 8472
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "rawTxn_"

    aput-object v0, p1, p3

    const-string p3, "authenticator_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "encoded_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "json_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\t\u0003\n\u0004\u0208"

    .line 8468
    sget-object p3, Lwallet/core/jni/proto/Aptos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8456
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 8453
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$SigningOutput;-><init>()V

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

.method public getAuthenticator()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;
    .locals 1

    .line 7975
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8031
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 8070
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->json_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8083
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->json_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRawTxn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7926
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->rawTxn_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAuthenticator()Z
    .locals 1

    .line 7964
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$SigningOutput;->authenticator_:Lwallet/core/jni/proto/Aptos$TransactionAuthenticator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
