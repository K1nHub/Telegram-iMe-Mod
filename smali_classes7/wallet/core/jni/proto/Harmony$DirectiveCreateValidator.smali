.class public final Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveCreateValidatorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectiveCreateValidator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidatorOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x8

.field public static final COMMISSION_RATES_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final MAX_TOTAL_DELEGATION_FIELD_NUMBER:I = 0x5

.field public static final MIN_SELF_DELEGATION_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOT_KEY_SIGS_FIELD_NUMBER:I = 0x7

.field public static final SLOT_PUB_KEYS_FIELD_NUMBER:I = 0x6

.field public static final VALIDATOR_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

.field private description_:Lwallet/core/jni/proto/Harmony$Description;

.field private maxTotalDelegation_:Lcom/google/protobuf/ByteString;

.field private minSelfDelegation_:Lcom/google/protobuf/ByteString;

.field private slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private validatorAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6155
    new-instance v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;-><init>()V

    .line 6158
    sput-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    .line 6159
    const-class v1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5128
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5129
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->validatorAddress_:Ljava/lang/String;

    .line 5130
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    .line 5131
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

    .line 5132
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5133
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5134
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
    .locals 1

    .line 5123
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object v0
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Ljava/lang/String;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setValidatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearValidatorAddress()V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setDescription(Lwallet/core/jni/proto/Harmony$Description;)V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->mergeDescription(Lwallet/core/jni/proto/Harmony$Description;)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearDescription()V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$CommissionRate;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setCommissionRates(Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lwallet/core/jni/proto/Harmony$CommissionRate;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->mergeCommissionRates(Lwallet/core/jni/proto/Harmony$CommissionRate;)V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearCommissionRates()V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setMinSelfDelegation(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearMinSelfDelegation()V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setMaxTotalDelegation(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearMaxTotalDelegation()V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setSlotPubKeys(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->addSlotPubKeys(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Ljava/lang/Iterable;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->addAllSlotPubKeys(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearSlotPubKeys()V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setSlotKeySigs(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->addSlotKeySigs(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Ljava/lang/Iterable;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->addAllSlotKeySigs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearSlotKeySigs()V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5123
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 5123
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->clearAmount()V

    return-void
.end method

.method private addAllSlotKeySigs(Ljava/lang/Iterable;)V
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
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 5522
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->ensureSlotKeySigsIsMutable()V

    .line 5523
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllSlotPubKeys(Ljava/lang/Iterable;)V
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
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 5450
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->ensureSlotPubKeysIsMutable()V

    .line 5451
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addSlotKeySigs(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5512
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5513
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->ensureSlotKeySigsIsMutable()V

    .line 5514
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlotPubKeys(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5440
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5441
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->ensureSlotPubKeysIsMutable()V

    .line 5442
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 5557
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCommissionRates()V
    .locals 1

    const/4 v0, 0x0

    .line 5331
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-void
.end method

.method private clearDescription()V
    .locals 1

    const/4 v0, 0x0

    .line 5265
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    return-void
.end method

.method private clearMaxTotalDelegation()V
    .locals 1

    .line 5386
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getMaxTotalDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMinSelfDelegation()V
    .locals 1

    .line 5359
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getMinSelfDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSlotKeySigs()V
    .locals 1

    .line 5530
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSlotPubKeys()V
    .locals 1

    .line 5458
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearValidatorAddress()V
    .locals 1

    .line 5186
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private ensureSlotKeySigsIsMutable()V
    .locals 2

    .line 5490
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5491
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5493
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSlotPubKeysIsMutable()V
    .locals 2

    .line 5418
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5419
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5421
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
    .locals 1

    .line 6164
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object v0
.end method

.method private mergeCommissionRates(Lwallet/core/jni/proto/Harmony$CommissionRate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5315
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    if-eqz v0, :cond_0

    .line 5316
    invoke-static {}, Lwallet/core/jni/proto/Harmony$CommissionRate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$CommissionRate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5317
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    .line 5318
    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->newBuilder(Lwallet/core/jni/proto/Harmony$CommissionRate;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$CommissionRate;

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    goto :goto_0

    .line 5320
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    :goto_0
    return-void
.end method

.method private mergeDescription(Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5249
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    if-eqz v0, :cond_0

    .line 5250
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5251
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    .line 5252
    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Description;->newBuilder(Lwallet/core/jni/proto/Harmony$Description;)Lwallet/core/jni/proto/Harmony$Description$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Description$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Description;

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    goto :goto_0

    .line 5254
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1

    .line 5635
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5638
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5612
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5618
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5576
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5583
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5623
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5630
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5600
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5607
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5563
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5570
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5588
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
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

    .line 5595
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;",
            ">;"
        }
    .end annotation

    .line 6170
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5550
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCommissionRates(Lwallet/core/jni/proto/Harmony$CommissionRate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5302
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-void
.end method

.method private setDescription(Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5236
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    return-void
.end method

.method private setMaxTotalDelegation(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5379
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setMinSelfDelegation(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5350
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5352
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSlotKeySigs(ILcom/google/protobuf/ByteString;)V
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

    .line 5503
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5504
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->ensureSlotKeySigsIsMutable()V

    .line 5505
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlotPubKeys(ILcom/google/protobuf/ByteString;)V
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

    .line 5431
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5432
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->ensureSlotPubKeysIsMutable()V

    .line 5433
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setValidatorAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5175
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5198
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5199
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->validatorAddress_:Ljava/lang/String;

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

    .line 6099
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6148
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6142
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6127
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6129
    const-class p2, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    monitor-enter p2

    .line 6130
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6132
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6135
    sput-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->PARSER:Lcom/google/protobuf/Parser;

    .line 6137
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

    .line 6124
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "validatorAddress_"

    aput-object v0, p1, p3

    const-string p3, "description_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "commissionRates_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "minSelfDelegation_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "maxTotalDelegation_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "slotPubKeys_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "slotKeySigs_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u0208\u0002\t\u0003\t\u0004\n\u0005\n\u0006\u001c\u0007\u001c\u0008\n"

    .line 6120
    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6104
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 6101
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5541
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCommissionRates()Lwallet/core/jni/proto/Harmony$CommissionRate;
    .locals 1

    .line 5291
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Harmony$CommissionRate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$CommissionRate;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDescription()Lwallet/core/jni/proto/Harmony$Description;
    .locals 1

    .line 5225
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxTotalDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5370
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMinSelfDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5343
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSlotKeySigs(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5487
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getSlotKeySigsCount()I
    .locals 1

    .line 5478
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSlotKeySigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 5470
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotKeySigs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlotPubKeys(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5415
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getSlotPubKeysCount()I
    .locals 1

    .line 5406
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSlotPubKeysList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 5398
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->slotPubKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 5148
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->validatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5161
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->validatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCommissionRates()Z
    .locals 1

    .line 5280
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->commissionRates_:Lwallet/core/jni/proto/Harmony$CommissionRate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .line 5214
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
