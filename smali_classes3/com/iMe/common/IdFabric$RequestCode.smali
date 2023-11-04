.class public Lcom/iMe/common/IdFabric$RequestCode;
.super Ljava/lang/Object;
.source "IdFabric.java"


# static fields
.field public static final FILE_SAVING_DIRECTORY:I = 0x3fffffff

.field public static final FILE_SAVING_WRITE_STORAGE_PERMISSION:I

.field public static final QUICK_LOGIN_AUTHORIZE:I

.field private static id:I = 0x3fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x3fffffff    # 1.9999999f

    add-int/lit8 v0, v0, 0x1

    .line 284
    sput v0, Lcom/iMe/common/IdFabric$RequestCode;->id:I

    add-int/lit8 v1, v0, 0x1

    .line 285
    sput v1, Lcom/iMe/common/IdFabric$RequestCode;->id:I

    sput v0, Lcom/iMe/common/IdFabric$RequestCode;->FILE_SAVING_WRITE_STORAGE_PERMISSION:I

    add-int/lit8 v0, v1, 0x1

    .line 286
    sput v0, Lcom/iMe/common/IdFabric$RequestCode;->id:I

    sput v1, Lcom/iMe/common/IdFabric$RequestCode;->QUICK_LOGIN_AUTHORIZE:I

    return-void
.end method
