.class public final enum Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
.super Ljava/lang/Enum;
.source "Ripple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

.field public static final enum OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

.field public static final enum OP_NFTOKEN_ACCEPT_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

.field public static final enum OP_NFTOKEN_BURN:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

.field public static final enum OP_NFTOKEN_CANCEL_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

.field public static final enum OP_NFTOKEN_CREATE_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

.field public static final enum OP_PAYMENT:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

.field public static final enum OP_TRUST_SET:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 3280
    new-instance v0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    const-string v1, "OP_TRUST_SET"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_TRUST_SET:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    .line 3281
    new-instance v1, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    const-string v4, "OP_PAYMENT"

    const/4 v5, 0x1

    const/16 v6, 0x8

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_PAYMENT:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    .line 3282
    new-instance v4, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    const-string v6, "OP_NFTOKEN_BURN"

    const/4 v7, 0x2

    const/16 v8, 0x9

    invoke-direct {v4, v6, v7, v8}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_BURN:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    .line 3283
    new-instance v6, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    const-string v8, "OP_NFTOKEN_CREATE_OFFER"

    const/4 v9, 0x3

    const/16 v10, 0xa

    invoke-direct {v6, v8, v9, v10}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_CREATE_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    .line 3284
    new-instance v8, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    const-string v10, "OP_NFTOKEN_ACCEPT_OFFER"

    const/4 v11, 0x4

    const/16 v12, 0xb

    invoke-direct {v8, v10, v11, v12}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_ACCEPT_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    .line 3285
    new-instance v10, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    const-string v12, "OP_NFTOKEN_CANCEL_OFFER"

    const/4 v13, 0x5

    const/16 v14, 0xc

    invoke-direct {v10, v12, v13, v14}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_CANCEL_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    .line 3286
    new-instance v12, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    const-string v14, "OPERATIONONEOF_NOT_SET"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v2}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    new-array v3, v3, [Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    aput-object v10, v3, v13

    aput-object v12, v3, v15

    .line 3279
    sput-object v3, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->$VALUES:[Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

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

    .line 3288
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3289
    iput p3, p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
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

    .line 3306
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_CANCEL_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0

    .line 3305
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_ACCEPT_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0

    .line 3304
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_CREATE_OFFER:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0

    .line 3303
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_NFTOKEN_BURN:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0

    .line 3302
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_PAYMENT:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0

    .line 3301
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OP_TRUST_SET:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0

    .line 3307
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
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

    .line 3296
    invoke-static {p0}, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->forNumber(I)Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3279
    const-class v0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;
    .locals 1

    .line 3279
    sget-object v0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->$VALUES:[Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 3312
    iget v0, p0, Lwallet/core/jni/proto/Ripple$SigningInput$OperationOneofCase;->value:I

    return v0
.end method
