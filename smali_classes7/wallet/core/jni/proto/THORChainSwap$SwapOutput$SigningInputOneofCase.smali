.class public final enum Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
.super Ljava/lang/Enum;
.source "THORChainSwap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SigningInputOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

.field public static final enum BINANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

.field public static final enum BITCOIN:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

.field public static final enum ETHEREUM:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

.field public static final enum SIGNINGINPUTONEOF_NOT_SET:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 3568
    new-instance v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    const-string v1, "BITCOIN"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->BITCOIN:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    .line 3569
    new-instance v1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    const-string v4, "ETHEREUM"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->ETHEREUM:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    .line 3570
    new-instance v4, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    const-string v6, "BINANCE"

    const/4 v7, 0x2

    const/4 v8, 0x6

    invoke-direct {v4, v6, v7, v8}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->BINANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    .line 3571
    new-instance v6, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    const-string v8, "SIGNINGINPUTONEOF_NOT_SET"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v2}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->SIGNINGINPUTONEOF_NOT_SET:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    new-array v3, v3, [Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    .line 3567
    sput-object v3, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->$VALUES:[Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

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

    .line 3573
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3574
    iput p3, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3588
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->BINANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    return-object p0

    .line 3587
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->ETHEREUM:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    return-object p0

    .line 3586
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->BITCOIN:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    return-object p0

    .line 3589
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->SIGNINGINPUTONEOF_NOT_SET:Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
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

    .line 3581
    invoke-static {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->forNumber(I)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3567
    const-class v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
    .locals 1

    .line 3567
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->$VALUES:[Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 3594
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->value:I

    return v0
.end method
