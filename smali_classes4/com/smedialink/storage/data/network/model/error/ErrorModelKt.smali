.class public final Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;
.super Ljava/lang/Object;
.source "ErrorModel.kt"


# static fields
.field private static final BAD_RESPONSE_ERROR_MESSAGE:I

.field private static final EMPTY_RESPONSE_ERROR_MESSAGE:I

.field private static final NOT_DEFINED_ERROR_MESSAGE:I

.field private static final NO_CONNECTION_ERROR_MESSAGE:I

.field private static final TIME_OUT_ERROR_MESSAGE:I

.field private static final UNAUTHORIZED_ERROR_MESSAGE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    sget v0, Lcom/smedialink/storage/R$string;->common_error_no_internet:I

    sput v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->NO_CONNECTION_ERROR_MESSAGE:I

    .line 13
    sget v1, Lcom/smedialink/storage/R$string;->common_error_unexpected:I

    sput v1, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->BAD_RESPONSE_ERROR_MESSAGE:I

    .line 14
    sput v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->TIME_OUT_ERROR_MESSAGE:I

    .line 15
    sput v1, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->EMPTY_RESPONSE_ERROR_MESSAGE:I

    .line 16
    sput v1, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->NOT_DEFINED_ERROR_MESSAGE:I

    .line 17
    sget v0, Lcom/smedialink/storage/R$string;->common_error_unauthorized:I

    sput v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->UNAUTHORIZED_ERROR_MESSAGE:I

    return-void
.end method

.method public static final synthetic access$getBAD_RESPONSE_ERROR_MESSAGE$p()I
    .locals 1

    .line 1
    sget v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->BAD_RESPONSE_ERROR_MESSAGE:I

    return v0
.end method

.method public static final synthetic access$getEMPTY_RESPONSE_ERROR_MESSAGE$p()I
    .locals 1

    .line 1
    sget v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->EMPTY_RESPONSE_ERROR_MESSAGE:I

    return v0
.end method

.method public static final synthetic access$getNOT_DEFINED_ERROR_MESSAGE$p()I
    .locals 1

    .line 1
    sget v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->NOT_DEFINED_ERROR_MESSAGE:I

    return v0
.end method

.method public static final synthetic access$getNO_CONNECTION_ERROR_MESSAGE$p()I
    .locals 1

    .line 1
    sget v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->NO_CONNECTION_ERROR_MESSAGE:I

    return v0
.end method

.method public static final synthetic access$getTIME_OUT_ERROR_MESSAGE$p()I
    .locals 1

    .line 1
    sget v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->TIME_OUT_ERROR_MESSAGE:I

    return v0
.end method

.method public static final synthetic access$getUNAUTHORIZED_ERROR_MESSAGE$p()I
    .locals 1

    .line 1
    sget v0, Lcom/smedialink/storage/data/network/model/error/ErrorModelKt;->UNAUTHORIZED_ERROR_MESSAGE:I

    return v0
.end method
