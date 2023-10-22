.class public final enum Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Algorand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

.field public static final enum ASSET_OPT_IN:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

.field public static final enum ASSET_TRANSFER:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1395
    new-instance v0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->TRANSFER:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    .line 1396
    new-instance v1, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    const-string v3, "ASSET_TRANSFER"

    const/4 v4, 0x1

    const/16 v5, 0xb

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->ASSET_TRANSFER:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    .line 1397
    new-instance v3, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    const-string v5, "ASSET_OPT_IN"

    const/4 v6, 0x2

    const/16 v7, 0xc

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->ASSET_OPT_IN:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    .line 1398
    new-instance v5, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    const-string v7, "MESSAGEONEOF_NOT_SET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1394
    sput-object v7, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

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

    .line 1400
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1401
    iput p3, p0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
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

    .line 1415
    :pswitch_0
    sget-object p0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->ASSET_OPT_IN:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    return-object p0

    .line 1414
    :pswitch_1
    sget-object p0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->ASSET_TRANSFER:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    return-object p0

    .line 1413
    :pswitch_2
    sget-object p0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->TRANSFER:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    return-object p0

    .line 1416
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
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

    .line 1408
    invoke-static {p0}, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1394
    const-class v0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
    .locals 1

    .line 1394
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1421
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->value:I

    return v0
.end method
