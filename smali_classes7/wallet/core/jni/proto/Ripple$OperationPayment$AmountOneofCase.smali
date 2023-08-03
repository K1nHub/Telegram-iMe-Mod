.class public final enum Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
.super Ljava/lang/Enum;
.source "Ripple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$OperationPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AmountOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

.field public static final enum AMOUNT:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

.field public static final enum AMOUNTONEOF_NOT_SET:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

.field public static final enum CURRENCY_AMOUNT:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1083
    new-instance v0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    const-string v1, "AMOUNT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->AMOUNT:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    .line 1084
    new-instance v1, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    const-string v4, "CURRENCY_AMOUNT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->CURRENCY_AMOUNT:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    .line 1085
    new-instance v4, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    const-string v6, "AMOUNTONEOF_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->AMOUNTONEOF_NOT_SET:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 1082
    sput-object v6, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->$VALUES:[Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

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

    .line 1087
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1088
    iput p3, p0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
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

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1101
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->CURRENCY_AMOUNT:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    return-object p0

    .line 1100
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->AMOUNT:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    return-object p0

    .line 1102
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->AMOUNTONEOF_NOT_SET:Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
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

    .line 1095
    invoke-static {p0}, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->forNumber(I)Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1082
    const-class v0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;
    .locals 1

    .line 1082
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->$VALUES:[Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1107
    iget v0, p0, Lwallet/core/jni/proto/Ripple$OperationPayment$AmountOneofCase;->value:I

    return v0
.end method
