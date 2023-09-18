.class public final enum Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
.super Ljava/lang/Enum;
.source "Sui.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Sui$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionPayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

.field public static final enum SIGN_DIRECT_MESSAGE:Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

.field public static final enum TRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 404
    new-instance v0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    const-string v1, "SIGN_DIRECT_MESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->SIGN_DIRECT_MESSAGE:Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    .line 405
    new-instance v1, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    const-string v4, "TRANSACTIONPAYLOAD_NOT_SET"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->TRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    new-array v3, v3, [Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 403
    sput-object v3, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->$VALUES:[Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

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

    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 408
    iput p3, p0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 420
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->SIGN_DIRECT_MESSAGE:Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    return-object p0

    .line 421
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->TRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
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

    .line 415
    invoke-static {p0}, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->forNumber(I)Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 403
    const-class v0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;
    .locals 1

    .line 403
    sget-object v0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->$VALUES:[Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 426
    iget v0, p0, Lwallet/core/jni/proto/Sui$SigningInput$TransactionPayloadCase;->value:I

    return v0
.end method
