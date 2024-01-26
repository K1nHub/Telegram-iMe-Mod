.class Lorg/telegram/ui/ContentPreviewViewer$2;
.super Ljava/lang/Object;
.source "ContentPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContentPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method public static synthetic $r8$lambda$DvUDjxc8qsqQ0ypEe9gdvu5SmpM(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$2(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQgESpF7A-YlfeLFhNieOrKyflY(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$4(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IWnIgBnWCeVw71418vJA4lxPmdU(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U4ALDw2sERmwlUfQzL7PBPWVc0s(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$3(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNQGrTYqWKQfNqE8aWaeNWt14Mg(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vpl0y-m_D5WCx3IbyvNoUK0bJcI(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$0(Ljava/util/ArrayList;ZLandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/ArrayList;ZLandroid/view/View;)V
    .locals 8

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 680
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 681
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    .line 685
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    .line 687
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    invoke-interface {p1, v0, v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const/4 p3, 0x3

    if-ne p1, p3, :cond_4

    .line 689
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_4
    const/4 p3, 0x4

    if-ne p1, p3, :cond_5

    .line 691
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_5
    const/4 p3, 0x5

    if-ne p1, p3, :cond_6

    .line 693
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x2

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 695
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_7

    .line 696
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$run$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3502(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 756
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$2602(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static synthetic lambda$run$2(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 959
    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private static synthetic lambda$run$3(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 961
    :goto_0
    invoke-interface {p0, p1, p3, p4, p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    return-void
.end method

.method private synthetic lambda$run$4(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 13

    .line 887
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 890
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 897
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3300(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    move-object v4, v3

    .line 903
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 904
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1700(Lorg/telegram/ui/ContentPreviewViewer;)V

    goto/16 :goto_3

    .line 906
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    if-ne v0, v5, :cond_4

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3300(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->openKiklikoReport(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 908
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->SEND_AS_GIF:I

    if-ne v0, v5, :cond_5

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 910
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_ID:I

    if-ne v0, v5, :cond_6

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 912
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_CONTRACT:I

    if-ne v0, v5, :cond_7

    .line 913
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "POLYGON"

    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getTokenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 914
    :cond_7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_SOURCE:I

    if-ne v0, v5, :cond_8

    .line 915
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 916
    :cond_8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    if-ne v0, v5, :cond_b

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3700(Lorg/telegram/ui/ContentPreviewViewer;)V

    goto/16 :goto_3

    .line 919
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setKiklikoAvatar(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 922
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1800(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto/16 :goto_3

    .line 924
    :cond_b
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->SET_AS_USERNAME:I

    if-ne v0, v5, :cond_c

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_site_url:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 928
    :cond_c
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_USERNAME:I

    if-ne v0, v5, :cond_d

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 931
    :cond_d
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_10

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v0, :cond_e

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 936
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    goto :goto_1

    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4, v2, v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto/16 :goto_3

    .line 937
    :cond_10
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_13

    .line 939
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v0, :cond_11

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 942
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    goto :goto_2

    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3, v5, v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto/16 :goto_3

    .line 943
    :cond_13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_14

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto/16 :goto_3

    .line 946
    :cond_14
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_15

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 948
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    const-string v3, "gif"

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto :goto_3

    .line 950
    :cond_15
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 952
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    .line 953
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v5

    .line 954
    iget-object v6, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    .line 956
    iget-object v7, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v7, :cond_16

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v7

    invoke-interface {v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getDialogId()J

    move-result-wide v8

    new-instance v10, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;

    invoke-direct {v10, v6, v3, v4}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_3

    .line 961
    :cond_16
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v7

    invoke-interface {v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getDialogId()J

    move-result-wide v8

    new-instance v10, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda5;

    invoke-direct {v10, v6, v0, v2, v5}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 964
    :cond_17
    :goto_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_18

    .line 965
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_18

    .line 966
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_18
    return-void
.end method

.method private synthetic lambda$run$5(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3502(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1068
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$2602(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1069
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    move-object/from16 v0, p0

    .line 422
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$600(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_26

    .line 425
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$702(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 426
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isStoryReply()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 427
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    invoke-static {v4}, Lcom/iMe/fork/controller/ToolsController;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getDialogId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabledForDialog(J)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 428
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    const-string v7, "SendWithoutSound"

    const-string v8, "Schedule"

    const-string v9, "DeleteFromFavorites"

    const-string v10, "AddToFavorites"

    const-string v11, ""

    const/4 v15, 0x3

    const/16 v16, 0x18

    const/high16 v17, 0x42200000    # 40.0f

    const/16 v18, 0x3e8

    if-nez v5, :cond_1d

    .line 429
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v5

    if-nez v5, :cond_3

    .line 430
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1200(Lorg/telegram/ui/ContentPreviewViewer;)V

    .line 431
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1302(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 432
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 433
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void

    .line 436
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v14, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v14}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    invoke-virtual {v5, v14}, Lorg/telegram/messenger/MediaDataController;->isStickerInFavorites(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    .line 437
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 438
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 439
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 440
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 441
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v2

    invoke-interface {v6, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 442
    sget v2, Lorg/telegram/messenger/R$string;->SendStickerPreview:I

    const-string v6, "SendStickerPreview"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v1, :cond_5

    .line 447
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v6

    invoke-interface {v2, v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 448
    sget v2, Lorg/telegram/messenger/R$string;->sticker_edit_and_send:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    sget v2, Lcom/iMe/common/IdFabric$Menu;->EDIT_AND_SEND:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v1, :cond_6

    .line 453
    sget v2, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v6

    invoke-interface {v2, v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v4, :cond_7

    .line 461
    sget v2, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 463
    :cond_7
    sget v2, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz v4, :cond_8

    .line 466
    sget v2, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 468
    :cond_8
    sget v2, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v2, 0x6

    .line 469
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 472
    sget v2, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1500(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needOpen()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 477
    sget v2, Lorg/telegram/messenger/R$string;->ViewPackPreview:I

    new-array v4, v3, [Ljava/lang/Object;

    const-string v6, "ViewPackPreview"

    invoke-static {v6, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_media:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 479
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_b
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needRemove()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 482
    sget v2, Lorg/telegram/messenger/R$string;->ImportStickersRemoveMenu:I

    const-string v4, "ImportStickersRemoveMenu"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x5

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_10

    if-nez v5, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->canAddStickerToFavorites()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isStickerHasSet(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_d
    if-eqz v5, :cond_e

    .line 488
    sget v2, Lorg/telegram/messenger/R$string;->DeleteFromFavorites:I

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_e
    sget v2, Lorg/telegram/messenger/R$string;->AddToFavorites:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_f

    .line 489
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_unfave:I

    goto :goto_5

    :cond_f
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 490
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1600(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 493
    sget v2, Lorg/telegram/messenger/R$string;->DeleteFromRecent:I

    const-string v4, "DeleteFromRecent"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    .line 495
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    if-nez v1, :cond_12

    .line 499
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_12
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    return-void

    .line 507
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1302(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 508
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 509
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v2, v3

    .line 510
    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 511
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 514
    :cond_14
    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$2$1;

    invoke-direct {v1, v0, v12, v5}, Lorg/telegram/ui/ContentPreviewViewer$2$1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;Z)V

    .line 561
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move v4, v3

    .line 563
    :goto_7
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_17

    .line 564
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-static {v2, v5, v6, v3, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    .line 565
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 566
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-eq v4, v6, :cond_15

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v6, v7, :cond_15

    .line 569
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    goto :goto_8

    .line 570
    :cond_15
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v6, v7, :cond_16

    .line 571
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6, v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2302(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 572
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1700(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_16
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 576
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v4, Lorg/telegram/ui/ContentPreviewViewer$2$2;

    const/4 v5, -0x2

    invoke-direct {v4, v0, v2, v5, v5}, Lorg/telegram/ui/ContentPreviewViewer$2$2;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 587
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 588
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 589
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 590
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 591
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 592
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 593
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 594
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 595
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 596
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 600
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 601
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v4

    add-int/2addr v1, v4

    .line 602
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v4

    goto :goto_9

    .line 604
    :cond_18
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v1, v3

    .line 607
    :goto_9
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    .line 608
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_b

    .line 610
    :cond_19
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 611
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_a

    .line 613
    :cond_1a
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3fe66666    # 1.8f

    div-float/2addr v5, v6

    :goto_a
    float-to-int v5, v5

    .line 617
    :goto_b
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v5, v7

    add-int/2addr v4, v5

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$2700(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v7

    if-eqz v7, :cond_1b

    const/16 v7, 0x28

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_c

    :cond_1b
    move v7, v3

    :goto_c
    add-int/2addr v4, v7

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    sub-int/2addr v7, v1

    const/4 v1, 0x2

    div-int/2addr v7, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v6, v1

    int-to-float v1, v5

    add-float/2addr v6, v1

    float-to-int v1, v6

    .line 618
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 619
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 620
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 622
    :cond_1c
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v5, v4, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v6, v2

    int-to-float v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v5, v4, v3, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 624
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto/16 :goto_26

    .line 625
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v2

    const-wide/16 v5, 0x15e

    const/16 v12, 0x96

    const/4 v13, 0x0

    const/4 v14, 0x2

    if-ne v2, v14, :cond_30

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 626
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 627
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 628
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 630
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v8

    invoke-interface {v7, v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 631
    sget v7, Lorg/telegram/messenger/R$string;->SendEmojiPreview:I

    const-string v8, "SendEmojiPreview"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_1e
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 637
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 638
    sget v7, Lorg/telegram/messenger/R$string;->SetAsEmojiStatus:I

    const-string v8, "SetAsEmojiStatus"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    .line 640
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 642
    :cond_1f
    sget v7, Lorg/telegram/messenger/R$string;->RemoveStatus:I

    const-string v8, "RemoveStatus"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    .line 644
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_20
    :goto_d
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needCopy(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 648
    sget v7, Lorg/telegram/messenger/R$string;->CopyEmojiPreview:I

    const-string v8, "CopyEmojiPreview"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_21
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 653
    sget v7, Lorg/telegram/messenger/R$string;->RemoveFromRecent:I

    const-string v8, "RemoveFromRecent"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x4

    .line 655
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_22
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MediaDataController;->isStickerInFavorites(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    .line 658
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-nez v8, :cond_26

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-nez v8, :cond_26

    if-nez v7, :cond_23

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaDataController;->canAddStickerToFavorites()Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->isStickerHasSet(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v8

    if-eqz v8, :cond_26

    :cond_23
    if-eqz v7, :cond_24

    .line 659
    sget v8, Lorg/telegram/messenger/R$string;->DeleteFromFavorites:I

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_24
    sget v8, Lorg/telegram/messenger/R$string;->AddToFavorites:I

    invoke-static {v10, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    :goto_e
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_25

    .line 660
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_unfave:I

    goto :goto_f

    :cond_25
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    :goto_f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x5

    .line 661
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_27

    return-void

    .line 666
    :cond_27
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$1302(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 667
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->invalidate()V

    .line 669
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [I

    move v9, v3

    .line 670
    :goto_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_28

    .line 671
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 674
    :cond_28
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v9, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 676
    new-instance v9, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0, v2, v7}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;Z)V

    move v7, v3

    .line 700
    :goto_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_2c

    if-nez v7, :cond_29

    const/16 v20, 0x1

    goto :goto_12

    :cond_29
    move/from16 v20, v3

    .line 701
    :goto_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v7, v10, :cond_2a

    const/16 v21, 0x1

    goto :goto_13

    :cond_2a
    move/from16 v21, v3

    :goto_13
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v24, v10

    check-cast v24, Ljava/lang/CharSequence;

    const/16 v25, 0x0

    iget-object v10, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v26

    move-object/from16 v22, v8

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v10

    .line 702
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v14, 0x4

    if-ne v11, v14, :cond_2b

    .line 703
    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v11, v14}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 704
    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v11, v14}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 706
    :cond_2b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 707
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 709
    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$3;

    const/4 v4, -0x2

    invoke-direct {v2, v0, v8, v4, v4}, Lorg/telegram/ui/ContentPreviewViewer$2$3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 720
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 721
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 722
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 723
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 724
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 725
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 726
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 727
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v8, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 733
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2d

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 734
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 735
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    goto :goto_14

    .line 737
    :cond_2d
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v1, v3

    .line 739
    :goto_14
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v4, v7

    .line 741
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v7

    const/4 v9, 0x2

    div-int/2addr v4, v9

    add-int/2addr v2, v4

    iget-object v9, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$2700(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v9

    if-eqz v9, :cond_2e

    const/16 v9, 0x28

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_15

    :cond_2e
    move v9, v3

    :goto_15
    add-int/2addr v2, v9

    iget-object v9, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    sub-int/2addr v9, v1

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    sub-int/2addr v9, v1

    const/4 v1, 0x2

    div-int/2addr v9, v1

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v7, v1

    int-to-float v1, v4

    add-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v1, v1

    .line 742
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 743
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v4, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v4, v2, v3, v7, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 744
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    .line 746
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 748
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_52

    .line 749
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-nez v1, :cond_2f

    .line 750
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v13}, Lorg/telegram/ui/ContentPreviewViewer;->access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 751
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3102(Lorg/telegram/ui/ContentPreviewViewer;F)F

    :cond_2f
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 753
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 754
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 759
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 760
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 761
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_26

    .line 763
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    if-eqz v2, :cond_52

    .line 765
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v2

    sget v9, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_KIKLIKO:I

    if-ne v2, v9, :cond_31

    const/4 v2, 0x1

    goto :goto_16

    :cond_31
    move v2, v3

    .line 766
    :goto_16
    iget-object v9, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v9

    sget v10, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    if-ne v9, v10, :cond_32

    const/4 v9, 0x1

    goto :goto_17

    :cond_32
    move v9, v3

    .line 768
    :goto_17
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 769
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 770
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_35

    .line 774
    sget v6, Lorg/telegram/messenger/R$string;->nft_preview_copy_token_id:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    sget v6, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_ID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    sget v6, Lorg/telegram/messenger/R$string;->nft_preview_open_contract:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_ic_etherscan_24:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    sget v6, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_CONTRACT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/model/wallet/home/nft/NftType;

    move-result-object v6

    sget-object v13, Lcom/iMe/model/wallet/home/nft/NftType;->IMAGE:Lcom/iMe/model/wallet/home/nft/NftType;

    if-ne v6, v13, :cond_33

    .line 783
    sget v6, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    sget v6, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 786
    :cond_33
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/model/wallet/home/nft/NftType;

    move-result-object v6

    sget-object v13, Lcom/iMe/model/wallet/home/nft/NftType;->USERNAME:Lcom/iMe/model/wallet/home/nft/NftType;

    if-ne v6, v13, :cond_34

    .line 787
    sget v6, Lorg/telegram/messenger/R$string;->nft_preview_copy_username:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    sget v6, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_USERNAME:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    sget v6, Lorg/telegram/messenger/R$string;->custom_username_set:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mention:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    sget v6, Lcom/iMe/common/IdFabric$Menu;->SET_AS_USERNAME:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_34
    :goto_18
    sget v6, Lorg/telegram/messenger/R$string;->nft_preview_open_source:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    sget v6, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_SOURCE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_35
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    iget-object v13, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v13}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v13

    invoke-interface {v6, v13}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v6

    if-eqz v6, :cond_38

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v6

    if-nez v6, :cond_38

    if-eqz v2, :cond_36

    .line 804
    sget v6, Lorg/telegram/messenger/R$string;->Send:I

    const-string v13, "Send"

    invoke-static {v13, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 806
    :cond_36
    sget v6, Lorg/telegram/messenger/R$string;->SendGifPreview:I

    const-string v13, "SendGifPreview"

    invoke-static {v13, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :goto_19
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_37

    .line 811
    sget v6, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    sget v6, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    if-eqz v2, :cond_38

    .line 816
    sget v6, Lorg/telegram/messenger/R$string;->kikliko_send_as_gif:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    sget v6, Lorg/telegram/messenger/R$drawable;->smiles_tab_gif:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget v6, Lcom/iMe/common/IdFabric$Menu;->SEND_AS_GIF:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_38
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    iget-object v13, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v13}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v13

    invoke-interface {v6, v13}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v6

    if-nez v6, :cond_3b

    if-eqz v4, :cond_39

    .line 825
    sget v6, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 827
    :cond_39
    sget v6, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    if-eqz v4, :cond_3a

    .line 830
    sget v4, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 832
    :cond_3a
    sget v4, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    const/4 v4, 0x4

    .line 833
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_3b
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 836
    sget v4, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v8, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_3c
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 843
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MediaDataController;->hasRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 844
    sget v6, Lorg/telegram/messenger/R$string;->Delete:I

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "Delete"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    .line 846
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 848
    :cond_3d
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "SaveToGIFs"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gif_add:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    .line 850
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3e
    move v4, v3

    :goto_1c
    if-nez v1, :cond_40

    if-eqz v2, :cond_3f

    .line 858
    sget v6, Lorg/telegram/messenger/R$string;->ReportChat:I

    const-string v7, "ReportChat"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_report:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    sget v6, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 861
    :cond_3f
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_40

    .line 862
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    sget v6, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_40
    :goto_1d
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_41

    return-void

    .line 871
    :cond_41
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1302(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 872
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->invalidate()V

    .line 874
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    move v7, v3

    .line 875
    :goto_1e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_42

    .line 876
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 879
    :cond_42
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-direct {v6, v7, v8, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez v2, :cond_43

    if-eqz v9, :cond_44

    :cond_43
    const/4 v7, 0x1

    .line 882
    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 886
    :cond_44
    new-instance v7, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v14}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;)V

    move v8, v3

    .line 970
    :goto_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_4e

    .line 972
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v8, :cond_48

    if-nez v2, :cond_45

    if-eqz v9, :cond_48

    .line 974
    :cond_45
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 975
    sget v15, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v13, v15, v12}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    move/from16 v12, v19

    .line 976
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 977
    new-instance v15, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v15, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 978
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v12, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-static {v3, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v12, 0x1

    .line 979
    invoke-virtual {v15, v12, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 980
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setLines(I)V

    .line 981
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 982
    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 983
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v2, :cond_46

    .line 985
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3300(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 987
    :cond_46
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_20
    const/16 v23, -0x2

    const/16 v24, -0x2

    const/16 v25, 0x3

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x8

    .line 989
    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 991
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 992
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-static {v12, v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41500000    # 13.0f

    const/4 v15, 0x1

    .line 993
    invoke-virtual {v3, v15, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v2, :cond_47

    .line 995
    sget v12, Lorg/telegram/messenger/R$string;->kikliko_promo:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 997
    :cond_47
    iget-object v12, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_21
    const/4 v12, -0x2

    .line 999
    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v13, v3, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x12

    .line 1000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/16 v15, 0x12

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    const/16 v23, 0x8

    move/from16 v24, v2

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v13, v3, v12, v15, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 1001
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v13, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1002
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    goto :goto_22

    :cond_48
    move/from16 v24, v2

    .line 1003
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-eq v11, v2, :cond_49

    sget v2, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    if-ne v11, v2, :cond_4a

    .line 1004
    :cond_49
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 1007
    :cond_4a
    :goto_22
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v12, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v6, v2, v3, v13, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    .line 1008
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1009
    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    sget v3, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v11, v3, :cond_4b

    .line 1012
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2302(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1013
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1700(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_4b
    if-eqz v4, :cond_4d

    .line 1017
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    iget-object v12, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v12

    if-ne v12, v11, :cond_4c

    if-nez v1, :cond_4c

    const/4 v11, 0x1

    goto :goto_23

    :cond_4c
    const/4 v11, 0x0

    :goto_23
    sub-int/2addr v3, v11

    if-ne v8, v3, :cond_4d

    .line 1018
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v3, v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v3

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v11, v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v11

    invoke-virtual {v2, v3, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_4d
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v24

    const/4 v3, 0x0

    const/16 v12, 0x96

    goto/16 :goto_1f

    .line 1021
    :cond_4e
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$4;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v6, v3, v3}, Lorg/telegram/ui/ContentPreviewViewer$2$4;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1032
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 1033
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v3, 0x96

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 1034
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 1035
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1036
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1037
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1038
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1039
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v6, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1040
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1041
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1045
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4f

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 1046
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int v13, v1, v2

    .line 1047
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    goto :goto_24

    .line 1049
    :cond_4f
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v13, 0x0

    .line 1051
    :goto_24
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v3, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1054
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2700(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_50

    const/16 v4, 0x28

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_25

    :cond_50
    const/4 v4, 0x0

    :goto_25
    add-int/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v13

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    div-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    int-to-float v1, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    .line 1055
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1056
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v3, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1058
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1060
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_52

    .line 1061
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_51

    .line 1062
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1063
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3102(Lorg/telegram/ui/ContentPreviewViewer;F)F

    :cond_51
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1065
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1066
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x15e

    .line 1071
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1072
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1073
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_52
    :goto_26
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
