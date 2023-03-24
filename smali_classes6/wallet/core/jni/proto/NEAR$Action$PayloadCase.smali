.class public final enum Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
.super Ljava/lang/Enum;
.source "NEAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/NEAR$Action$PayloadCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum ADD_KEY:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum CREATE_ACCOUNT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum DELETE_ACCOUNT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum DELETE_KEY:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum DEPLOY_CONTRACT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum FUNCTION_CALL:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum STAKE:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4619
    new-instance v0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v1, "CREATE_ACCOUNT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->CREATE_ACCOUNT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4620
    new-instance v1, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v4, "DEPLOY_CONTRACT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->DEPLOY_CONTRACT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4621
    new-instance v4, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v6, "FUNCTION_CALL"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->FUNCTION_CALL:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4622
    new-instance v6, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v8, "TRANSFER"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->TRANSFER:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4623
    new-instance v8, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v10, "STAKE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->STAKE:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4624
    new-instance v10, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v12, "ADD_KEY"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->ADD_KEY:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4625
    new-instance v12, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v14, "DELETE_KEY"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->DELETE_KEY:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4626
    new-instance v14, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v13, "DELETE_ACCOUNT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->DELETE_ACCOUNT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    .line 4627
    new-instance v13, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const-string v15, "PAYLOAD_NOT_SET"

    invoke-direct {v13, v15, v11, v2}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->PAYLOAD_NOT_SET:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    const/16 v15, 0x9

    new-array v15, v15, [Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    aput-object v0, v15, v2

    aput-object v1, v15, v3

    aput-object v4, v15, v5

    aput-object v6, v15, v7

    aput-object v8, v15, v9

    const/4 v0, 0x5

    aput-object v10, v15, v0

    const/4 v0, 0x6

    aput-object v12, v15, v0

    const/4 v0, 0x7

    aput-object v14, v15, v0

    aput-object v13, v15, v11

    .line 4618
    sput-object v15, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->$VALUES:[Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

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

    .line 4629
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4630
    iput p3, p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
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

    .line 4649
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->DELETE_ACCOUNT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4648
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->DELETE_KEY:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4647
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->ADD_KEY:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4646
    :pswitch_3
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->STAKE:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4645
    :pswitch_4
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->TRANSFER:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4644
    :pswitch_5
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->FUNCTION_CALL:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4643
    :pswitch_6
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->DEPLOY_CONTRACT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4642
    :pswitch_7
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->CREATE_ACCOUNT:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    .line 4650
    :pswitch_8
    sget-object p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->PAYLOAD_NOT_SET:Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static valueOf(I)Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
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

    .line 4637
    invoke-static {p0}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->forNumber(I)Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 4618
    const-class v0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
    .locals 1

    .line 4618
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->$VALUES:[Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 4655
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->value:I

    return v0
.end method
