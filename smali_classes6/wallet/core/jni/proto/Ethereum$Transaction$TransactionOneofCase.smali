.class public final enum Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;
.super Ljava/lang/Enum;
.source "Ethereum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

.field public static final enum CONTRACT_GENERIC:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

.field public static final enum ERC1155_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

.field public static final enum ERC20_APPROVE:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

.field public static final enum ERC20_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

.field public static final enum ERC721_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

.field public static final enum TRANSACTIONONEOF_NOT_SET:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 3200
    new-instance v0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    .line 3201
    new-instance v1, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const-string v4, "ERC20_TRANSFER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC20_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    .line 3202
    new-instance v4, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const-string v6, "ERC20_APPROVE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC20_APPROVE:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    .line 3203
    new-instance v6, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const-string v8, "ERC721_TRANSFER"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC721_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    .line 3204
    new-instance v8, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const-string v10, "ERC1155_TRANSFER"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC1155_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    .line 3205
    new-instance v10, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const-string v12, "CONTRACT_GENERIC"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->CONTRACT_GENERIC:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    .line 3206
    new-instance v12, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const-string v14, "TRANSACTIONONEOF_NOT_SET"

    invoke-direct {v12, v14, v13, v2}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->TRANSACTIONONEOF_NOT_SET:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    const/4 v14, 0x7

    new-array v14, v14, [Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    aput-object v0, v14, v2

    aput-object v1, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    .line 3199
    sput-object v14, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->$VALUES:[Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

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

    .line 3208
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3209
    iput p3, p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;
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

    .line 3226
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->CONTRACT_GENERIC:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0

    .line 3225
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC1155_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0

    .line 3224
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC721_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0

    .line 3223
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC20_APPROVE:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0

    .line 3222
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->ERC20_TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0

    .line 3221
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->TRANSFER:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0

    .line 3227
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->TRANSACTIONONEOF_NOT_SET:Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;
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

    .line 3216
    invoke-static {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->forNumber(I)Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3199
    const-class v0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;
    .locals 1

    .line 3199
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->$VALUES:[Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 3232
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$TransactionOneofCase;->value:I

    return v0
.end method
