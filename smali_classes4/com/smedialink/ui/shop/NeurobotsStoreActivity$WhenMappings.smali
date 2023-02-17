.class public final synthetic Lcom/smedialink/ui/shop/NeurobotsStoreActivity$WhenMappings;
.super Ljava/lang/Object;
.source "NeurobotsStoreActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/shop/NeurobotsStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/smedialink/bots/data/model/BotStatus;->values()[Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->PAID:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x3

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x4

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x5

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->DOWNLOADING:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x6

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->ALL:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
