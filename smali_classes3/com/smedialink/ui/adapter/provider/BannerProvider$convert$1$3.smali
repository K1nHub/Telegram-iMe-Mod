.class public final Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1$3;
.super Ljava/lang/Object;
.source "BannerProvider.kt"

# interfaces
.implements Lcom/smedialink/utils/listeners/OnSnapPositionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1;->invoke(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/adapter/provider/BannerProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1$3;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapPositionChange(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/BannerProvider$convert$1$3;->this$0:Lcom/smedialink/ui/adapter/provider/BannerProvider;

    invoke-virtual {v0}, Lcom/smedialink/ui/adapter/provider/BannerProvider;->getBannersRecycleAdapter()Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/home/v2/adapter/BannersRecycleAdapter;->animateNewBanner(I)V

    return-void
.end method
