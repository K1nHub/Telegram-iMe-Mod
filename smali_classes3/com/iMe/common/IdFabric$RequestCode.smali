.class public Lcom/iMe/common/IdFabric$RequestCode;
.super Ljava/lang/Object;
.source "IdFabric.java"


# static fields
.field public static final file_saving_directory:I = 0x3fffffff

.field public static final file_saving_write_storage_permission:I

.field private static id:I = 0x3fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x3fffffff    # 1.9999999f

    add-int/lit8 v0, v0, 0x1

    .line 239
    sput v0, Lcom/iMe/common/IdFabric$RequestCode;->id:I

    add-int/lit8 v1, v0, 0x1

    .line 240
    sput v1, Lcom/iMe/common/IdFabric$RequestCode;->id:I

    sput v0, Lcom/iMe/common/IdFabric$RequestCode;->file_saving_write_storage_permission:I

    return-void
.end method
