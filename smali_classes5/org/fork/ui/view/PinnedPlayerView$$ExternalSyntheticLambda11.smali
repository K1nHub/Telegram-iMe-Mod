.class public final synthetic Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/fork/ui/view/PinnedPlayerView;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/ui/view/PinnedPlayerView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda11;->f$0:Lorg/fork/ui/view/PinnedPlayerView;

    iput-object p2, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda11;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z
    .locals 7

    iget-object v0, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda11;->f$0:Lorg/fork/ui/view/PinnedPlayerView;

    iget-object v1, p0, Lorg/fork/ui/view/PinnedPlayerView$$ExternalSyntheticLambda11;->f$1:Ljava/util/ArrayList;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lorg/fork/ui/view/PinnedPlayerView;->$r8$lambda$BopCFZ81ufIDslGkkutXFd2XSn4(Lorg/fork/ui/view/PinnedPlayerView;Ljava/util/ArrayList;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;)Z

    move-result p1

    return p1
.end method
