.class public final enum Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
.super Ljava/lang/Enum;
.source "Solana.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum CREATE_AND_TRANSFER_TOKEN_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum CREATE_TOKEN_ACCOUNT_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum DEACTIVATE_ALL_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum DEACTIVATE_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum DELEGATE_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum TOKEN_TRANSFER_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum TRANSACTIONTYPE_NOT_SET:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum TRANSFER_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum WITHDRAW_ALL_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

.field public static final enum WITHDRAW_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7209
    new-instance v0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v1, "TRANSFER_TRANSACTION"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->TRANSFER_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7210
    new-instance v1, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v4, "DELEGATE_STAKE_TRANSACTION"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->DELEGATE_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7211
    new-instance v4, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v7, "DEACTIVATE_STAKE_TRANSACTION"

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-direct {v4, v7, v8, v9}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->DEACTIVATE_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7212
    new-instance v7, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v10, "DEACTIVATE_ALL_STAKE_TRANSACTION"

    const/4 v11, 0x3

    const/4 v12, 0x7

    invoke-direct {v7, v10, v11, v12}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->DEACTIVATE_ALL_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7213
    new-instance v10, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v13, "WITHDRAW_TRANSACTION"

    const/16 v14, 0x8

    invoke-direct {v10, v13, v3, v14}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->WITHDRAW_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7214
    new-instance v13, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v15, "WITHDRAW_ALL_TRANSACTION"

    const/16 v3, 0x9

    invoke-direct {v13, v15, v6, v3}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->WITHDRAW_ALL_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7215
    new-instance v15, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v6, "CREATE_TOKEN_ACCOUNT_TRANSACTION"

    const/16 v11, 0xa

    invoke-direct {v15, v6, v9, v11}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->CREATE_TOKEN_ACCOUNT_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7216
    new-instance v6, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v9, "TOKEN_TRANSFER_TRANSACTION"

    const/16 v8, 0xb

    invoke-direct {v6, v9, v12, v8}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->TOKEN_TRANSFER_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7217
    new-instance v8, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v9, "CREATE_AND_TRANSFER_TOKEN_TRANSACTION"

    const/16 v12, 0xc

    invoke-direct {v8, v9, v14, v12}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->CREATE_AND_TRANSFER_TOKEN_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    .line 7218
    new-instance v9, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    const-string v12, "TRANSACTIONTYPE_NOT_SET"

    invoke-direct {v9, v12, v3, v2}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->TRANSACTIONTYPE_NOT_SET:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    new-array v11, v11, [Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    aput-object v0, v11, v2

    aput-object v1, v11, v5

    const/4 v0, 0x2

    aput-object v4, v11, v0

    const/4 v0, 0x3

    aput-object v7, v11, v0

    const/4 v0, 0x4

    aput-object v10, v11, v0

    const/4 v0, 0x5

    aput-object v13, v11, v0

    const/4 v0, 0x6

    aput-object v15, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    aput-object v8, v11, v14

    aput-object v9, v11, v3

    .line 7208
    sput-object v11, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->$VALUES:[Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

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

    .line 7220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7221
    iput p3, p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
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

    .line 7241
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->CREATE_AND_TRANSFER_TOKEN_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7240
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->TOKEN_TRANSFER_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7239
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->CREATE_TOKEN_ACCOUNT_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7238
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->WITHDRAW_ALL_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7237
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->WITHDRAW_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7236
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->DEACTIVATE_ALL_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7235
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->DEACTIVATE_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7234
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->DELEGATE_STAKE_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7233
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->TRANSFER_TRANSACTION:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    .line 7242
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->TRANSACTIONTYPE_NOT_SET:Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
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

.method public static valueOf(I)Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
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

    .line 7228
    invoke-static {p0}, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->forNumber(I)Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7208
    const-class v0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;
    .locals 1

    .line 7208
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->$VALUES:[Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 7247
    iget v0, p0, Lwallet/core/jni/proto/Solana$SigningInput$TransactionTypeCase;->value:I

    return v0
.end method
