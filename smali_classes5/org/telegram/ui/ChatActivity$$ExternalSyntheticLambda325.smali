.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda325;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda325;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda325;->f$1:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda325;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda325;->f$1:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$Fhzt0NFWH3r5vpvdfV1pux0rB68(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Landroid/view/View;I)V

    return-void
.end method
