.class public final synthetic Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/SharedAudioCell;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/SharedAudioCell;Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Cells/SharedAudioCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/LaunchActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/LaunchActivity;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Cells/SharedAudioCell;->$r8$lambda$1w_et4-pBk9VPXy1f-Wy5hko0Ks(Lorg/telegram/ui/Cells/SharedAudioCell;Ljava/util/ArrayList;Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p1

    return p1
.end method
