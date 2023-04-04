.class public final synthetic Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/INavigationLayout;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->updatePinnedPlayerVisible()V

    return-void
.end method
