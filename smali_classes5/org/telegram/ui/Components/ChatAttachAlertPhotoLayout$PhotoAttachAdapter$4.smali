.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$4;
.super Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;
.source "ChatAttachAlertPhotoLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;Landroid/content/Context;Z)V
    .locals 0

    .line 3889
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 3892
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter$4;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$PhotoAttachAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->access$1400(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarConstructorPreviewCell;->onMeasure(II)V

    return-void
.end method
