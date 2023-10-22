.class public final enum Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
.super Ljava/lang/Enum;
.source "Aptos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionPayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

.field public static final enum CREATE_ACCOUNT:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

.field public static final enum NFT_MESSAGE:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

.field public static final enum REGISTER_TOKEN:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

.field public static final enum TOKEN_TRANSFER:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

.field public static final enum TRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5984
    new-instance v0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->TRANSFER:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    .line 5985
    new-instance v1, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    const-string v3, "TOKEN_TRANSFER"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->TOKEN_TRANSFER:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    .line 5986
    new-instance v3, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    const-string v5, "CREATE_ACCOUNT"

    const/4 v6, 0x2

    const/16 v7, 0xb

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->CREATE_ACCOUNT:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    .line 5987
    new-instance v5, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    const-string v7, "NFT_MESSAGE"

    const/4 v8, 0x3

    const/16 v9, 0xc

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->NFT_MESSAGE:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    .line 5988
    new-instance v7, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    const-string v9, "REGISTER_TOKEN"

    const/4 v10, 0x4

    const/16 v11, 0xd

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->REGISTER_TOKEN:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    .line 5989
    new-instance v9, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    const-string v11, "TRANSACTIONPAYLOAD_NOT_SET"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->TRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    const/4 v11, 0x6

    new-array v11, v11, [Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 5983
    sput-object v11, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->$VALUES:[Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

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

    .line 5991
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5992
    iput p3, p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
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

    .line 6008
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->REGISTER_TOKEN:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object p0

    .line 6007
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->NFT_MESSAGE:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object p0

    .line 6006
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->CREATE_ACCOUNT:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object p0

    .line 6005
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->TOKEN_TRANSFER:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object p0

    .line 6004
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->TRANSFER:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object p0

    .line 6009
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->TRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
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

    .line 5999
    invoke-static {p0}, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->forNumber(I)Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5983
    const-class v0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;
    .locals 1

    .line 5983
    sget-object v0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->$VALUES:[Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 6014
    iget v0, p0, Lwallet/core/jni/proto/Aptos$SigningInput$TransactionPayloadCase;->value:I

    return v0
.end method
