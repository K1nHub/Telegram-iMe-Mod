.class public final synthetic Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

.field public final synthetic f$1:Lcom/iMe/model/catalog/CategoryWithCampaignsItem;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/iMe/model/catalog/CategoryWithCampaignsItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    return-void
.end method


# virtual methods
.method public final onLoadMore()V
    .locals 2

    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/model/catalog/CategoryWithCampaignsItem;

    invoke-static {v0, v1}, Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider$convert$1;->$r8$lambda$CmT9vbnul5pWpWPa4ygwmBDoZl0(Lcom/iMe/ui/adapter/provider/CategoryWithCampaignsProvider;Lcom/iMe/model/catalog/CategoryWithCampaignsItem;)V

    return-void
.end method
