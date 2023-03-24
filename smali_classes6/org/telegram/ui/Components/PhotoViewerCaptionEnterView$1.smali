.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;
.super Lorg/telegram/ui/Components/EditTextCaption;
.source "PhotoViewerCaptionEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/EditTextCaption;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->extendActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V

    return-void
.end method

.method protected getActionModeStyle()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 177
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$102(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z

    .line 178
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextCaption;->onMeasure(II)V

    .line 179
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$100(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 180
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$202(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;I)I

    .line 182
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$1;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {p2, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->access$102(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/16 v0, 0x33

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/EditText;->setMeasuredDimension(II)V

    .line 185
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextEffects;->onSelectionChanged(II)V

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->fixHandleView(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 195
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->fixHandleView(Z)V

    :goto_0
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .locals 2

    .line 211
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    const/16 v1, 0x3e8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 212
    invoke-super {p0, p1}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 217
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 218
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->invalidateForce()V

    return-void
.end method
