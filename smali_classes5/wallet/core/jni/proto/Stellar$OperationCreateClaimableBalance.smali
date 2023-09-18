.class public final Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationCreateClaimableBalance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;",
        "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalanceOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field public static final ASSET_FIELD_NUMBER:I = 0x1

.field public static final CLAIMANTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount_:J

.field private asset_:Lwallet/core/jni/proto/Stellar$Asset;

.field private claimants_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3308
    new-instance v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;-><init>()V

    .line 3311
    sput-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    .line 3312
    const-class v1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2644
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2645
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$4000()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
    .locals 1

    .line 2639
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object v0
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->setAsset(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V
    .locals 0

    .line 2639
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->clearAsset()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;J)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->setAmount(J)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V
    .locals 0

    .line 2639
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->clearAmount()V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;ILwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->setClaimants(ILwallet/core/jni/proto/Stellar$Claimant;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Lwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->addClaimants(Lwallet/core/jni/proto/Stellar$Claimant;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;ILwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->addClaimants(ILwallet/core/jni/proto/Stellar$Claimant;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;Ljava/lang/Iterable;)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->addAllClaimants(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)V
    .locals 0

    .line 2639
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->clearClaimants()V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;I)V
    .locals 0

    .line 2639
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->removeClaimants(I)V

    return-void
.end method

.method private addAllClaimants(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;)V"
        }
    .end annotation

    .line 2863
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->ensureClaimantsIsMutable()V

    .line 2864
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addClaimants(ILwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2850
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2851
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->ensureClaimantsIsMutable()V

    .line 2852
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addClaimants(Lwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2837
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2838
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->ensureClaimantsIsMutable()V

    .line 2839
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2748
    iput-wide v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->amount_:J

    return-void
.end method

.method private clearAsset()V
    .locals 1

    const/4 v0, 0x0

    .line 2709
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    return-void
.end method

.method private clearClaimants()V
    .locals 1

    .line 2875
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureClaimantsIsMutable()V
    .locals 2

    .line 2809
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2810
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2812
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
    .locals 1

    .line 3317
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object v0
.end method

.method private mergeAsset(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2692
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2693
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-eqz v0, :cond_0

    .line 2694
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2695
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    .line 2696
    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$Asset;->newBuilder(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$Asset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Asset;

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    goto :goto_0

    .line 2698
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1

    .line 2964
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2967
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2941
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2947
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2905
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2912
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2952
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2959
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2929
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2936
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2892
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2899
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2917
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;
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

    .line 2924
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;",
            ">;"
        }
    .end annotation

    .line 3323
    sget-object v0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeClaimants(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2885
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->ensureClaimantsIsMutable()V

    .line 2886
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2737
    iput-wide p1, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->amount_:J

    return-void
.end method

.method private setAsset(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2680
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    return-void
.end method

.method private setClaimants(ILwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2825
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2826
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->ensureClaimantsIsMutable()V

    .line 2827
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 3256
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3295
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3280
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3282
    const-class p2, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    monitor-enter p2

    .line 3283
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3285
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3288
    sput-object p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->PARSER:Lcom/google/protobuf/Parser;

    .line 3290
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

    .line 3277
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "asset_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "claimants_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 3264
    const-class p3, Lwallet/core/jni/proto/Stellar$Claimant;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\t\u0002\u0002\u0003\u001b"

    .line 3273
    sget-object p3, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3261
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 3258
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 2725
    iget-wide v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->amount_:J

    return-wide v0
.end method

.method public getAsset()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 2669
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClaimants(I)Lwallet/core/jni/proto/Stellar$Claimant;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2795
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p1
.end method

.method public getClaimantsCount()I
    .locals 1

    .line 2784
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClaimantsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;"
        }
    .end annotation

    .line 2762
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getClaimantsOrBuilder(I)Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2806
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;

    return-object p1
.end method

.method public getClaimantsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2773
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->claimants_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 2658
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$OperationCreateClaimableBalance;->asset_:Lwallet/core/jni/proto/Stellar$Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
