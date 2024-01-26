.class public final Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$AuthGrantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthGrant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;,
        Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthGrantOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

.field public static final EXPIRATION_FIELD_NUMBER:I = 0x4

.field public static final GRANTEE_FIELD_NUMBER:I = 0x2

.field public static final GRANTER_FIELD_NUMBER:I = 0x1

.field public static final GRANT_STAKE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private expiration_:J

.field private grantTypeCase_:I

.field private grantType_:Ljava/lang/Object;

.field private grantee_:Ljava/lang/String;

.field private granter_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15575
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;-><init>()V

    .line 15578
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    .line 15579
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15014
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 15018
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    const-string v0, ""

    .line 15015
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->granter_:Ljava/lang/String;

    .line 15016
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantee_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26900()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
    .locals 1

    .line 15009
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object v0
.end method

.method static synthetic access$27000(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0

    .line 15009
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->clearGrantType()V

    return-void
.end method

.method static synthetic access$27100(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Ljava/lang/String;)V
    .locals 0

    .line 15009
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->setGranter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27200(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0

    .line 15009
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->clearGranter()V

    return-void
.end method

.method static synthetic access$27300(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15009
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->setGranterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$27400(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Ljava/lang/String;)V
    .locals 0

    .line 15009
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->setGrantee(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27500(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0

    .line 15009
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->clearGrantee()V

    return-void
.end method

.method static synthetic access$27600(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15009
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->setGranteeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$27700(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0

    .line 15009
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->setGrantStake(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-void
.end method

.method static synthetic access$27800(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0

    .line 15009
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->mergeGrantStake(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-void
.end method

.method static synthetic access$27900(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0

    .line 15009
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->clearGrantStake()V

    return-void
.end method

.method static synthetic access$28000(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;J)V
    .locals 0

    .line 15009
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->setExpiration(J)V

    return-void
.end method

.method static synthetic access$28100(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V
    .locals 0

    .line 15009
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->clearExpiration()V

    return-void
.end method

.method private clearExpiration()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 15226
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->expiration_:J

    return-void
.end method

.method private clearGrantStake()V
    .locals 2

    .line 15197
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 15198
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    const/4 v0, 0x0

    .line 15199
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGrantType()V
    .locals 1

    const/4 v0, 0x0

    .line 15055
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    const/4 v0, 0x0

    .line 15056
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    return-void
.end method

.method private clearGrantee()V
    .locals 1

    .line 15140
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGrantee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantee_:Ljava/lang/String;

    return-void
.end method

.method private clearGranter()V
    .locals 1

    .line 15093
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGranter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->granter_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
    .locals 1

    .line 15584
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object v0
.end method

.method private mergeGrantStake(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15184
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    .line 15185
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 15186
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;

    move-result-object v0

    .line 15187
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    goto :goto_0

    .line 15189
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    .line 15191
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1

    .line 15304
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 15307
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15281
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15287
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15245
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15252
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15292
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15299
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15269
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15276
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15232
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15239
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15257
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
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

    .line 15264
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;",
            ">;"
        }
    .end annotation

    .line 15590
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExpiration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15219
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->expiration_:J

    return-void
.end method

.method private setGrantStake(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15176
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 15177
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    return-void
.end method

.method private setGrantee(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15133
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantee_:Ljava/lang/String;

    return-void
.end method

.method private setGranteeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15148
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 15149
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantee_:Ljava/lang/String;

    return-void
.end method

.method private setGranter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15084
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15086
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->granter_:Ljava/lang/String;

    return-void
.end method

.method private setGranterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15101
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 15102
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->granter_:Ljava/lang/String;

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

    .line 15521
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 15568
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 15562
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15547
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 15549
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    monitor-enter p2

    .line 15550
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 15552
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 15555
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->PARSER:Lcom/google/protobuf/Parser;

    .line 15557
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

    .line 15544
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "grantType_"

    aput-object v0, p1, p3

    const-string p3, "grantTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "granter_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "grantee_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 15529
    const-class p3, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "expiration_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003<\u0000\u0004\u0002"

    .line 15540
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15526
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 15523
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;-><init>()V

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

.method public getExpiration()J
    .locals 2

    .line 15211
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->expiration_:J

    return-wide v0
.end method

.method public getGrantStake()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
    .locals 2

    .line 15166
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15167
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantType_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object v0

    .line 15169
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    move-result-object v0

    return-object v0
.end method

.method public getGrantTypeCase()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
    .locals 1

    .line 15050
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getGrantee()Ljava/lang/String;
    .locals 1

    .line 15114
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantee_:Ljava/lang/String;

    return-object v0
.end method

.method public getGranteeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15123
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantee_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGranter()Ljava/lang/String;
    .locals 1

    .line 15067
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->granter_:Ljava/lang/String;

    return-object v0
.end method

.method public getGranterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15076
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->granter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasGrantStake()Z
    .locals 2

    .line 15159
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->grantTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
