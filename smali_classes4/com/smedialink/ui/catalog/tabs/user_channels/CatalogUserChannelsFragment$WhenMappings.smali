.class public final synthetic Lcom/smedialink/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$WhenMappings;
.super Ljava/lang/Object;
.source "CatalogUserChannelsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;
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

    invoke-static {}, Lcom/smedialink/storage/domain/model/catalog/ChatType;->values()[Lcom/smedialink/storage/domain/model/catalog/ChatType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/catalog/ChatType;->CHANNEL:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/catalog/ChatType;->GROUP:Lcom/smedialink/storage/domain/model/catalog/ChatType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
