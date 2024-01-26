.class public final synthetic Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/ui/view/PinnedPlayerView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda10;->f$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    iput-object p2, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda10;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 8

    iget-object v0, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda10;->f$0:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    iget-object v1, p0, Lcom/iMe/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda10;->f$1:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->$r8$lambda$bTlKk18BNF-qmsjQdO5rn3wP_Zw(Lcom/iMe/fork/ui/view/PinnedPlayerView;Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p1

    return p1
.end method
