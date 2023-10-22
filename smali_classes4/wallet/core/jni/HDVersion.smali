.class public final enum Lwallet/core/jni/HDVersion;
.super Ljava/lang/Enum;
.source "HDVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/HDVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/HDVersion;

.field public static final enum DGPV:Lwallet/core/jni/HDVersion;

.field public static final enum DGUB:Lwallet/core/jni/HDVersion;

.field public static final enum DPRV:Lwallet/core/jni/HDVersion;

.field public static final enum DPUB:Lwallet/core/jni/HDVersion;

.field public static final enum LTPV:Lwallet/core/jni/HDVersion;

.field public static final enum LTUB:Lwallet/core/jni/HDVersion;

.field public static final enum MTPV:Lwallet/core/jni/HDVersion;

.field public static final enum MTUB:Lwallet/core/jni/HDVersion;

.field public static final enum NONE:Lwallet/core/jni/HDVersion;

.field public static final enum XPRV:Lwallet/core/jni/HDVersion;

.field public static final enum XPUB:Lwallet/core/jni/HDVersion;

.field public static final enum YPRV:Lwallet/core/jni/HDVersion;

.field public static final enum YPUB:Lwallet/core/jni/HDVersion;

.field public static final enum ZPRV:Lwallet/core/jni/HDVersion;

.field public static final enum ZPUB:Lwallet/core/jni/HDVersion;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 19
    new-instance v0, Lwallet/core/jni/HDVersion;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/HDVersion;->NONE:Lwallet/core/jni/HDVersion;

    .line 20
    new-instance v1, Lwallet/core/jni/HDVersion;

    const-string v3, "XPUB"

    const/4 v4, 0x1

    const v5, 0x488b21e

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/HDVersion;->XPUB:Lwallet/core/jni/HDVersion;

    .line 21
    new-instance v3, Lwallet/core/jni/HDVersion;

    const-string v5, "XPRV"

    const/4 v6, 0x2

    const v7, 0x488ade4

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/HDVersion;->XPRV:Lwallet/core/jni/HDVersion;

    .line 22
    new-instance v5, Lwallet/core/jni/HDVersion;

    const-string v7, "YPUB"

    const/4 v8, 0x3

    const v9, 0x49d7cb2

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/HDVersion;->YPUB:Lwallet/core/jni/HDVersion;

    .line 23
    new-instance v7, Lwallet/core/jni/HDVersion;

    const-string v9, "YPRV"

    const/4 v10, 0x4

    const v11, 0x49d7878

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/HDVersion;->YPRV:Lwallet/core/jni/HDVersion;

    .line 24
    new-instance v9, Lwallet/core/jni/HDVersion;

    const-string v11, "ZPUB"

    const/4 v12, 0x5

    const v13, 0x4b24746

    invoke-direct {v9, v11, v12, v13}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/HDVersion;->ZPUB:Lwallet/core/jni/HDVersion;

    .line 25
    new-instance v11, Lwallet/core/jni/HDVersion;

    const-string v13, "ZPRV"

    const/4 v14, 0x6

    const v15, 0x4b2430c

    invoke-direct {v11, v13, v14, v15}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/HDVersion;->ZPRV:Lwallet/core/jni/HDVersion;

    .line 26
    new-instance v13, Lwallet/core/jni/HDVersion;

    const-string v15, "LTUB"

    const/4 v14, 0x7

    const v12, 0x19da462

    invoke-direct {v13, v15, v14, v12}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lwallet/core/jni/HDVersion;->LTUB:Lwallet/core/jni/HDVersion;

    .line 27
    new-instance v12, Lwallet/core/jni/HDVersion;

    const-string v15, "LTPV"

    const/16 v14, 0x8

    const v10, 0x19d9cfe

    invoke-direct {v12, v15, v14, v10}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lwallet/core/jni/HDVersion;->LTPV:Lwallet/core/jni/HDVersion;

    .line 28
    new-instance v10, Lwallet/core/jni/HDVersion;

    const-string v15, "MTUB"

    const/16 v14, 0x9

    const v8, 0x1b26ef6

    invoke-direct {v10, v15, v14, v8}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lwallet/core/jni/HDVersion;->MTUB:Lwallet/core/jni/HDVersion;

    .line 29
    new-instance v8, Lwallet/core/jni/HDVersion;

    const-string v15, "MTPV"

    const/16 v14, 0xa

    const v6, 0x1b26792

    invoke-direct {v8, v15, v14, v6}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lwallet/core/jni/HDVersion;->MTPV:Lwallet/core/jni/HDVersion;

    .line 30
    new-instance v6, Lwallet/core/jni/HDVersion;

    const-string v15, "DPUB"

    const/16 v14, 0xb

    const v4, 0x2fda926

    invoke-direct {v6, v15, v14, v4}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/HDVersion;->DPUB:Lwallet/core/jni/HDVersion;

    .line 31
    new-instance v4, Lwallet/core/jni/HDVersion;

    const-string v15, "DPRV"

    const/16 v14, 0xc

    const v2, 0x2fda4e8

    invoke-direct {v4, v15, v14, v2}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HDVersion;->DPRV:Lwallet/core/jni/HDVersion;

    .line 32
    new-instance v2, Lwallet/core/jni/HDVersion;

    const-string v15, "DGUB"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const v4, 0x2facafd

    invoke-direct {v2, v15, v14, v4}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lwallet/core/jni/HDVersion;->DGUB:Lwallet/core/jni/HDVersion;

    .line 33
    new-instance v4, Lwallet/core/jni/HDVersion;

    const-string v15, "DGPV"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const v2, 0x2fac398

    invoke-direct {v4, v15, v14, v2}, Lwallet/core/jni/HDVersion;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/HDVersion;->DGPV:Lwallet/core/jni/HDVersion;

    const/16 v2, 0xf

    new-array v2, v2, [Lwallet/core/jni/HDVersion;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v14

    .line 18
    sput-object v2, Lwallet/core/jni/HDVersion;->$VALUES:[Lwallet/core/jni/HDVersion;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lwallet/core/jni/HDVersion;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/HDVersion;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :sswitch_0
    sget-object p0, Lwallet/core/jni/HDVersion;->ZPUB:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 49
    :sswitch_1
    sget-object p0, Lwallet/core/jni/HDVersion;->ZPRV:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 46
    :sswitch_2
    sget-object p0, Lwallet/core/jni/HDVersion;->YPUB:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 47
    :sswitch_3
    sget-object p0, Lwallet/core/jni/HDVersion;->YPRV:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 44
    :sswitch_4
    sget-object p0, Lwallet/core/jni/HDVersion;->XPUB:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 45
    :sswitch_5
    sget-object p0, Lwallet/core/jni/HDVersion;->XPRV:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 54
    :sswitch_6
    sget-object p0, Lwallet/core/jni/HDVersion;->DPUB:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 55
    :sswitch_7
    sget-object p0, Lwallet/core/jni/HDVersion;->DPRV:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 56
    :sswitch_8
    sget-object p0, Lwallet/core/jni/HDVersion;->DGUB:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 57
    :sswitch_9
    sget-object p0, Lwallet/core/jni/HDVersion;->DGPV:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 52
    :sswitch_a
    sget-object p0, Lwallet/core/jni/HDVersion;->MTUB:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 53
    :sswitch_b
    sget-object p0, Lwallet/core/jni/HDVersion;->MTPV:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 50
    :sswitch_c
    sget-object p0, Lwallet/core/jni/HDVersion;->LTUB:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 51
    :sswitch_d
    sget-object p0, Lwallet/core/jni/HDVersion;->LTPV:Lwallet/core/jni/HDVersion;

    return-object p0

    .line 43
    :sswitch_e
    sget-object p0, Lwallet/core/jni/HDVersion;->NONE:Lwallet/core/jni/HDVersion;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_e
        0x19d9cfe -> :sswitch_d
        0x19da462 -> :sswitch_c
        0x1b26792 -> :sswitch_b
        0x1b26ef6 -> :sswitch_a
        0x2fac398 -> :sswitch_9
        0x2facafd -> :sswitch_8
        0x2fda4e8 -> :sswitch_7
        0x2fda926 -> :sswitch_6
        0x488ade4 -> :sswitch_5
        0x488b21e -> :sswitch_4
        0x49d7878 -> :sswitch_3
        0x49d7cb2 -> :sswitch_2
        0x4b2430c -> :sswitch_1
        0x4b24746 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/HDVersion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 18
    const-class v0, Lwallet/core/jni/HDVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/HDVersion;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/HDVersion;
    .locals 1

    .line 18
    sget-object v0, Lwallet/core/jni/HDVersion;->$VALUES:[Lwallet/core/jni/HDVersion;

    invoke-virtual {v0}, [Lwallet/core/jni/HDVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/HDVersion;

    return-object v0
.end method


# virtual methods
.method public native isPrivate()Z
.end method

.method public native isPublic()Z
.end method

.method public value()I
    .locals 1

    .line 39
    iget v0, p0, Lwallet/core/jni/HDVersion;->value:I

    return v0
.end method
