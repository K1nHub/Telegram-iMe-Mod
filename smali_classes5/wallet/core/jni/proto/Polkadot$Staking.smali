.class public final Lwallet/core/jni/proto/Polkadot$Staking;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$StakingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Staking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Staking$Builder;,
        Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;,
        Lwallet/core/jni/proto/Polkadot$Staking$Chill;,
        Lwallet/core/jni/proto/Polkadot$Staking$ChillOrBuilder;,
        Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;,
        Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbondOrBuilder;,
        Lwallet/core/jni/proto/Polkadot$Staking$Nominate;,
        Lwallet/core/jni/proto/Polkadot$Staking$NominateOrBuilder;,
        Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;,
        Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbondedOrBuilder;,
        Lwallet/core/jni/proto/Polkadot$Staking$Unbond;,
        Lwallet/core/jni/proto/Polkadot$Staking$UnbondOrBuilder;,
        Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;,
        Lwallet/core/jni/proto/Polkadot$Staking$BondExtraOrBuilder;,
        Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;,
        Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominateOrBuilder;,
        Lwallet/core/jni/proto/Polkadot$Staking$Bond;,
        Lwallet/core/jni/proto/Polkadot$Staking$BondOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Staking;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$StakingOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOND_AND_NOMINATE_FIELD_NUMBER:I = 0x2

.field public static final BOND_EXTRA_FIELD_NUMBER:I = 0x3

.field public static final BOND_FIELD_NUMBER:I = 0x1

.field public static final CHILL_AND_UNBOND_FIELD_NUMBER:I = 0x8

.field public static final CHILL_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

.field public static final NOMINATE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNBOND_FIELD_NUMBER:I = 0x4

.field public static final WITHDRAW_UNBONDED_FIELD_NUMBER:I = 0x5


# instance fields
.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5650
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Staking;-><init>()V

    .line 5653
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    .line 5654
    const-class v1, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1385
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 4635
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method static synthetic access$6900()Lwallet/core/jni/proto/Polkadot$Staking;
    .locals 1

    .line 1380
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    return-object v0
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setBond(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeBond(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearBond()V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setBondAndNominate(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeBondAndNominate(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearBondAndNominate()V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setBondExtra(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeBondExtra(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearBondExtra()V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setUnbond(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeUnbond(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearUnbond()V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setWithdrawUnbonded(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeWithdrawUnbonded(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearWithdrawUnbonded()V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setNominate(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeNominate(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearNominate()V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setChill(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeChill(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearChill()V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->setChillAndUnbond(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Polkadot$Staking;Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V
    .locals 0

    .line 1380
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking;->mergeChillAndUnbond(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking;->clearChillAndUnbond()V

    return-void
.end method

.method private clearBond()V
    .locals 2

    .line 4734
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4735
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4736
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearBondAndNominate()V
    .locals 2

    .line 4784
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4785
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4786
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearBondExtra()V
    .locals 2

    .line 4834
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4835
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4836
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearChill()V
    .locals 2

    .line 5034
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5035
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5036
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearChillAndUnbond()V
    .locals 2

    .line 5084
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5085
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5086
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 4686
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4687
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearNominate()V
    .locals 2

    .line 4984
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4985
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4986
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnbond()V
    .locals 2

    .line 4884
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4885
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4886
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWithdrawUnbonded()V
    .locals 2

    .line 4934
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4935
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4936
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking;
    .locals 1

    .line 5659
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    return-object v0
.end method

.method private mergeBond(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4721
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4722
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4723
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;

    move-result-object v0

    .line 4724
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4726
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4728
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private mergeBondAndNominate(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4771
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4772
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4773
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;

    move-result-object v0

    .line 4774
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4776
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4778
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private mergeBondExtra(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4820
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4821
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4822
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4823
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;

    move-result-object v0

    .line 4824
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4826
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4828
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private mergeChill(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5020
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5021
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 5022
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5023
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;

    move-result-object v0

    .line 5024
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5026
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 5028
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private mergeChillAndUnbond(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5070
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5071
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 5072
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5073
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;

    move-result-object v0

    .line 5074
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 5076
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 5078
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private mergeNominate(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4970
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4971
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4972
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4973
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;

    move-result-object v0

    .line 4974
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4976
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4978
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private mergeUnbond(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4870
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4871
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4872
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4873
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;

    move-result-object v0

    .line 4874
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4876
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4878
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private mergeWithdrawUnbonded(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4921
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4922
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4923
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;

    move-result-object v0

    .line 4924
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4926
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    .line 4928
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1

    .line 5165
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Staking;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5168
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5142
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5148
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5106
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5113
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5153
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5160
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5130
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5137
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5093
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5100
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5118
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking;
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

    .line 5125
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking;",
            ">;"
        }
    .end annotation

    .line 5665
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBond(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4712
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4713
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4714
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private setBondAndNominate(Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4762
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4763
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 4764
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private setBondExtra(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4812
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4813
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 4814
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private setChill(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5012
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5013
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 5014
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private setChillAndUnbond(Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5063
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 5064
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private setNominate(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4962
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4963
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 4964
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private setUnbond(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4862
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4863
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 4864
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    return-void
.end method

.method private setWithdrawUnbonded(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4912
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4913
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 4914
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

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

    .line 5592
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5643
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5637
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5622
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5624
    const-class p2, Lwallet/core/jni/proto/Polkadot$Staking;

    monitor-enter p2

    .line 5625
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5627
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5630
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Staking;->PARSER:Lcom/google/protobuf/Parser;

    .line 5632
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

    .line 5619
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 5600
    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000"

    .line 5615
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5597
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Staking$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 5594
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Staking;-><init>()V

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

.method public getBond()Lwallet/core/jni/proto/Polkadot$Staking$Bond;
    .locals 2

    .line 4703
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4704
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object v0

    .line 4706
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    move-result-object v0

    return-object v0
.end method

.method public getBondAndNominate()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;
    .locals 2

    .line 4753
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4754
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    return-object v0

    .line 4756
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$BondAndNominate;

    move-result-object v0

    return-object v0
.end method

.method public getBondExtra()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
    .locals 2

    .line 4803
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4804
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object v0

    .line 4806
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    move-result-object v0

    return-object v0
.end method

.method public getChill()Lwallet/core/jni/proto/Polkadot$Staking$Chill;
    .locals 2

    .line 5003
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 5004
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object v0

    .line 5006
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    move-result-object v0

    return-object v0
.end method

.method public getChillAndUnbond()Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;
    .locals 2

    .line 5053
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5054
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    return-object v0

    .line 5056
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$ChillAndUnbond;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;
    .locals 1

    .line 4681
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNominate()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
    .locals 2

    .line 4953
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4954
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object v0

    .line 4956
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    move-result-object v0

    return-object v0
.end method

.method public getUnbond()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
    .locals 2

    .line 4853
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4854
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object v0

    .line 4856
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawUnbonded()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
    .locals 2

    .line 4903
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4904
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object v0

    .line 4906
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    move-result-object v0

    return-object v0
.end method

.method public hasBond()Z
    .locals 2

    .line 4696
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasBondAndNominate()Z
    .locals 2

    .line 4746
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBondExtra()Z
    .locals 2

    .line 4796
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChill()Z
    .locals 2

    .line 4996
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChillAndUnbond()Z
    .locals 2

    .line 5046
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNominate()Z
    .locals 2

    .line 4946
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnbond()Z
    .locals 2

    .line 4846
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdrawUnbonded()Z
    .locals 2

    .line 4896
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
