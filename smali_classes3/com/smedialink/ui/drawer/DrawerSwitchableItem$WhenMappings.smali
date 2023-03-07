.class public final synthetic Lcom/smedialink/ui/drawer/DrawerSwitchableItem$WhenMappings;
.super Ljava/lang/Object;
.source "DrawerSwitchableItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/drawer/DrawerSwitchableItem;
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

    invoke-static {}, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->values()[Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->WALLET:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->CATALOG:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->MANAGEMENT:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->MUSIC:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->CONTACTS:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->CALLS:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->PEOPLE_NEARBY:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->CLOUD:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/drawer/DrawerSwitchableItem;->ALBUMS:Lcom/smedialink/ui/drawer/DrawerSwitchableItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/drawer/DrawerSwitchableItem$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
