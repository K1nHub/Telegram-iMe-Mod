.class public final enum Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
.super Ljava/lang/Enum;
.source "Tron.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContractOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum CONTRACTONEOF_NOT_SET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum DELEGATE_RESOURCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum FREEZE_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum FREEZE_BALANCE_V2:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum TRANSFER_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum TRANSFER_TRC20_CONTRACT:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum TRIGGER_SMART_CONTRACT:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum UNDELEGATE_RESOURCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum UNFREEZE_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum UNFREEZE_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum UNFREEZE_BALANCE_V2:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum VOTE_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum VOTE_WITNESS:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum WITHDRAW_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

.field public static final enum WITHDRAW_EXPIRE_UNFREEZE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 11157
    new-instance v0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRANSFER:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11158
    new-instance v1, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v4, "TRANSFER_ASSET"

    const/4 v5, 0x1

    const/16 v6, 0xb

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRANSFER_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11159
    new-instance v4, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v7, "FREEZE_BALANCE"

    const/4 v8, 0x2

    const/16 v9, 0xc

    invoke-direct {v4, v7, v8, v9}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->FREEZE_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11160
    new-instance v7, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v10, "UNFREEZE_BALANCE"

    const/4 v11, 0x3

    const/16 v12, 0xd

    invoke-direct {v7, v10, v11, v12}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNFREEZE_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11161
    new-instance v10, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v13, "UNFREEZE_ASSET"

    const/4 v14, 0x4

    const/16 v15, 0xe

    invoke-direct {v10, v13, v14, v15}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNFREEZE_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11162
    new-instance v13, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v14, "WITHDRAW_BALANCE"

    const/4 v11, 0x5

    const/16 v8, 0xf

    invoke-direct {v13, v14, v11, v8}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->WITHDRAW_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11163
    new-instance v14, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v11, "VOTE_ASSET"

    const/4 v5, 0x6

    const/16 v2, 0x10

    invoke-direct {v14, v11, v5, v2}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->VOTE_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11164
    new-instance v11, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v5, "VOTE_WITNESS"

    const/4 v2, 0x7

    const/16 v8, 0x11

    invoke-direct {v11, v5, v2, v8}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->VOTE_WITNESS:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11165
    new-instance v5, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v8, "TRIGGER_SMART_CONTRACT"

    const/16 v2, 0x8

    const/16 v15, 0x12

    invoke-direct {v5, v8, v2, v15}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRIGGER_SMART_CONTRACT:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11166
    new-instance v8, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v15, "TRANSFER_TRC20_CONTRACT"

    const/16 v2, 0x9

    const/16 v12, 0x13

    invoke-direct {v8, v15, v2, v12}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRANSFER_TRC20_CONTRACT:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11167
    new-instance v12, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v15, "FREEZE_BALANCE_V2"

    const/16 v2, 0x14

    invoke-direct {v12, v15, v3, v2}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->FREEZE_BALANCE_V2:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11168
    new-instance v2, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v15, "UNFREEZE_BALANCE_V2"

    const/16 v3, 0x15

    invoke-direct {v2, v15, v6, v3}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNFREEZE_BALANCE_V2:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11169
    new-instance v3, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v15, "WITHDRAW_EXPIRE_UNFREEZE"

    const/16 v6, 0x17

    invoke-direct {v3, v15, v9, v6}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->WITHDRAW_EXPIRE_UNFREEZE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11170
    new-instance v6, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v15, "DELEGATE_RESOURCE"

    const/16 v9, 0x18

    move-object/from16 v17, v3

    const/16 v3, 0xd

    invoke-direct {v6, v15, v3, v9}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->DELEGATE_RESOURCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11171
    new-instance v3, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v9, "UNDELEGATE_RESOURCE"

    const/16 v15, 0x19

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v3, v9, v6, v15}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNDELEGATE_RESOURCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    .line 11172
    new-instance v6, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const-string v9, "CONTRACTONEOF_NOT_SET"

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/16 v15, 0xf

    invoke-direct {v6, v9, v15, v3}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->CONTRACTONEOF_NOT_SET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    const/16 v9, 0x10

    new-array v9, v9, [Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    aput-object v0, v9, v3

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/4 v0, 0x3

    aput-object v7, v9, v0

    const/4 v0, 0x4

    aput-object v10, v9, v0

    const/4 v0, 0x5

    aput-object v13, v9, v0

    const/4 v0, 0x6

    aput-object v14, v9, v0

    const/4 v0, 0x7

    aput-object v11, v9, v0

    const/16 v0, 0x8

    aput-object v5, v9, v0

    const/16 v0, 0x9

    aput-object v8, v9, v0

    const/16 v0, 0xa

    aput-object v12, v9, v0

    const/16 v0, 0xb

    aput-object v2, v9, v0

    const/16 v0, 0xc

    aput-object v17, v9, v0

    const/16 v0, 0xd

    aput-object v18, v9, v0

    const/16 v0, 0xe

    aput-object v16, v9, v0

    const/16 v0, 0xf

    aput-object v6, v9, v0

    .line 11156
    sput-object v9, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->$VALUES:[Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

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

    .line 11174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11175
    iput p3, p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 11201
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNDELEGATE_RESOURCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11200
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->DELEGATE_RESOURCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11199
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->WITHDRAW_EXPIRE_UNFREEZE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11198
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNFREEZE_BALANCE_V2:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11197
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->FREEZE_BALANCE_V2:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11196
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRANSFER_TRC20_CONTRACT:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11195
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRIGGER_SMART_CONTRACT:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11194
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->VOTE_WITNESS:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11193
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->VOTE_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11192
    :pswitch_9
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->WITHDRAW_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11191
    :pswitch_a
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNFREEZE_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11190
    :pswitch_b
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->UNFREEZE_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11189
    :pswitch_c
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->FREEZE_BALANCE:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11188
    :pswitch_d
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRANSFER_ASSET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11187
    :pswitch_e
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->TRANSFER:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    .line 11202
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->CONTRACTONEOF_NOT_SET:Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
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

    .line 11182
    invoke-static {p0}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->forNumber(I)Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 11156
    const-class v0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
    .locals 1

    .line 11156
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->$VALUES:[Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 11207
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->value:I

    return v0
.end method
