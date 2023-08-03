.class public final enum Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Cosmos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum AUTH_GRANT:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum AUTH_REVOKE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum MSG_VOTE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum RAW_JSON_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum RESTAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum SEND_COINS_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum SIGN_DIRECT_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum STAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum THORCHAIN_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum TRANSFER_TOKENS_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum UNSTAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum WASM_EXECUTE_CONTRACT_GENERIC:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum WASM_EXECUTE_CONTRACT_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum WASM_TERRA_EXECUTE_CONTRACT_GENERIC:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

.field public static final enum WITHDRAW_STAKE_REWARD_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 16580
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v1, "SEND_COINS_MESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->SEND_COINS_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16581
    new-instance v1, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v4, "TRANSFER_TOKENS_MESSAGE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->TRANSFER_TOKENS_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16582
    new-instance v4, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v6, "STAKE_MESSAGE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->STAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16583
    new-instance v6, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v8, "UNSTAKE_MESSAGE"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->UNSTAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16584
    new-instance v8, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v10, "RESTAKE_MESSAGE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->RESTAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16585
    new-instance v10, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v12, "WITHDRAW_STAKE_REWARD_MESSAGE"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WITHDRAW_STAKE_REWARD_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16586
    new-instance v12, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v14, "RAW_JSON_MESSAGE"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->RAW_JSON_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16587
    new-instance v14, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v13, "WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16588
    new-instance v13, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v15, "WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16589
    new-instance v15, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v11, "THORCHAIN_SEND_MESSAGE"

    const/16 v7, 0xa

    invoke-direct {v15, v11, v9, v7}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->THORCHAIN_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16590
    new-instance v11, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v9, "WASM_TERRA_EXECUTE_CONTRACT_GENERIC"

    const/16 v5, 0xb

    invoke-direct {v11, v9, v7, v5}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_TERRA_EXECUTE_CONTRACT_GENERIC:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16591
    new-instance v9, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v7, "WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE"

    const/16 v3, 0xc

    invoke-direct {v9, v7, v5, v3}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16592
    new-instance v7, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v5, "WASM_EXECUTE_CONTRACT_SEND_MESSAGE"

    const/16 v2, 0xd

    invoke-direct {v7, v5, v3, v2}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_EXECUTE_CONTRACT_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16593
    new-instance v5, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v3, "WASM_EXECUTE_CONTRACT_GENERIC"

    move-object/from16 v16, v7

    const/16 v7, 0xe

    invoke-direct {v5, v3, v2, v7}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_EXECUTE_CONTRACT_GENERIC:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16594
    new-instance v3, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v2, "SIGN_DIRECT_MESSAGE"

    move-object/from16 v17, v5

    const/16 v5, 0xf

    invoke-direct {v3, v2, v7, v5}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->SIGN_DIRECT_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16595
    new-instance v2, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v7, "AUTH_GRANT"

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v2, v7, v5, v3}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->AUTH_GRANT:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16596
    new-instance v7, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v5, "AUTH_REVOKE"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v7, v5, v3, v2}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->AUTH_REVOKE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16597
    new-instance v5, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v3, "MSG_VOTE"

    move-object/from16 v20, v7

    const/16 v7, 0x12

    invoke-direct {v5, v3, v2, v7}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->MSG_VOTE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    .line 16598
    new-instance v3, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const-string v2, "MESSAGEONEOF_NOT_SET"

    move-object/from16 v21, v5

    const/4 v5, 0x0

    invoke-direct {v3, v2, v7, v5}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    const/16 v2, 0x13

    new-array v2, v2, [Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v13, v2, v0

    const/16 v0, 0x9

    aput-object v15, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    aput-object v3, v2, v7

    .line 16579
    sput-object v2, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

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

    .line 16600
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16601
    iput p3, p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;
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

    .line 16630
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->MSG_VOTE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16629
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->AUTH_REVOKE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16628
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->AUTH_GRANT:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16627
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->SIGN_DIRECT_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16626
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_EXECUTE_CONTRACT_GENERIC:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16625
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_EXECUTE_CONTRACT_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16624
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_EXECUTE_CONTRACT_TRANSFER_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16623
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_TERRA_EXECUTE_CONTRACT_GENERIC:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16622
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->THORCHAIN_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16621
    :pswitch_9
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_TERRA_EXECUTE_CONTRACT_SEND_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16620
    :pswitch_a
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WASM_TERRA_EXECUTE_CONTRACT_TRANSFER_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16619
    :pswitch_b
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->RAW_JSON_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16618
    :pswitch_c
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->WITHDRAW_STAKE_REWARD_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16617
    :pswitch_d
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->RESTAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16616
    :pswitch_e
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->UNSTAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16615
    :pswitch_f
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->STAKE_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16614
    :pswitch_10
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->TRANSFER_TOKENS_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16613
    :pswitch_11
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->SEND_COINS_MESSAGE:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    .line 16631
    :pswitch_12
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(I)Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;
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

    .line 16608
    invoke-static {p0}, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 16579
    const-class v0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;
    .locals 1

    .line 16579
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 16636
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MessageOneofCase;->value:I

    return v0
.end method
