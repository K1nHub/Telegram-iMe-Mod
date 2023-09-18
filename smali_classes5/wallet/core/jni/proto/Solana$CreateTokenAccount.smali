.class public final Lwallet/core/jni/proto/Solana$CreateTokenAccount;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$CreateTokenAccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateTokenAccount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$CreateTokenAccount;",
        "Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$CreateTokenAccountOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

.field public static final MAIN_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$CreateTokenAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final TOKEN_MINT_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private mainAddress_:Ljava/lang/String;

.field private tokenAddress_:Ljava/lang/String;

.field private tokenMintAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4270
    new-instance v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;-><init>()V

    .line 4273
    sput-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    .line 4274
    const-class v1, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3700
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3701
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->mainAddress_:Ljava/lang/String;

    .line 3702
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenMintAddress_:Ljava/lang/String;

    .line 3703
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5900()Lwallet/core/jni/proto/Solana$CreateTokenAccount;
    .locals 1

    .line 3695
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object v0
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Ljava/lang/String;)V
    .locals 0

    .line 3695
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->setMainAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V
    .locals 0

    .line 3695
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->clearMainAddress()V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3695
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->setMainAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Ljava/lang/String;)V
    .locals 0

    .line 3695
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->setTokenMintAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V
    .locals 0

    .line 3695
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->clearTokenMintAddress()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3695
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Ljava/lang/String;)V
    .locals 0

    .line 3695
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->setTokenAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)V
    .locals 0

    .line 3695
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->clearTokenAddress()V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Solana$CreateTokenAccount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3695
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->setTokenAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearMainAddress()V
    .locals 1

    .line 3755
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getMainAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->mainAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenAddress()V
    .locals 1

    .line 3889
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getTokenAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenMintAddress()V
    .locals 1

    .line 3822
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->getTokenMintAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenMintAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateTokenAccount;
    .locals 1

    .line 4279
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1

    .line 3981
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$CreateTokenAccount;)Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3984
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3958
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3964
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3922
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3929
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3969
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3976
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3946
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3953
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3909
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3916
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3934
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateTokenAccount;
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

    .line 3941
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$CreateTokenAccount;",
            ">;"
        }
    .end annotation

    .line 4285
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMainAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3742
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3744
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->mainAddress_:Ljava/lang/String;

    return-void
.end method

.method private setMainAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3767
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3768
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->mainAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3876
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3878
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3901
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3902
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenMintAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3809
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3811
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenMintAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3834
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3835
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenMintAddress_:Ljava/lang/String;

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

    .line 4219
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4257
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4242
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4244
    const-class p2, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    monitor-enter p2

    .line 4245
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4247
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4250
    sput-object p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->PARSER:Lcom/google/protobuf/Parser;

    .line 4252
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

    .line 4239
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "mainAddress_"

    aput-object v0, p1, p3

    const-string p3, "tokenMintAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "tokenAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 4235
    sget-object p3, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4224
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$CreateTokenAccount$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 4221
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$CreateTokenAccount;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$CreateTokenAccount;-><init>()V

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

.method public getMainAddress()Ljava/lang/String;
    .locals 1

    .line 3717
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->mainAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3730
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->mainAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenAddress()Ljava/lang/String;
    .locals 1

    .line 3851
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3864
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddress()Ljava/lang/String;
    .locals 1

    .line 3784
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenMintAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3797
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateTokenAccount;->tokenMintAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
