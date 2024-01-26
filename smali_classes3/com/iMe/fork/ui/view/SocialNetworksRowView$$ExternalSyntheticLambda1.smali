.class public final synthetic Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/ui/view/SocialNetworksRowView;

.field public final synthetic f$1:Lcom/iMe/fork/enums/DrawerSocialNetwork;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/ui/view/SocialNetworksRowView;

    iput-object p2, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/fork/enums/DrawerSocialNetwork;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/ui/view/SocialNetworksRowView;

    iget-object v1, p0, Lcom/iMe/fork/ui/view/SocialNetworksRowView$$ExternalSyntheticLambda1;->f$1:Lcom/iMe/fork/enums/DrawerSocialNetwork;

    invoke-static {v0, v1, p1}, Lcom/iMe/fork/ui/view/SocialNetworksRowView;->$r8$lambda$ErvqN3ksIs16zUaXG6frimDuvHw(Lcom/iMe/fork/ui/view/SocialNetworksRowView;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
