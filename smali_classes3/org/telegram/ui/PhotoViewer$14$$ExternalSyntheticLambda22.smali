.class public final synthetic Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$14;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$14;Ljava/util/ArrayList;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/PhotoViewer$14;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda22;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda22;->f$0:Lorg/telegram/ui/PhotoViewer$14;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda22;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$14$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/ui/ChatActivity;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/PhotoViewer$14;->$r8$lambda$VFt7wOrONHIMxQCvQ1je6KUi4Co(Lorg/telegram/ui/PhotoViewer$14;Ljava/util/ArrayList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p1

    return p1
.end method
