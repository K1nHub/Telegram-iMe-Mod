.class public final enum Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
.super Ljava/lang/Enum;
.source "Nervos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

.field public static final enum DAO_DEPOSIT:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

.field public static final enum DAO_WITHDRAW_PHASE1:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

.field public static final enum DAO_WITHDRAW_PHASE2:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

.field public static final enum NATIVE_TRANSFER:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

.field public static final enum OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

.field public static final enum SUDT_TRANSFER:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 7133
    new-instance v0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    const-string v1, "NATIVE_TRANSFER"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->NATIVE_TRANSFER:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    .line 7134
    new-instance v1, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    const-string v4, "SUDT_TRANSFER"

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->SUDT_TRANSFER:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    .line 7135
    new-instance v4, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    const-string v7, "DAO_DEPOSIT"

    const/4 v8, 0x2

    const/4 v9, 0x7

    invoke-direct {v4, v7, v8, v9}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->DAO_DEPOSIT:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    .line 7136
    new-instance v7, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    const-string v9, "DAO_WITHDRAW_PHASE1"

    const/4 v10, 0x3

    const/16 v11, 0x8

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->DAO_WITHDRAW_PHASE1:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    .line 7137
    new-instance v9, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    const-string v11, "DAO_WITHDRAW_PHASE2"

    const/4 v12, 0x4

    const/16 v13, 0x9

    invoke-direct {v9, v11, v12, v13}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->DAO_WITHDRAW_PHASE2:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    .line 7138
    new-instance v11, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    const-string v13, "OPERATIONONEOF_NOT_SET"

    invoke-direct {v11, v13, v3, v2}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    new-array v6, v6, [Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v8

    aput-object v7, v6, v10

    aput-object v9, v6, v12

    aput-object v11, v6, v3

    .line 7132
    sput-object v6, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->$VALUES:[Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

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

    .line 7140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7141
    iput p3, p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
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

    .line 7157
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->DAO_WITHDRAW_PHASE2:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object p0

    .line 7156
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->DAO_WITHDRAW_PHASE1:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object p0

    .line 7155
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->DAO_DEPOSIT:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object p0

    .line 7154
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->SUDT_TRANSFER:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object p0

    .line 7153
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->NATIVE_TRANSFER:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object p0

    .line 7158
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->OPERATIONONEOF_NOT_SET:Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
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

    .line 7148
    invoke-static {p0}, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->forNumber(I)Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7132
    const-class v0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;
    .locals 1

    .line 7132
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->$VALUES:[Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 7163
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningInput$OperationOneofCase;->value:I

    return v0
.end method
