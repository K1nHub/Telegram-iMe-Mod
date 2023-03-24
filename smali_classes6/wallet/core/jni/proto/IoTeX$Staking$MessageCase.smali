.class public final enum Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;
.super Ljava/lang/Enum;
.source "IoTeX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum CANDIDATEREGISTER:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum CANDIDATEUPDATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum MESSAGE_NOT_SET:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum STAKEADDDEPOSIT:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum STAKECHANGECANDIDATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum STAKECREATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum STAKERESTAKE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum STAKETRANSFEROWNERSHIP:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum STAKEUNSTAKE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

.field public static final enum STAKEWITHDRAW:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5284
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v1, "STAKECREATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKECREATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5285
    new-instance v1, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v4, "STAKEUNSTAKE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKEUNSTAKE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5286
    new-instance v4, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v6, "STAKEWITHDRAW"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKEWITHDRAW:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5287
    new-instance v6, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v8, "STAKEADDDEPOSIT"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKEADDDEPOSIT:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5288
    new-instance v8, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v10, "STAKERESTAKE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKERESTAKE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5289
    new-instance v10, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v12, "STAKECHANGECANDIDATE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKECHANGECANDIDATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5290
    new-instance v12, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v14, "STAKETRANSFEROWNERSHIP"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKETRANSFEROWNERSHIP:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5291
    new-instance v14, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v13, "CANDIDATEREGISTER"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->CANDIDATEREGISTER:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5292
    new-instance v13, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v15, "CANDIDATEUPDATE"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->CANDIDATEUPDATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    .line 5293
    new-instance v15, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const-string v11, "MESSAGE_NOT_SET"

    invoke-direct {v15, v11, v9, v2}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->MESSAGE_NOT_SET:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    const/16 v11, 0xa

    new-array v11, v11, [Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    const/4 v0, 0x7

    aput-object v14, v11, v0

    const/16 v0, 0x8

    aput-object v13, v11, v0

    aput-object v15, v11, v9

    .line 5283
    sput-object v11, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->$VALUES:[Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

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

    .line 5295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5296
    iput p3, p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;
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

    .line 5316
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->CANDIDATEUPDATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5315
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->CANDIDATEREGISTER:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5314
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKETRANSFEROWNERSHIP:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5313
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKECHANGECANDIDATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5312
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKERESTAKE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5311
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKEADDDEPOSIT:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5310
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKEWITHDRAW:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5309
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKEUNSTAKE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5308
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->STAKECREATE:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    .line 5317
    :pswitch_9
    sget-object p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->MESSAGE_NOT_SET:Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method public static valueOf(I)Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;
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

    .line 5303
    invoke-static {p0}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->forNumber(I)Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5283
    const-class v0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;
    .locals 1

    .line 5283
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->$VALUES:[Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 5322
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->value:I

    return v0
.end method
