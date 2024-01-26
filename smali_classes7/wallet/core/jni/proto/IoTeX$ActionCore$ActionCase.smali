.class public final enum Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
.super Ljava/lang/Enum;
.source "IoTeX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$ActionCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum ACTION_NOT_SET:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum CANDIDATEREGISTER:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum CANDIDATEUPDATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum EXECUTION:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum STAKEADDDEPOSIT:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum STAKECHANGECANDIDATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum STAKECREATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum STAKERESTAKE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum STAKETRANSFEROWNERSHIP:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum STAKEUNSTAKE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum STAKEWITHDRAW:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9637
    new-instance v0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->TRANSFER:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9638
    new-instance v1, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v4, "EXECUTION"

    const/4 v5, 0x1

    const/16 v6, 0xc

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->EXECUTION:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9639
    new-instance v4, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v7, "STAKECREATE"

    const/4 v8, 0x2

    const/16 v9, 0x28

    invoke-direct {v4, v7, v8, v9}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKECREATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9640
    new-instance v7, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v9, "STAKEUNSTAKE"

    const/4 v10, 0x3

    const/16 v11, 0x29

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKEUNSTAKE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9641
    new-instance v9, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v11, "STAKEWITHDRAW"

    const/4 v12, 0x4

    const/16 v13, 0x2a

    invoke-direct {v9, v11, v12, v13}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKEWITHDRAW:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9642
    new-instance v11, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v13, "STAKEADDDEPOSIT"

    const/4 v14, 0x5

    const/16 v15, 0x2b

    invoke-direct {v11, v13, v14, v15}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKEADDDEPOSIT:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9643
    new-instance v13, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v15, "STAKERESTAKE"

    const/4 v14, 0x6

    const/16 v12, 0x2c

    invoke-direct {v13, v15, v14, v12}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKERESTAKE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9644
    new-instance v12, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v15, "STAKECHANGECANDIDATE"

    const/4 v14, 0x7

    const/16 v10, 0x2d

    invoke-direct {v12, v15, v14, v10}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKECHANGECANDIDATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9645
    new-instance v10, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v15, "STAKETRANSFEROWNERSHIP"

    const/16 v14, 0x8

    const/16 v8, 0x2e

    invoke-direct {v10, v15, v14, v8}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKETRANSFEROWNERSHIP:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9646
    new-instance v8, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v15, "CANDIDATEREGISTER"

    const/16 v14, 0x9

    const/16 v5, 0x2f

    invoke-direct {v8, v15, v14, v5}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->CANDIDATEREGISTER:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9647
    new-instance v5, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v15, "CANDIDATEUPDATE"

    const/16 v14, 0x30

    invoke-direct {v5, v15, v3, v14}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->CANDIDATEUPDATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    .line 9648
    new-instance v14, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    const-string v15, "ACTION_NOT_SET"

    const/16 v3, 0xb

    invoke-direct {v14, v15, v3, v2}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->ACTION_NOT_SET:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    new-array v6, v6, [Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v4, v6, v0

    const/4 v0, 0x3

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v9, v6, v0

    const/4 v0, 0x5

    aput-object v11, v6, v0

    const/4 v0, 0x6

    aput-object v13, v6, v0

    const/4 v0, 0x7

    aput-object v12, v6, v0

    const/16 v0, 0x8

    aput-object v10, v6, v0

    const/16 v0, 0x9

    aput-object v8, v6, v0

    const/16 v0, 0xa

    aput-object v5, v6, v0

    aput-object v14, v6, v3

    .line 9636
    sput-object v6, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->$VALUES:[Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

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

    .line 9650
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9651
    iput p3, p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 9673
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->CANDIDATEUPDATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9672
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->CANDIDATEREGISTER:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9671
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKETRANSFEROWNERSHIP:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9670
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKECHANGECANDIDATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9669
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKERESTAKE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9668
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKEADDDEPOSIT:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9667
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKEWITHDRAW:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9666
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKEUNSTAKE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9665
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->STAKECREATE:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9664
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->EXECUTION:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9663
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->TRANSFER:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    .line 9674
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->ACTION_NOT_SET:Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x28
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

.method public static valueOf(I)Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
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

    .line 9658
    invoke-static {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->forNumber(I)Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 9636
    const-class v0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
    .locals 1

    .line 9636
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->$VALUES:[Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 9679
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->value:I

    return v0
.end method
