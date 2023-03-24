.class public final enum Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
.super Ljava/lang/Enum;
.source "Binance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum BURN_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum CANCEL_TRADE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum CLAIMHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum DEPOSITHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum FREEZE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum HTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum ISSUE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum MINT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum ORDERONEOF_NOT_SET:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum REFUNDHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum SEND_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum SIDE_DELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum SIDE_REDELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum SIDE_UNDELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum TIME_LOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum TIME_RELOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum TIME_UNLOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum TRADE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum TRANSFER_OUT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

.field public static final enum UNFREEZE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 16314
    new-instance v0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v1, "TRADE_ORDER"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TRADE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16315
    new-instance v1, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v4, "CANCEL_TRADE_ORDER"

    const/4 v5, 0x1

    const/16 v6, 0x9

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->CANCEL_TRADE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16316
    new-instance v4, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v7, "SEND_ORDER"

    const/4 v8, 0x2

    const/16 v9, 0xa

    invoke-direct {v4, v7, v8, v9}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SEND_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16317
    new-instance v7, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v10, "FREEZE_ORDER"

    const/4 v11, 0x3

    const/16 v12, 0xb

    invoke-direct {v7, v10, v11, v12}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->FREEZE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16318
    new-instance v10, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v13, "UNFREEZE_ORDER"

    const/4 v14, 0x4

    const/16 v15, 0xc

    invoke-direct {v10, v13, v14, v15}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->UNFREEZE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16319
    new-instance v13, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v14, "HTLT_ORDER"

    const/4 v11, 0x5

    const/16 v8, 0xd

    invoke-direct {v13, v14, v11, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->HTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16320
    new-instance v14, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v11, "DEPOSITHTLT_ORDER"

    const/4 v5, 0x6

    const/16 v2, 0xe

    invoke-direct {v14, v11, v5, v2}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->DEPOSITHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16321
    new-instance v11, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v5, "CLAIMHTLT_ORDER"

    const/4 v2, 0x7

    const/16 v8, 0xf

    invoke-direct {v11, v5, v2, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->CLAIMHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16322
    new-instance v5, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v2, "REFUNDHTLT_ORDER"

    const/16 v8, 0x10

    invoke-direct {v5, v2, v3, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->REFUNDHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16323
    new-instance v2, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v3, "ISSUE_ORDER"

    const/16 v8, 0x11

    invoke-direct {v2, v3, v6, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->ISSUE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16324
    new-instance v3, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v6, "MINT_ORDER"

    const/16 v8, 0x12

    invoke-direct {v3, v6, v9, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->MINT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16325
    new-instance v6, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v9, "BURN_ORDER"

    const/16 v8, 0x13

    invoke-direct {v6, v9, v12, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->BURN_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16326
    new-instance v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v12, "TRANSFER_OUT_ORDER"

    const/16 v8, 0x14

    invoke-direct {v9, v12, v15, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TRANSFER_OUT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16327
    new-instance v12, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v15, "SIDE_DELEGATE_ORDER"

    const/16 v8, 0x15

    move-object/from16 v17, v9

    const/16 v9, 0xd

    invoke-direct {v12, v15, v9, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SIDE_DELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16328
    new-instance v8, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v9, "SIDE_REDELEGATE_ORDER"

    const/16 v15, 0x16

    move-object/from16 v18, v12

    const/16 v12, 0xe

    invoke-direct {v8, v9, v12, v15}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SIDE_REDELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16329
    new-instance v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v12, "SIDE_UNDELEGATE_ORDER"

    const/16 v15, 0x17

    move-object/from16 v19, v8

    const/16 v8, 0xf

    invoke-direct {v9, v12, v8, v15}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SIDE_UNDELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16330
    new-instance v8, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v12, "TIME_LOCK_ORDER"

    const/16 v15, 0x18

    move-object/from16 v20, v9

    const/16 v9, 0x10

    invoke-direct {v8, v12, v9, v15}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TIME_LOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16331
    new-instance v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v12, "TIME_RELOCK_ORDER"

    const/16 v15, 0x19

    move-object/from16 v21, v8

    const/16 v8, 0x11

    invoke-direct {v9, v12, v8, v15}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TIME_RELOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16332
    new-instance v8, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v12, "TIME_UNLOCK_ORDER"

    const/16 v15, 0x1a

    move-object/from16 v22, v9

    const/16 v9, 0x12

    invoke-direct {v8, v12, v9, v15}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TIME_UNLOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    .line 16333
    new-instance v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const-string v12, "ORDERONEOF_NOT_SET"

    move-object/from16 v16, v8

    const/4 v8, 0x0

    const/16 v15, 0x13

    invoke-direct {v9, v12, v15, v8}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->ORDERONEOF_NOT_SET:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    const/16 v12, 0x14

    new-array v12, v12, [Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    aput-object v0, v12, v8

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v4, v12, v0

    const/4 v0, 0x3

    aput-object v7, v12, v0

    const/4 v0, 0x4

    aput-object v10, v12, v0

    const/4 v0, 0x5

    aput-object v13, v12, v0

    const/4 v0, 0x6

    aput-object v14, v12, v0

    const/4 v0, 0x7

    aput-object v11, v12, v0

    const/16 v0, 0x8

    aput-object v5, v12, v0

    const/16 v0, 0x9

    aput-object v2, v12, v0

    const/16 v0, 0xa

    aput-object v3, v12, v0

    const/16 v0, 0xb

    aput-object v6, v12, v0

    const/16 v0, 0xc

    aput-object v17, v12, v0

    const/16 v0, 0xd

    aput-object v18, v12, v0

    const/16 v0, 0xe

    aput-object v19, v12, v0

    const/16 v0, 0xf

    aput-object v20, v12, v0

    const/16 v0, 0x10

    aput-object v21, v12, v0

    const/16 v0, 0x11

    aput-object v22, v12, v0

    const/16 v0, 0x12

    aput-object v16, v12, v0

    const/16 v0, 0x13

    aput-object v9, v12, v0

    .line 16313
    sput-object v12, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->$VALUES:[Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

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

    .line 16335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16336
    iput p3, p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
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

    const/4 p0, 0x0

    return-object p0

    .line 16366
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TIME_UNLOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16365
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TIME_RELOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16364
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TIME_LOCK_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16363
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SIDE_UNDELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16362
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SIDE_REDELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16361
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SIDE_DELEGATE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16360
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TRANSFER_OUT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16359
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->BURN_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16358
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->MINT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16357
    :pswitch_9
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->ISSUE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16356
    :pswitch_a
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->REFUNDHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16355
    :pswitch_b
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->CLAIMHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16354
    :pswitch_c
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->DEPOSITHTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16353
    :pswitch_d
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->HTLT_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16352
    :pswitch_e
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->UNFREEZE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16351
    :pswitch_f
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->FREEZE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16350
    :pswitch_10
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->SEND_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16349
    :pswitch_11
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->CANCEL_TRADE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16348
    :pswitch_12
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->TRADE_ORDER:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    .line 16367
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->ORDERONEOF_NOT_SET:Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
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

    .line 16343
    invoke-static {p0}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->forNumber(I)Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 16313
    const-class v0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
    .locals 1

    .line 16313
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->$VALUES:[Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 16372
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->value:I

    return v0
.end method
