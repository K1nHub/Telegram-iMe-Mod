.class public final synthetic Lcom/smedialink/ui/shop/view/ListBotsPageView$WhenMappings;
.super Ljava/lang/Object;
.source "ListBotsPageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/shop/view/ListBotsPageView;
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

    invoke-static {}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->POPULAR:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->FREE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->MY:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->ALL:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/shop/view/ListBotsPageView$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
