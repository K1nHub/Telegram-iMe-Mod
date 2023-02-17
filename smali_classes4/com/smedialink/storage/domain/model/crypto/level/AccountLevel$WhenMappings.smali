.class public final synthetic Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel$WhenMappings;
.super Ljava/lang/Object;
.source "AccountLevel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;->values()[Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;->ORACLE:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
