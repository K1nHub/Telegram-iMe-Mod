.class public final synthetic Lorg/fork/enums/TelegramCacheType$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "TelegramCacheType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/TelegramCacheType$Companion;
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

    invoke-static {}, Lorg/fork/enums/TelegramCacheType;->values()[Lorg/fork/enums/TelegramCacheType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->DOCUMENTS:Lorg/fork/enums/TelegramCacheType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/TelegramCacheType;->MUSIC:Lorg/fork/enums/TelegramCacheType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/fork/enums/TelegramCacheType$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
