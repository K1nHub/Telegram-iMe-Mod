.class public final synthetic Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$2:Lcom/iMe/fork/ui/fragment/MusicActivity;


# direct methods
.method public synthetic constructor <init>(ZLorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p2, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/MessageObject;

    iput-object p3, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;->f$2:Lcom/iMe/fork/ui/fragment/MusicActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;->f$0:Z

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$$ExternalSyntheticLambda5;->f$2:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-static {v0, v1, v2}, Lcom/iMe/fork/ui/fragment/MusicActivity;->$r8$lambda$V2Ao6kET0ez3b4AZCPHyOeJGpB8(ZLorg/telegram/messenger/MessageObject;Lcom/iMe/fork/ui/fragment/MusicActivity;)V

    return-void
.end method
