.class public final enum Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
.super Ljava/lang/Enum;
.source "MultiversX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

.field public static final enum EGLD_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

.field public static final enum ESDTNFT_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

.field public static final enum ESDT_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

.field public static final enum GENERIC_ACTION:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 3773
    new-instance v0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    const-string v1, "GENERIC_ACTION"

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->GENERIC_ACTION:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    .line 3774
    new-instance v1, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    const-string v4, "EGLD_TRANSFER"

    const/4 v5, 0x1

    const/4 v6, 0x6

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->EGLD_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    .line 3775
    new-instance v4, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    const-string v6, "ESDT_TRANSFER"

    const/4 v7, 0x2

    const/4 v8, 0x7

    invoke-direct {v4, v6, v7, v8}, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->ESDT_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    .line 3776
    new-instance v6, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    const-string v8, "ESDTNFT_TRANSFER"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->ESDTNFT_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    .line 3777
    new-instance v8, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    const-string v10, "MESSAGEONEOF_NOT_SET"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v2}, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    new-array v3, v3, [Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    aput-object v8, v3, v11

    .line 3772
    sput-object v3, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

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

    .line 3779
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3780
    iput p3, p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3795
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->ESDTNFT_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    return-object p0

    .line 3794
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->ESDT_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    return-object p0

    .line 3793
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->EGLD_TRANSFER:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    return-object p0

    .line 3792
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->GENERIC_ACTION:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    return-object p0

    .line 3796
    :cond_4
    sget-object p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
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

    .line 3787
    invoke-static {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3772
    const-class v0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
    .locals 1

    .line 3772
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 3801
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->value:I

    return v0
.end method
