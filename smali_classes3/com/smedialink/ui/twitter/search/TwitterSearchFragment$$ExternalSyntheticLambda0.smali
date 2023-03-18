.class public final synthetic Lcom/smedialink/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chad/library/adapter/base/listener/OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

.field public final synthetic f$1:Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    iput-object p2, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;

    iget-object v1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;->$r8$lambda$yCs6wjXsBG8AvPbzJgOwUjMmtg0(Lcom/smedialink/ui/twitter/search/adapter/TwitterUsersRecycleAdapter;Lcom/smedialink/ui/twitter/search/TwitterSearchFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method
