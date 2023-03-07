.class public final Lcom/smedialink/ui/shop/NeurobotsStoreActivity$onFragmentCreate$1;
.super Ljava/lang/Object;
.source "NeurobotsStoreActivity.kt"

# interfaces
.implements Lcom/smedialink/bots/usecase/AiBotsManager$FirebaseSnapshotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/shop/NeurobotsStoreActivity;->onFragmentCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 1

    .line 255
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->purchaseHelper:Lcom/smedialink/ui/shop/PurchaseHelper;

    invoke-virtual {v0}, Lcom/smedialink/ui/shop/PurchaseHelper;->preloadPurchasesInfo()V

    return-void
.end method
