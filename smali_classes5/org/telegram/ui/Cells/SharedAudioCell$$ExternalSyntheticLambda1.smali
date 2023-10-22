.class public final synthetic Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Cells/SharedAudioCell;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Cells/SharedAudioCell;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Cells/SharedAudioCell;

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final didSelectCloudDialog(J)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Cells/SharedAudioCell;

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedAudioCell$$ExternalSyntheticLambda1;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->$r8$lambda$O151UuYM0PDMZC4W7h9-YjAkJsI(Lorg/telegram/ui/Cells/SharedAudioCell;Lorg/telegram/ui/ActionBar/BaseFragment;J)V

    return-void
.end method

.method public synthetic onAlbumCreatorOpened()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate$-CC;->$default$onAlbumCreatorOpened(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$Delegate;)V

    return-void
.end method
