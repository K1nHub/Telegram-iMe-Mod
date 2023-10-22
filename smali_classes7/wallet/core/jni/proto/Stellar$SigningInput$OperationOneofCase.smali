.class public final enum Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
.super Ljava/lang/Enum;
.source "Stellar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

.field public static final enum OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

.field public static final enum OP_CHANGE_TRUST:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

.field public static final enum OP_CLAIM_CLAIMABLE_BALANCE:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

.field public static final enum OP_CREATE_ACCOUNT:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

.field public static final enum OP_CREATE_CLAIMABLE_BALANCE:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

.field public static final enum OP_PAYMENT:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 4808
    new-instance v0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    const-string v1, "OP_CREATE_ACCOUNT"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CREATE_ACCOUNT:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    .line 4809
    new-instance v1, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    const-string v4, "OP_PAYMENT"

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_PAYMENT:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    .line 4810
    new-instance v4, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    const-string v6, "OP_CHANGE_TRUST"

    const/4 v7, 0x2

    const/16 v8, 0x8

    invoke-direct {v4, v6, v7, v8}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CHANGE_TRUST:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    .line 4811
    new-instance v6, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    const-string v8, "OP_CREATE_CLAIMABLE_BALANCE"

    const/4 v9, 0x3

    const/16 v10, 0xe

    invoke-direct {v6, v8, v9, v10}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CREATE_CLAIMABLE_BALANCE:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    .line 4812
    new-instance v8, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    const-string v10, "OP_CLAIM_CLAIMABLE_BALANCE"

    const/4 v11, 0x4

    const/16 v12, 0xf

    invoke-direct {v8, v10, v11, v12}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CLAIM_CLAIMABLE_BALANCE:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    .line 4813
    new-instance v10, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    const-string v12, "OPERATIONONEOF_NOT_SET"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v2}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    new-array v3, v3, [Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    aput-object v10, v3, v13

    .line 4807
    sput-object v3, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->$VALUES:[Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

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

    .line 4815
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4816
    iput p3, p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4832
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CLAIM_CLAIMABLE_BALANCE:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object p0

    .line 4831
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CREATE_CLAIMABLE_BALANCE:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object p0

    .line 4830
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CHANGE_TRUST:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object p0

    .line 4829
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_PAYMENT:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object p0

    .line 4828
    :cond_4
    sget-object p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OP_CREATE_ACCOUNT:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object p0

    .line 4833
    :cond_5
    sget-object p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
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

    .line 4823
    invoke-static {p0}, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->forNumber(I)Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 4807
    const-class v0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;
    .locals 1

    .line 4807
    sget-object v0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->$VALUES:[Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 4838
    iget v0, p0, Lwallet/core/jni/proto/Stellar$SigningInput$OperationOneofCase;->value:I

    return v0
.end method
