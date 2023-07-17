.class public interface abstract Lorg/telegram/ui/Components/IPhotoPaintView;
.super Ljava/lang/Object;
.source "IPhotoPaintView.java"


# virtual methods
.method public abstract adjustPanLayoutHelperProgress()F
.end method

.method public abstract getAdditionalBottom()I
.end method

.method public abstract getAdditionalTop()I
.end method

.method public abstract getBitmap(Ljava/util/ArrayList;[Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;[",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract getCancelView()Landroid/view/View;
.end method

.method public abstract getEmojiPadding(Z)I
.end method

.method public abstract getLcm()J
.end method

.method public abstract getMasks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOffsetTranslationY()F
.end method

.method public abstract getRenderView()Lorg/telegram/ui/Components/Paint/RenderView;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hasChanges()Z
.end method

.method public abstract init()V
.end method

.method public abstract maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V
.end method

.method public abstract onAnimationStateChanged(Z)V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onCleanupEntities()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setOffsetTranslationX(F)V
.end method

.method public abstract setOffsetTranslationY(FFIZ)V
.end method

.method public abstract setOnDoneButtonClickedListener(Ljava/lang/Runnable;)V
.end method

.method public abstract setTransform(FFFFF)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract updateColors()V
.end method

.method public abstract updateZoom(Z)V
.end method
