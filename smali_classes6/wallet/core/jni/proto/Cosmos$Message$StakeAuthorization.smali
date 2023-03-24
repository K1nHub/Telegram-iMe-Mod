.class public final Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorizationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakeAuthorization"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;,
        Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsCase;,
        Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;,
        Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorizationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOW_LIST_FIELD_NUMBER:I = 0x2

.field public static final AUTHORIZATION_TYPE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

.field public static final DENY_LIST_FIELD_NUMBER:I = 0x3

.field public static final MAX_TOKENS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authorizationType_:I

.field private maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

.field private validatorsCase_:I

.field private validators_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14936
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;-><init>()V

    .line 14939
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    .line 14940
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13745
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 14149
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    return-void
.end method

.method static synthetic access$25400()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
    .locals 1

    .line 13740
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object v0
.end method

.method static synthetic access$25500(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0

    .line 13740
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->clearValidators()V

    return-void
.end method

.method static synthetic access$25600(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->setMaxTokens(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$25700(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->mergeMaxTokens(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$25800(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0

    .line 13740
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->clearMaxTokens()V

    return-void
.end method

.method static synthetic access$25900(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->setAllowList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-void
.end method

.method static synthetic access$26000(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->mergeAllowList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-void
.end method

.method static synthetic access$26100(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0

    .line 13740
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->clearAllowList()V

    return-void
.end method

.method static synthetic access$26200(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->setDenyList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-void
.end method

.method static synthetic access$26300(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->mergeDenyList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-void
.end method

.method static synthetic access$26400(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0

    .line 13740
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->clearDenyList()V

    return-void
.end method

.method static synthetic access$26500(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;I)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->setAuthorizationTypeValue(I)V

    return-void
.end method

.method static synthetic access$26600(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;)V
    .locals 0

    .line 13740
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->setAuthorizationType(Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;)V

    return-void
.end method

.method static synthetic access$26700(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V
    .locals 0

    .line 13740
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->clearAuthorizationType()V

    return-void
.end method

.method private clearAllowList()V
    .locals 2

    .line 14332
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 14333
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v0, 0x0

    .line 14334
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAuthorizationType()V
    .locals 1

    const/4 v0, 0x0

    .line 14467
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->authorizationType_:I

    return-void
.end method

.method private clearDenyList()V
    .locals 2

    .line 14402
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 14403
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v0, 0x0

    .line 14404
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMaxTokens()V
    .locals 1

    const/4 v0, 0x0

    .line 14259
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    return-void
.end method

.method private clearValidators()V
    .locals 1

    const/4 v0, 0x0

    .line 14188
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v0, 0x0

    .line 14189
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
    .locals 1

    .line 14945
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object v0
.end method

.method private mergeAllowList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14314
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    .line 14315
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 14316
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;

    move-result-object v0

    .line 14317
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    goto :goto_0

    .line 14319
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    .line 14321
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    return-void
.end method

.method private mergeDenyList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14384
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14385
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    .line 14386
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 14387
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->newBuilder(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;

    move-result-object v0

    .line 14388
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    goto :goto_0

    .line 14390
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    .line 14392
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    return-void
.end method

.method private mergeMaxTokens(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14242
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    .line 14243
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14244
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    .line 14245
    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Amount;->newBuilder(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    goto :goto_0

    .line 14247
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1

    .line 14545
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 14548
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14522
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14528
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14486
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14493
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14533
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14540
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14510
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14517
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14473
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14480
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14498
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
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

    .line 14505
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;",
            ">;"
        }
    .end annotation

    .line 14951
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14300
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14301
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 14302
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    return-void
.end method

.method private setAuthorizationType(Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14455
    invoke-virtual {p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->authorizationType_:I

    return-void
.end method

.method private setAuthorizationTypeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14444
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->authorizationType_:I

    return-void
.end method

.method private setDenyList(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14373
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 14374
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    return-void
.end method

.method private setMaxTokens(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14228
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 14882
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14929
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 14923
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14908
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 14910
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    monitor-enter p2

    .line 14911
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 14913
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 14916
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->PARSER:Lcom/google/protobuf/Parser;

    .line 14918
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

    .line 14905
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "validators_"

    aput-object v1, p1, v0

    const-string v0, "validatorsCase_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "maxTokens_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const/4 p2, 0x5

    const-string p3, "authorizationType_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002<\u0000\u0003<\u0000\u0004\u000c"

    .line 14901
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14887
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;

    invoke-direct {p1, v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 14884
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;-><init>()V

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

.method public getAllowList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 2

    .line 14286
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 14287
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object v0

    .line 14289
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorizationType()Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
    .locals 1

    .line 14432
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->authorizationType_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14433
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    :cond_0
    return-object v0
.end method

.method public getAuthorizationTypeValue()I
    .locals 1

    .line 14420
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->authorizationType_:I

    return v0
.end method

.method public getDenyList()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
    .locals 2

    .line 14359
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 14360
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validators_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    return-object v0

    .line 14362
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTokens()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 14216
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValidatorsCase()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsCase;
    .locals 1

    .line 14183
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsCase;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAllowList()Z
    .locals 2

    .line 14274
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDenyList()Z
    .locals 2

    .line 14348
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->validatorsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxTokens()Z
    .locals 1

    .line 14204
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;->maxTokens_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
