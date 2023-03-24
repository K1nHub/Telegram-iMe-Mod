.class public final enum Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Polkadot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum BOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum BOND_AND_NOMINATE:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum BOND_EXTRA:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum CHILL:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum CHILL_AND_UNBOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum NOMINATE:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum UNBOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

.field public static final enum WITHDRAW_UNBONDED:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4638
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v1, "BOND"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->BOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4639
    new-instance v1, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v4, "BOND_AND_NOMINATE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->BOND_AND_NOMINATE:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4640
    new-instance v4, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v6, "BOND_EXTRA"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->BOND_EXTRA:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4641
    new-instance v6, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v8, "UNBOND"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->UNBOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4642
    new-instance v8, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v10, "WITHDRAW_UNBONDED"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->WITHDRAW_UNBONDED:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4643
    new-instance v10, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v12, "NOMINATE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->NOMINATE:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4644
    new-instance v12, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v14, "CHILL"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->CHILL:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4645
    new-instance v14, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v13, "CHILL_AND_UNBOND"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->CHILL_AND_UNBOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    .line 4646
    new-instance v13, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const-string v15, "MESSAGEONEOF_NOT_SET"

    invoke-direct {v13, v15, v11, v2}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    const/16 v15, 0x9

    new-array v15, v15, [Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    aput-object v0, v15, v2

    aput-object v1, v15, v3

    aput-object v4, v15, v5

    aput-object v6, v15, v7

    aput-object v8, v15, v9

    const/4 v0, 0x5

    aput-object v10, v15, v0

    const/4 v0, 0x6

    aput-object v12, v15, v0

    const/4 v0, 0x7

    aput-object v14, v15, v0

    aput-object v13, v15, v11

    .line 4637
    sput-object v15, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 4648
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4649
    iput p3, p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 4668
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->CHILL_AND_UNBOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4667
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->CHILL:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4666
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->NOMINATE:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4665
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->WITHDRAW_UNBONDED:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4664
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->UNBOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4663
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->BOND_EXTRA:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4662
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->BOND_AND_NOMINATE:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4661
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->BOND:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    .line 4669
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4656
    invoke-static {p0}, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 4637
    const-class v0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;
    .locals 1

    .line 4637
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 4674
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$MessageOneofCase;->value:I

    return v0
.end method
