.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final synthetic f$1:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;->f$1:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda22;->f$1:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$nIzKbTynqyljYPYsZhoreewkxBQ(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
