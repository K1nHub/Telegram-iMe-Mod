.class public final synthetic Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemChildClickListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

.field public final synthetic f$1:Lcom/iMe/feature/twitter/TwitterFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/feature/twitter/TwitterFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    iput-object p2, p0, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/feature/twitter/TwitterFragment;

    return-void
.end method


# virtual methods
.method public final onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;

    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterFragment$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/feature/twitter/TwitterFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/iMe/feature/twitter/TwitterFragment;->$r8$lambda$w24iEV3HjvDOzIZGtBiM-ox3xio(Lcom/iMe/feature/twitter/adapter/TweetsRecycleAdapter;Lcom/iMe/feature/twitter/TwitterFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
