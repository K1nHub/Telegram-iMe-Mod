.class public final Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveEditValidatorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectiveEditValidator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;",
        "Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveEditValidatorOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVE_FIELD_NUMBER:I = 0x9

.field public static final COMMISSION_RATE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final MAX_TOTAL_DELEGATION_FIELD_NUMBER:I = 0x5

.field public static final MIN_SELF_DELEGATION_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOT_KEY_TO_ADD_FIELD_NUMBER:I = 0x7

.field public static final SLOT_KEY_TO_ADD_SIG_FIELD_NUMBER:I = 0x8

.field public static final SLOT_KEY_TO_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final VALIDATOR_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private active_:Lcom/google/protobuf/ByteString;

.field private commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

.field private description_:Lwallet/core/jni/proto/Harmony$Description;

.field private maxTotalDelegation_:Lcom/google/protobuf/ByteString;

.field private minSelfDelegation_:Lcom/google/protobuf/ByteString;

.field private slotKeyToAddSig_:Lcom/google/protobuf/ByteString;

.field private slotKeyToAdd_:Lcom/google/protobuf/ByteString;

.field private slotKeyToRemove_:Lcom/google/protobuf/ByteString;

.field private validatorAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7092
    new-instance v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;-><init>()V

    .line 7095
    sput-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    .line 7096
    const-class v1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6268
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 6269
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->validatorAddress_:Ljava/lang/String;

    .line 6270
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    .line 6271
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

    .line 6272
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToRemove_:Lcom/google/protobuf/ByteString;

    .line 6273
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAdd_:Lcom/google/protobuf/ByteString;

    .line 6274
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAddSig_:Lcom/google/protobuf/ByteString;

    .line 6275
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->active_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$12500()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
    .locals 1

    .line 6263
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object v0
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Ljava/lang/String;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setValidatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearValidatorAddress()V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setDescription(Lwallet/core/jni/proto/Harmony$Description;)V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Description;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->mergeDescription(Lwallet/core/jni/proto/Harmony$Description;)V

    return-void
.end method

.method static synthetic access$13100(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearDescription()V

    return-void
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setCommissionRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->mergeCommissionRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearCommissionRate()V

    return-void
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setMinSelfDelegation(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearMinSelfDelegation()V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setMaxTotalDelegation(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearMaxTotalDelegation()V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setSlotKeyToRemove(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14000(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearSlotKeyToRemove()V

    return-void
.end method

.method static synthetic access$14100(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setSlotKeyToAdd(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearSlotKeyToAdd()V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setSlotKeyToAddSig(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearSlotKeyToAddSig()V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6263
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->setActive(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 6263
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->clearActive()V

    return-void
.end method

.method private clearActive()V
    .locals 1

    .line 6595
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getActive()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->active_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCommissionRate()V
    .locals 1

    const/4 v0, 0x0

    .line 6432
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    return-void
.end method

.method private clearDescription()V
    .locals 1

    const/4 v0, 0x0

    .line 6386
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    return-void
.end method

.method private clearMaxTotalDelegation()V
    .locals 1

    .line 6487
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getMaxTotalDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMinSelfDelegation()V
    .locals 1

    .line 6460
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getMinSelfDelegation()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSlotKeyToAdd()V
    .locals 1

    .line 6541
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getSlotKeyToAdd()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAdd_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSlotKeyToAddSig()V
    .locals 1

    .line 6568
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getSlotKeyToAddSig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAddSig_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSlotKeyToRemove()V
    .locals 1

    .line 6514
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getSlotKeyToRemove()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToRemove_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValidatorAddress()V
    .locals 1

    .line 6327
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
    .locals 1

    .line 7101
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object v0
.end method

.method private mergeCommissionRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6420
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-eqz v0, :cond_0

    .line 6421
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6422
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    .line 6423
    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->newBuilder(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    goto :goto_0

    .line 6425
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

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

    .line 6373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6374
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    if-eqz v0, :cond_0

    .line 6375
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6376
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    .line 6377
    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Description;->newBuilder(Lwallet/core/jni/proto/Harmony$Description;)Lwallet/core/jni/proto/Harmony$Description$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Description$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Description;

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    goto :goto_0

    .line 6379
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1

    .line 6673
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6676
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6650
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6656
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6614
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6621
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6661
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6668
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6638
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6645
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6601
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6608
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6626
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
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

    .line 6633
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;",
            ">;"
        }
    .end annotation

    .line 7107
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setActive(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6586
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6588
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->active_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCommissionRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6411
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

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

    .line 6364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6365
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

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

    .line 6478
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6480
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

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

    .line 6451
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6453
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSlotKeyToAdd(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6534
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAdd_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSlotKeyToAddSig(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6561
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAddSig_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSlotKeyToRemove(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6505
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6507
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToRemove_:Lcom/google/protobuf/ByteString;

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

    .line 6314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6316
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->validatorAddress_:Ljava/lang/String;

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

    .line 6339
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6340
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->validatorAddress_:Ljava/lang/String;

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

    .line 7035
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7085
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7079
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7064
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7066
    const-class p2, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    monitor-enter p2

    .line 7067
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7069
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7072
    sput-object p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->PARSER:Lcom/google/protobuf/Parser;

    .line 7074
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

    .line 7061
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "validatorAddress_"

    aput-object v0, p1, p3

    const-string p3, "description_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "commissionRate_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "minSelfDelegation_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "maxTotalDelegation_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "slotKeyToRemove_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "slotKeyToAdd_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "slotKeyToAddSig_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "active_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0000\u0000\u0001\u0208\u0002\t\u0003\t\u0004\n\u0005\n\u0006\n\u0007\n\u0008\n\t\n"

    .line 7057
    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7040
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 7037
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;-><init>()V

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

.method public getActive()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6579
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->active_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCommissionRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 6404
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDescription()Lwallet/core/jni/proto/Harmony$Description;
    .locals 1

    .line 6358
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Harmony$Description;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Description;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxTotalDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6471
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->maxTotalDelegation_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMinSelfDelegation()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6444
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->minSelfDelegation_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSlotKeyToAdd()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6525
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAdd_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSlotKeyToAddSig()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6552
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToAddSig_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSlotKeyToRemove()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6498
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->slotKeyToRemove_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 6289
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->validatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6302
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->validatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCommissionRate()Z
    .locals 1

    .line 6397
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->commissionRate_:Lwallet/core/jni/proto/Harmony$Decimal;

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

    .line 6351
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->description_:Lwallet/core/jni/proto/Harmony$Description;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
