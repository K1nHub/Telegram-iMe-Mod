.class Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;
.super Landroid/view/View;
.source "FilterChatlistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->options()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

.field final synthetic val$finalContainer:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1216
    iput-object p1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    iput-object p3, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->val$finalContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v0, 0x33000000

    .line 1220
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1221
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    iget-object v1, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->val$finalContainer:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->access$2400(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->access$2500(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;[F)V

    .line 1222
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1223
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    iget-object v0, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    iget-object v1, v1, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 1225
    iget-object v4, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    invoke-static {v4}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->access$2400(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)[F

    move-result-object v4

    aget v4, v4, v3

    sub-float/2addr v4, v0

    add-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1227
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    invoke-static {v0}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->access$2400(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    invoke-static {v1}, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->access$2400(Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;)[F

    move-result-object v1

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell$4;->this$0:Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;

    iget-object v0, v0, Lorg/telegram/ui/FilterChatlistActivity$InviteLinkCell;->linkBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
