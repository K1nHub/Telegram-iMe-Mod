.class Lorg/telegram/ui/ArticleViewer$BlockAudioCell;
.super Landroid/view/View;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockAudioCell"
.end annotation


# instance fields
.field private TAG:I

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

.field private currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private durationLayout:Landroid/text/StaticLayout;

.field private isFirst:Z

.field private lastTimeString:Ljava/lang/String;

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private seekBar:Lorg/telegram/ui/Components/SeekBar;

.field private seekBarX:I

.field private seekBarY:I

.field private textX:I

.field private textY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;


# direct methods
.method public static synthetic $r8$lambda$Or9wgamd6F57beA5xYqZOxcpE4U(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->lambda$new$0(F)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 6573
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 6574
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x3a

    .line 6549
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    .line 6575
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 6577
    new-instance p2, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/16 p3, 0x18

    .line 6578
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setCircleRadius(I)V

    .line 6579
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->TAG:I

    .line 6581
    new-instance p1, Lorg/telegram/ui/Components/SeekBar;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    .line 6583
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer$BlockAudioCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    return-void
.end method

.method private didPressedButton(Z)V
    .locals 10

    .line 6844
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 6845
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$14400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6846
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 6847
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6848
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 6851
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6853
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 6854
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6855
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 6858
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6859
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 6860
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 6861
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6862
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 6864
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 6865
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 6866
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6867
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 2

    .line 6763
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$new$0(F)V
    .locals 2

    .line 6584
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    return-void

    .line 6587
    :cond_0
    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 6588
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    return-void
.end method


# virtual methods
.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;",
            ">;)V"
        }
    .end annotation

    .line 6914
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 6915
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6917
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 6918
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6920
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_2

    .line 6921
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 6609
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 6909
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->TAG:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 6879
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 6880
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 6873
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 6874
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 6713
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-nez v0, :cond_0

    return-void

    .line 6716
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setColorKeys(IIII)V

    .line 6717
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgress:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 6718
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    .line 6719
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6720
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6721
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 6722
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6724
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->durationLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x6

    const/16 v2, 0x36

    if-eqz v0, :cond_1

    .line 6725
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6726
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6727
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 6728
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6730
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 6731
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6732
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v4, v2

    iput v4, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 6733
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 6734
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v2, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    int-to-float v2, v2

    iget v0, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6735
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v3}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 6736
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 6737
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 6739
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_3

    .line 6740
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6741
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 6742
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iput v5, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    int-to-float v2, v4

    int-to-float v4, v5

    .line 6743
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6744
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 6745
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 6746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v0, v4

    .line 6748
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v2, :cond_4

    .line 6749
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6750
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iput v4, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 6751
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    add-int v7, v5, v6

    iput v7, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    int-to-float v2, v4

    add-int/2addr v5, v6

    int-to-float v4, v5

    .line 6752
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6753
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, p1, p0, v0}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 6754
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 6755
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6757
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_6

    const/16 v0, 0x12

    .line 6758
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :cond_5
    sub-int/2addr v0, v3

    int-to-float v8, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14000()Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 6885
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 25

    move-object/from16 v9, p0

    .line 6646
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const/16 v0, 0x36

    .line 6647
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 6649
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    const/4 v11, 0x1

    if-eqz v0, :cond_a

    .line 6651
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    const/16 v12, 0x12

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0xe

    .line 6652
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    goto :goto_0

    .line 6654
    :cond_0
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    .line 6656
    :goto_0
    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    sub-int v0, v10, v0

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v13, v0, v1

    const/16 v0, 0x2c

    .line 6657
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/16 v0, 0x10

    .line 6658
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    const/4 v0, 0x5

    .line 6659
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    .line 6660
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v2, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    add-int v3, v2, v14

    add-int v4, v0, v14

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    .line 6662
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v5, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object/from16 v1, p0

    move v4, v13

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13600(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/16 v15, 0x8

    if-eqz v0, :cond_1

    .line 6664
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    .line 6665
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    :cond_1
    move/from16 v16, v8

    .line 6667
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget v4, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    add-int v5, v1, v4

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v7, v1

    iget-object v8, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object/from16 v1, p0

    move v4, v13

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->access$13700(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 6669
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v16, v16, v0

    .line 6672
    :cond_3
    iget-boolean v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->isFirst:Z

    if-nez v0, :cond_4

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-gtz v0, :cond_4

    .line 6673
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int v16, v16, v0

    .line 6676
    :cond_4
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor(Z)Ljava/lang/String;

    move-result-object v0

    .line 6677
    iget-object v2, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessageObject;->getMusicTitle(Z)Ljava/lang/String;

    move-result-object v2

    .line 6678
    iget v3, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    const/16 v4, 0x32

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v14

    iput v3, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarX:I

    sub-int v3, v10, v3

    .line 6679
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 6680
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x1e

    if-eqz v4, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 6699
    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 6700
    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v14, v1

    div-int/2addr v14, v5

    add-int/2addr v0, v14

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    goto/16 :goto_4

    .line 6682
    :cond_6
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 6683
    new-instance v4, Landroid/text/SpannableStringBuilder;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v1

    aput-object v2, v7, v11

    const-string v2, "%s - %s"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 6684
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 6685
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 6687
    :cond_8
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6689
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 6690
    new-instance v2, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 6691
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4, v2, v1, v0, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6693
    :cond_9
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_audioTitlePaint:Landroid/text/TextPaint;

    int-to-float v1, v3

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 6694
    new-instance v0, Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 6695
    new-instance v1, Landroid/text/StaticLayout;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14200()Landroid/text/TextPaint;

    move-result-object v19

    sget-object v21, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v1

    move/from16 v20, v3

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    .line 6696
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->titleLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6697
    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v14, v1

    div-int/2addr v14, v5

    add-int/2addr v0, v14

    const/16 v1, 0xb

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    .line 6702
    :goto_4
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/SeekBar;->setSize(II)V

    move/from16 v11, v16

    .line 6707
    :cond_a
    invoke-virtual {v9, v10, v11}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6708
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updatePlayingMessageProgress()V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 6901
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6902
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 6903
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    :cond_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 6890
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6891
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 6614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 6615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 6617
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBarY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Components/SeekBar;->onTouch(IFF)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 6619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 6620
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6622
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    .line 6625
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 6626
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonX:I

    int-to-float v5, v2

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_2

    const/16 v5, 0x30

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonY:I

    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-lez v0, :cond_3

    :cond_2
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    if-nez v0, :cond_6

    .line 6627
    :cond_3
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    .line 6628
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 6630
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 6631
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    if-ne v0, v3, :cond_6

    .line 6632
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    .line 6633
    invoke-virtual {p0, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 6634
    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->didPressedButton(Z)V

    .line 6635
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 6637
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 6638
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    .line 6640
    :cond_6
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonPressed:I

    if-nez v0, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v10, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iget v11, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    move-object v7, p1

    move-object v8, p0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v10, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textX:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->textY:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->creditOffset:I

    add-int v11, v0, v1

    move-object v7, p1

    move-object v8, p0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move v3, v4

    :cond_8
    :goto_1
    return v3
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;ZZ)V
    .locals 6

    .line 6593
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 6595
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$14100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    invoke-virtual {p1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_0

    .line 6597
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6600
    :cond_0
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->isFirst:Z

    .line 6602
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbar:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioCacheSeekbar:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarFill:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarSelected:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/SeekBar;->setColors(IIIII)V

    const/4 p1, 0x0

    .line 6604
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    .line 6605
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public updateButtonState(Z)V
    .locals 5

    .line 6807
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 6808
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 6809
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 6810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 6811
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    :cond_0
    if-eqz v1, :cond_3

    .line 6815
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 6816
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 6817
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6820
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    goto :goto_1

    .line 6818
    :cond_2
    :goto_0
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 6822
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_3

    .line 6824
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 6825
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v0, 0x2

    .line 6826
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 6827
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6828
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    .line 6830
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->buttonState:I

    .line 6831
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6833
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    goto :goto_2

    .line 6835
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6837
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6840
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updatePlayingMessageProgress()V

    return-void
.end method

.method public updatePlayingMessageProgress()V
    .locals 10

    .line 6774
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 6778
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6779
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 6784
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6785
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 6787
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 6788
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 6789
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v3, :cond_3

    .line 6790
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6795
    :cond_4
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v3

    .line 6796
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6797
    :cond_5
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->lastTimeString:Ljava/lang/String;

    .line 6798
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14200()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 6799
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14200()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 6800
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14200()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->durationLayout:Landroid/text/StaticLayout;

    .line 6802
    :cond_6
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14200()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$14300(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 6803
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method
