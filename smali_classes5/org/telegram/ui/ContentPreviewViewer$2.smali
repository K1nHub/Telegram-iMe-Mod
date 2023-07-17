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

.method public static synthetic $r8$lambda$qpIFrYdPs0kFP7FTgWcHmC82t_c(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$0(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sNQGrTYqWKQfNqE8aWaeNWt14Mg(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$2;->lambda$run$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 661
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 662
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 664
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 668
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    invoke-interface {p1, v0, v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 670
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 674
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_6

    .line 675
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$run$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 734
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3302(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 735
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3300(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$2502(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 736
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

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

    .line 918
    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private static synthetic lambda$run$3(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 920
    :goto_0
    invoke-interface {p0, p1, p3, p4, p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    return-void
.end method

.method private synthetic lambda$run$4(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 13

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 855
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v1

    move-object v4, v3

    .line 868
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 869
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1600(Lorg/telegram/ui/ContentPreviewViewer;)V

    goto/16 :goto_3

    .line 871
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    if-ne v0, v5, :cond_4

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->openKiklikoReport(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 873
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->SEND_AS_GIF:I

    if-ne v0, v5, :cond_5

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 875
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_ID:I

    if-ne v0, v5, :cond_6

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getTokenId()Ljava/lang/String;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v3, "TextCopied"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 877
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_CONTRACT:I

    if-ne v0, v5, :cond_7

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "POLYGON"

    invoke-static {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;->getContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getTokenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 879
    :cond_7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_SOURCE:I

    if-ne v0, v5, :cond_8

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 881
    :cond_8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    if-ne v0, v5, :cond_b

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3500(Lorg/telegram/ui/ContentPreviewViewer;)V

    goto/16 :goto_3

    .line 884
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 885
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setKiklikoAvatar(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 887
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1700(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto/16 :goto_3

    .line 890
    :cond_b
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_e

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v0, :cond_c

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 895
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    goto :goto_1

    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4, v2, v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto/16 :goto_3

    .line 896
    :cond_e
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_11

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v0, :cond_f

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 901
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    goto :goto_2

    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3, v5, v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    goto/16 :goto_3

    .line 902
    :cond_11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_12

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto/16 :goto_3

    .line 905
    :cond_12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_13

    .line 906
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    const-string v3, "gif"

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto :goto_3

    .line 909
    :cond_13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    .line 910
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 911
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    .line 912
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v5

    .line 913
    iget-object v6, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    .line 915
    iget-object v7, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v7, :cond_14

    .line 918
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

    .line 920
    :cond_14
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

    .line 923
    :cond_15
    :goto_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_16

    .line 924
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_16

    .line 925
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_16
    return-void
.end method

.method private synthetic lambda$run$5(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1026
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3302(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1027
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3000(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3300(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$2502(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1028
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    move-object/from16 v0, p0

    .line 414
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$602(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 418
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    invoke-static {v1}, Lcom/iMe/fork/controller/ToolsController;->getInstance(I)Lcom/iMe/fork/controller/ToolsController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/iMe/fork/controller/ToolsController;->isSilentSendingEnabledForDialog(J)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 419
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    const-string v5, "SendWithoutSound"

    const-string v6, "Schedule"

    const-string v7, ""

    const/4 v11, 0x3

    const/4 v14, 0x4

    const/16 v16, 0x3e8

    const/4 v12, 0x2

    if-nez v4, :cond_1a

    .line 420
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v4

    if-nez v4, :cond_2

    .line 421
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)V

    .line 422
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 423
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 424
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void

    .line 427
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v9, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MediaDataController;->isStickerInFavorites(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    .line 428
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 429
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 430
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 432
    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->invalidate()V

    .line 433
    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 434
    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v15

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v8

    invoke-interface {v15, v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v8

    invoke-interface {v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v8

    if-nez v8, :cond_3

    .line 435
    sget v8, Lorg/telegram/messenger/R$string;->SendStickerPreview:I

    const-string v15, "SendStickerPreview"

    invoke-static {v15, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v8

    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v15

    invoke-interface {v8, v15}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v8

    invoke-interface {v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v8

    if-nez v8, :cond_4

    .line 441
    sget v8, Lorg/telegram/messenger/R$string;->sticker_edit_and_send:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget v8, Lcom/iMe/common/IdFabric$Menu;->EDIT_AND_SEND:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_4
    sget v8, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget v8, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v8

    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v15

    invoke-interface {v8, v15}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v8

    invoke-interface {v8}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v8

    if-nez v8, :cond_7

    if-eqz v1, :cond_5

    .line 452
    sget v5, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 454
    :cond_5
    sget v8, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v1, :cond_6

    .line 457
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 459
    :cond_6
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v1, 0x6

    .line 460
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 463
    sget v1, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1400(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needOpen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 468
    sget v1, Lorg/telegram/messenger/R$string;->ViewPackPreview:I

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ViewPackPreview"

    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_media:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needRemove()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 473
    sget v1, Lorg/telegram/messenger/R$string;->ImportStickersRemoveMenu:I

    const-string v5, "ImportStickersRemoveMenu"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 475
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v4, :cond_b

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->canAddStickerToFavorites()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->isStickerHasSet(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_b
    if-eqz v4, :cond_c

    .line 479
    sget v1, Lorg/telegram/messenger/R$string;->DeleteFromFavorites:I

    const-string v5, "DeleteFromFavorites"

    goto :goto_3

    :cond_c
    sget v1, Lorg/telegram/messenger/R$string;->AddToFavorites:I

    const-string v5, "AddToFavorites"

    :goto_3
    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_d

    .line 480
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unfave:I

    goto :goto_4

    :cond_d
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1500(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 484
    sget v1, Lorg/telegram/messenger/R$string;->DeleteFromRecent:I

    const-string v5, "DeleteFromRecent"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_f
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 496
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v5, v3

    .line 497
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 498
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 501
    :cond_11
    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$2$1;

    invoke-direct {v1, v0, v13, v4}, Lorg/telegram/ui/ContentPreviewViewer$2$1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;Z)V

    .line 548
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert3:I

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move v5, v3

    .line 550
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 551
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-static {v4, v6, v7, v3, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    .line 552
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 553
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    if-eq v5, v7, :cond_12

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v7, v8, :cond_12

    .line 556
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    goto :goto_7

    .line 557
    :cond_12
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v7, v8, :cond_13

    .line 558
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7, v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$2202(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 559
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1600(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_13
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 563
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v5, Lorg/telegram/ui/ContentPreviewViewer$2$2;

    const/4 v6, -0x2

    invoke-direct {v5, v0, v4, v6, v6}, Lorg/telegram/ui/ContentPreviewViewer$2$2;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 574
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 575
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 576
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 577
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 578
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 579
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 580
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 581
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v5, -0x80000000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/FrameLayout;->measure(II)V

    .line 582
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 583
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 587
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 588
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v5

    add-int/2addr v1, v5

    .line 589
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v5

    goto :goto_8

    .line 591
    :cond_15
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v1, v3

    .line 594
    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v6

    if-ne v6, v2, :cond_16

    .line 595
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v2, v6

    goto :goto_a

    .line 597
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 598
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float/2addr v2, v6

    goto :goto_9

    .line 600
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v6, 0x3fe66666    # 1.8f

    div-float/2addr v2, v6

    :goto_9
    float-to-int v2, v2

    .line 604
    :goto_a
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v6

    div-int/2addr v2, v12

    add-int/2addr v5, v2

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v7

    if-eqz v7, :cond_18

    const/16 v7, 0x28

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_b

    :cond_18
    move v7, v3

    :goto_b
    add-int/2addr v5, v7

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2700(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    sub-int/2addr v7, v1

    div-int/2addr v7, v12

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v6, v1

    int-to-float v1, v2

    add-float/2addr v6, v1

    float-to-int v1, v6

    const/16 v2, 0x18

    .line 605
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 606
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 607
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 609
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v5, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v6, v4

    int-to-float v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v5, v2, v3, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 611
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto/16 :goto_22

    .line 612
    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    const/16 v10, 0x96

    const/4 v13, 0x0

    if-ne v4, v12, :cond_29

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 613
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 614
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 617
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 619
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v7

    invoke-interface {v6, v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 620
    sget v6, Lorg/telegram/messenger/R$string;->SendEmojiPreview:I

    const-string v7, "SendEmojiPreview"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    :cond_1b
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 626
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 627
    sget v6, Lorg/telegram/messenger/R$string;->SetAsEmojiStatus:I

    const-string v7, "SetAsEmojiStatus"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 631
    :cond_1c
    sget v6, Lorg/telegram/messenger/R$string;->RemoveStatus:I

    const-string v7, "RemoveStatus"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    :cond_1d
    :goto_c
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needCopy()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 637
    sget v6, Lorg/telegram/messenger/R$string;->CopyEmojiPreview:I

    const-string v7, "CopyEmojiPreview"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_1e
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 642
    sget v6, Lorg/telegram/messenger/R$string;->RemoveFromRecent:I

    const-string v7, "RemoveFromRecent"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    return-void

    .line 650
    :cond_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    move v7, v3

    .line 651
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_21

    .line 652
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 655
    :cond_21
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v11, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    invoke-direct {v6, v7, v11, v15}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 657
    new-instance v7, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v4}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;)V

    move v11, v3

    .line 679
    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v11, v15, :cond_25

    if-nez v11, :cond_22

    move/from16 v18, v2

    goto :goto_f

    :cond_22
    move/from16 v18, v3

    .line 680
    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v2

    if-ne v11, v15, :cond_23

    move/from16 v19, v2

    goto :goto_10

    :cond_23
    move/from16 v19, v3

    :goto_10
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v22, v15

    check-cast v22, Ljava/lang/CharSequence;

    const/16 v23, 0x0

    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v24

    move-object/from16 v20, v6

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v15

    .line 681
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v14, :cond_24

    .line 682
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v8, v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v8

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 683
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v8, v9}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v8

    invoke-virtual {v15, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 685
    :cond_24
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 686
    invoke-virtual {v15, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 688
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v4, Lorg/telegram/ui/ContentPreviewViewer$2$3;

    const/4 v5, -0x2

    invoke-direct {v4, v0, v6, v5, v5}, Lorg/telegram/ui/ContentPreviewViewer$2$3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 699
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 700
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 701
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 702
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 703
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 704
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 705
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 706
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v4, -0x80000000

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v6, v1, v4}, Landroid/widget/FrameLayout;->measure(II)V

    .line 707
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 708
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 712
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 713
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 714
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    goto :goto_11

    .line 716
    :cond_26
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v1, v3

    .line 718
    :goto_11
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    .line 720
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v5

    div-int/2addr v4, v12

    add-int/2addr v2, v4

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v7

    if-eqz v7, :cond_27

    const/16 v7, 0x28

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_12

    :cond_27
    move v7, v3

    :goto_12
    add-int/2addr v2, v7

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2700(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    sub-int/2addr v7, v1

    div-int/2addr v7, v12

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v5, v1

    int-to-float v1, v4

    add-float/2addr v5, v1

    float-to-int v1, v5

    int-to-float v1, v1

    const/16 v2, 0x18

    .line 721
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 722
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v4, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v2, v3, v5, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 723
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    .line 725
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 727
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_48

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v13

    if-nez v1, :cond_28

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v13}, Lorg/telegram/ui/ContentPreviewViewer;->access$2902(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 730
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F

    :cond_28
    new-array v1, v12, [F

    .line 732
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 733
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x15e

    .line 738
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 739
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 740
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_22

    .line 742
    :cond_29
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 743
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 744
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    .line 746
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    sget v8, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_KIKLIKO:I

    if-ne v4, v8, :cond_2a

    move v4, v2

    goto :goto_13

    :cond_2a
    move v4, v3

    .line 747
    :goto_13
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v8

    sget v9, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_NFT:I

    if-ne v8, v9, :cond_2b

    move v8, v2

    goto :goto_14

    :cond_2b
    move v8, v3

    .line 749
    :goto_14
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 750
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 751
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_2c

    .line 755
    sget v21, Lorg/telegram/messenger/R$string;->nft_preview_copy_token_id:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget v10, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_ID:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    sget v10, Lorg/telegram/messenger/R$string;->nft_preview_open_contract:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget v10, Lorg/telegram/messenger/R$drawable;->fork_ic_etherscan_24:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    sget v10, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_CONTRACT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    sget v10, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget v10, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget v10, Lorg/telegram/messenger/R$string;->nft_preview_open_source:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    sget v10, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_SOURCE:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_2c
    iget-object v10, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v12

    invoke-interface {v10, v12}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v10

    if-eqz v10, :cond_2e

    iget-object v10, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v10

    invoke-interface {v10}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v10

    if-nez v10, :cond_2e

    if-eqz v4, :cond_2d

    .line 775
    sget v10, Lorg/telegram/messenger/R$string;->Send:I

    const-string v12, "Send"

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 777
    :cond_2d
    sget v10, Lorg/telegram/messenger/R$string;->SendGifPreview:I

    const-string v12, "SendGifPreview"

    invoke-static {v12, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :goto_15
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    sget v10, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget v10, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2e

    .line 785
    sget v10, Lorg/telegram/messenger/R$string;->kikliko_send_as_gif:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    sget v10, Lorg/telegram/messenger/R$drawable;->smiles_tab_gif:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget v10, Lcom/iMe/common/IdFabric$Menu;->SEND_AS_GIF:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    :cond_2e
    iget-object v10, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v12

    invoke-interface {v10, v12}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v10

    if-eqz v10, :cond_31

    iget-object v10, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v10

    invoke-interface {v10}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v10

    if-nez v10, :cond_31

    if-eqz v1, :cond_2f

    .line 794
    sget v5, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 796
    :cond_2f
    sget v10, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    if-eqz v1, :cond_30

    .line 799
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 801
    :cond_30
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    :goto_17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 805
    sget v1, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 812
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MediaDataController;->hasRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 813
    sget v5, Lorg/telegram/messenger/R$string;->Delete:I

    new-array v6, v3, [Ljava/lang/Object;

    const-string v10, "Delete"

    invoke-static {v10, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 817
    :cond_33
    sget v5, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    new-array v6, v3, [Ljava/lang/Object;

    const-string v10, "SaveToGIFs"

    invoke-static {v10, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_gif_add:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    .line 819
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_34
    move v1, v3

    :goto_18
    if-eqz v4, :cond_35

    .line 826
    sget v5, Lorg/telegram/messenger/R$string;->ReportChat:I

    const-string v6, "ReportChat"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_report:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    sget v5, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 829
    :cond_35
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    if-ne v5, v2, :cond_36

    .line 830
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    sget v5, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    :cond_36
    :goto_19
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_37

    return-void

    .line 839
    :cond_37
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    move v6, v3

    .line 840
    :goto_1a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_38

    .line 841
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 844
    :cond_38
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v10, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-direct {v5, v6, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez v4, :cond_39

    if-eqz v8, :cond_3a

    .line 847
    :cond_39
    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 851
    :cond_3a
    new-instance v6, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0, v15}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;)V

    move v7, v3

    .line 929
    :goto_1b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_44

    .line 931
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v7, :cond_3e

    if-nez v4, :cond_3b

    if-eqz v8, :cond_3e

    .line 933
    :cond_3b
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 934
    sget v12, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 935
    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 936
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 937
    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v14, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 938
    invoke-virtual {v12, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 939
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 940
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 941
    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 942
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v4, :cond_3c

    .line 944
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 946
    :cond_3c
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x8

    .line 948
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 950
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v3, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 951
    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    iget-object v14, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v14}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-static {v12, v14}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v12, 0x41500000    # 13.0f

    .line 952
    invoke-virtual {v3, v2, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v4, :cond_3d

    .line 954
    sget v12, Lorg/telegram/messenger/R$string;->kikliko_promo:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 956
    :cond_3d
    iget-object v12, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    const/4 v12, -0x2

    .line 958
    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x12

    .line 959
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v11, v14, v2, v3, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    .line 960
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v11, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 961
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    goto :goto_1e

    .line 962
    :cond_3e
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-eq v10, v2, :cond_3f

    sget v2, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    if-ne v10, v2, :cond_40

    .line 963
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 966
    :cond_40
    :goto_1e
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v5, v2, v3, v12, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v2

    .line 967
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 968
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    sget v3, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v10, v3, :cond_41

    .line 971
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2202(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 972
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1600(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_41
    if-eqz v1, :cond_43

    .line 976
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v11

    if-ne v11, v10, :cond_42

    const/4 v10, 0x1

    goto :goto_1f

    :cond_42
    const/4 v10, 0x0

    :goto_1f
    sub-int/2addr v3, v10

    if-ne v7, v3, :cond_43

    .line 977
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v3, v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v3

    iget-object v10, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v10, v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_43
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1b

    .line 980
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$4;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v5, v3, v3}, Lorg/telegram/ui/ContentPreviewViewer$2$4;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 992
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v3, 0x96

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 993
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 995
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 996
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 998
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 999
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1004
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 1005
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int v12, v1, v2

    .line 1006
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    goto :goto_20

    .line 1008
    :cond_45
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v12, 0x0

    .line 1010
    :goto_20
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1013
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v2, v4

    add-int/2addr v1, v2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_46

    const/16 v4, 0x28

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_21

    :cond_46
    const/4 v4, 0x0

    :goto_21
    add-int/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v12

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$2700(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v6

    sub-int/2addr v4, v6

    const/4 v6, 0x2

    div-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    int-to-float v1, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    int-to-float v1, v1

    const/16 v2, 0x18

    .line 1014
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1015
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v3, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1017
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1019
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_48

    .line 1020
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_47

    .line 1021
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2902(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1022
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F

    :cond_47
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1024
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1025
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x15e

    .line 1030
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1031
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1032
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_48
    :goto_22
    return-void

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
