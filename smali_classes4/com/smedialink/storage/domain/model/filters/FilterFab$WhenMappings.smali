.class public final synthetic Lcom/smedialink/storage/domain/model/filters/FilterFab$WhenMappings;
.super Ljava/lang/Object;
.source "FilterFab.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/filters/FilterFab;
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

    invoke-static {}, Lcom/smedialink/storage/domain/model/filters/FilterFab;->values()[Lcom/smedialink/storage/domain/model/filters/FilterFab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->ARCHIVE:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CLOUD:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->MARK_ALL_READ:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->WALLET:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CONTACTS:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->MUSIC:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->ALBUMS:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_ALBUM:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/storage/domain/model/filters/FilterFab$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
