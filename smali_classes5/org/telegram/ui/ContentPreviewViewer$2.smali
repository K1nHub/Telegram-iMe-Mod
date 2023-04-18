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

    .line 412
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 662
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 663
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 665
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

    .line 667
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

    .line 669
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    invoke-interface {p1, v0, v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 671
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

    .line 673
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 675
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_6

    .line 676
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$run$1(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 735
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3302(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 736
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

    .line 737
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

    .line 919
    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method private static synthetic lambda$run$3(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 921
    :goto_0
    invoke-interface {p0, p1, p3, p4, p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    return-void
.end method

.method private synthetic lambda$run$4(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 13

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 856
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 864
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 865
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

    .line 869
    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 870
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingGifConfirmationEnabled:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingGifConfirmationEnabled(Z)V

    .line 871
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1600(Lorg/telegram/ui/ContentPreviewViewer;)V

    goto/16 :goto_3

    .line 872
    :cond_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    if-ne v0, v5, :cond_4

    .line 873
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

    .line 874
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->SEND_AS_GIF:I

    if-ne v0, v5, :cond_5

    .line 875
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 876
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_ID:I

    if-ne v0, v5, :cond_6

    .line 877
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

    .line 878
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_CONTRACT:I

    if-ne v0, v5, :cond_7

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftCollection;->getContractAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iMe/storage/common/AppConfiguration$Crypto;->formatScanTokenUrl(Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 880
    :cond_7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_SOURCE:I

    if-ne v0, v5, :cond_8

    .line 881
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

    .line 882
    :cond_8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v5, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    if-ne v0, v5, :cond_b

    .line 883
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3500(Lorg/telegram/ui/ContentPreviewViewer;)V

    goto/16 :goto_3

    .line 885
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$200(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 886
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

    .line 888
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1700(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto/16 :goto_3

    .line 891
    :cond_b
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_e

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v0, :cond_c

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 896
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

    .line 897
    :cond_e
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_11

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v0, :cond_f

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendKiklikoVideo(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto/16 :goto_3

    .line 902
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

    .line 903
    :cond_11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_12

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 905
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto/16 :goto_3

    .line 906
    :cond_12
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_13

    .line 907
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

    .line 908
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

    .line 909
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto :goto_3

    .line 910
    :cond_13
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 912
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3600(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v2

    .line 913
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v5

    .line 914
    iget-object v6, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    .line 916
    iget-object v7, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$3400(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lcom/iMe/fork/ui/view/KiklikoGifView;

    if-eqz v7, :cond_14

    .line 919
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

    .line 921
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

    .line 924
    :cond_15
    :goto_3
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_16

    .line 925
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_16

    .line 926
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_16
    return-void
.end method

.method private synthetic lambda$run$5(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->access$3302(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1028
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

    .line 1029
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

    .line 415
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$602(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 419
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

    .line 420
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

    .line 421
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

    .line 422
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)V

    .line 423
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 424
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 425
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void

    .line 428
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

    .line 429
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 430
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 431
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 432
    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 433
    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->invalidate()V

    .line 434
    iget-object v15, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 435
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

    .line 436
    sget v8, Lorg/telegram/messenger/R$string;->SendStickerPreview:I

    const-string v15, "SendStickerPreview"

    invoke-static {v15, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
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

    .line 442
    sget v8, Lorg/telegram/messenger/R$string;->sticker_edit_and_send:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    sget v8, Lcom/iMe/common/IdFabric$Menu;->EDIT_AND_SEND:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_4
    sget v8, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    sget v8, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    sget v8, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
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

    .line 453
    sget v5, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_5
    sget v8, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v1, :cond_6

    .line 458
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 460
    :cond_6
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v1, 0x6

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 464
    sget v1, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
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

    .line 469
    sget v1, Lorg/telegram/messenger/R$string;->ViewPackPreview:I

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ViewPackPreview"

    invoke-static {v6, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_media:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needRemove()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 474
    sget v1, Lorg/telegram/messenger/R$string;->ImportStickersRemoveMenu:I

    const-string v5, "ImportStickersRemoveMenu"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x5

    .line 476
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
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

    .line 480
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

    .line 481
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unfave:I

    goto :goto_4

    :cond_d
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1500(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 485
    sget v1, Lorg/telegram/messenger/R$string;->DeleteFromRecent:I

    const-string v5, "DeleteFromRecent"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_f
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    return-void

    .line 497
    :cond_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    move v5, v3

    .line 498
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    .line 499
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 502
    :cond_11
    new-instance v1, Lorg/telegram/ui/ContentPreviewViewer$2$1;

    invoke-direct {v1, v0, v13, v4}, Lorg/telegram/ui/ContentPreviewViewer$2$1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;Z)V

    .line 549
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

    .line 551
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 552
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

    .line 553
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 554
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
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

    .line 557
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    goto :goto_7

    .line 558
    :cond_12
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v7, v8, :cond_13

    .line 559
    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7, v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$2202(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 560
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$1600(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_13
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 564
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v5, Lorg/telegram/ui/ContentPreviewViewer$2$2;

    const/4 v6, -0x2

    invoke-direct {v5, v0, v4, v6, v6}, Lorg/telegram/ui/ContentPreviewViewer$2$2;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 575
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 576
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 577
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 578
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 579
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 580
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 581
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 582
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

    .line 583
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 584
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 588
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 589
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

    .line 590
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v5

    goto :goto_8

    .line 592
    :cond_15
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v1, v3

    .line 595
    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v6

    if-ne v6, v2, :cond_16

    .line 596
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

    .line 598
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 599
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

    .line 601
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

    .line 605
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

    .line 606
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 607
    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2400(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 608
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 610
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

    .line 612
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    goto/16 :goto_22

    .line 613
    :cond_1a
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    const-string v10, "dialogTextRed"

    const-string v13, "dialogRedIcon"

    const/16 v15, 0x96

    if-ne v4, v12, :cond_29

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 614
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 615
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 618
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 620
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v7

    invoke-interface {v6, v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 621
    sget v6, Lorg/telegram/messenger/R$string;->SendEmojiPreview:I

    const-string v7, "SendEmojiPreview"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
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

    .line 627
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 628
    sget v6, Lorg/telegram/messenger/R$string;->SetAsEmojiStatus:I

    const-string v7, "SetAsEmojiStatus"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 632
    :cond_1c
    sget v6, Lorg/telegram/messenger/R$string;->RemoveStatus:I

    const-string v7, "RemoveStatus"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_1d
    :goto_c
    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needCopy()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 638
    sget v6, Lorg/telegram/messenger/R$string;->CopyEmojiPreview:I

    const-string v7, "CopyEmojiPreview"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
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

    .line 643
    sget v6, Lorg/telegram/messenger/R$string;->RemoveFromRecent:I

    const-string v7, "RemoveFromRecent"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_1f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_20

    return-void

    .line 651
    :cond_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    move v7, v3

    .line 652
    :goto_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_21

    .line 653
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 656
    :cond_21
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    invoke-direct {v6, v7, v9, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 658
    new-instance v7, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda3;

    invoke-direct {v7, v0, v4}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;)V

    move v9, v3

    .line 680
    :goto_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_25

    if-nez v9, :cond_22

    move/from16 v18, v2

    goto :goto_f

    :cond_22
    move/from16 v18, v3

    .line 681
    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v2

    if-ne v9, v11, :cond_23

    move/from16 v19, v2

    goto :goto_10

    :cond_23
    move/from16 v19, v3

    :goto_10
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v22, v11

    check-cast v22, Ljava/lang/CharSequence;

    const/16 v23, 0x0

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v24

    move-object/from16 v20, v6

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v11

    .line 682
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v14, :cond_24

    .line 683
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8, v13}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 684
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8, v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v11, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 686
    :cond_24
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 687
    invoke-virtual {v11, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 689
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v4, Lorg/telegram/ui/ContentPreviewViewer$2$3;

    const/4 v5, -0x2

    invoke-direct {v4, v0, v6, v5, v5}, Lorg/telegram/ui/ContentPreviewViewer$2$3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 700
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 701
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v15}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 702
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 703
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 704
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 705
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 706
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 707
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

    .line 708
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 709
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 713
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 714
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

    .line 715
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    goto :goto_11

    .line 717
    :cond_26
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v1, v3

    .line 719
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

    .line 721
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

    .line 722
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    sub-float/2addr v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 723
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

    .line 724
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    .line 726
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 728
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_48

    .line 729
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_28

    .line 730
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2902(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 731
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F

    :cond_28
    new-array v1, v12, [F

    .line 733
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 734
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x15e

    .line 739
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 740
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 741
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_22

    .line 743
    :cond_29
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 744
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1202(Lorg/telegram/ui/ContentPreviewViewer;Z)Z

    .line 745
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    .line 747
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    sget v8, Lcom/iMe/common/IdFabric$CustomType;->CONTENT_TYPE_KIKLIKO:I

    if-ne v4, v8, :cond_2a

    move v4, v2

    goto :goto_13

    :cond_2a
    move v4, v3

    .line 748
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

    .line 750
    :goto_14
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 751
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 752
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_2c

    .line 756
    sget v21, Lorg/telegram/messenger/R$string;->nft_preview_copy_token_id:I

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    sget v2, Lcom/iMe/common/IdFabric$Menu;->NFT_COPY_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    sget v2, Lorg/telegram/messenger/R$string;->nft_preview_open_contract:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_etherscan_24:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    sget v2, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_CONTRACT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget v2, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    sget v2, Lorg/telegram/messenger/R$string;->nft_preview_open_source:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    sget v2, Lcom/iMe/common/IdFabric$Menu;->NFT_OPEN_SOURCE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_2c
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v11

    invoke-interface {v2, v11}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_2e

    if-eqz v4, :cond_2d

    .line 776
    sget v2, Lorg/telegram/messenger/R$string;->Send:I

    const-string v11, "Send"

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 778
    :cond_2d
    sget v2, Lorg/telegram/messenger/R$string;->SendGifPreview:I

    const-string v11, "SendGifPreview"

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    :goto_15
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    sget v2, Lorg/telegram/messenger/R$string;->custom_avatar_set:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2e

    .line 786
    sget v2, Lorg/telegram/messenger/R$string;->kikliko_send_as_gif:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget v2, Lorg/telegram/messenger/R$drawable;->smiles_tab_gif:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SEND_AS_GIF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_2e
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    iget-object v11, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v11

    invoke-interface {v2, v11}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v2

    if-nez v2, :cond_31

    if-eqz v1, :cond_2f

    .line 795
    sget v2, Lorg/telegram/messenger/R$string;->send_with_sound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 797
    :cond_2f
    sget v2, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    if-eqz v1, :cond_30

    .line 800
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_on:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 802
    :cond_30
    sget v1, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    :goto_17
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    :cond_31
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$700(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 806
    sget v1, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v6, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 808
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_32
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 813
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1000(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaDataController;->hasRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 814
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "Delete"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 816
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 818
    :cond_33
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "SaveToGIFs"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gif_add:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 820
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_34
    move v1, v3

    :goto_18
    if-eqz v4, :cond_35

    .line 827
    sget v2, Lorg/telegram/messenger/R$string;->ReportChat:I

    const-string v5, "ReportChat"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_report:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    sget v2, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 830
    :cond_35
    iget-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_36

    .line 831
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_36
    :goto_19
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    return-void

    .line 840
    :cond_37
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    move v5, v3

    .line 841
    :goto_1a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    .line 842
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 845
    :cond_38
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert2:I

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v2, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-nez v4, :cond_39

    if-eqz v8, :cond_3a

    :cond_39
    const/4 v5, 0x1

    .line 848
    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 852
    :cond_3a
    new-instance v5, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v15}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;)V

    move v6, v3

    .line 930
    :goto_1b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_44

    .line 932
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v6, :cond_3e

    if-nez v4, :cond_3b

    if-eqz v8, :cond_3e

    .line 934
    :cond_3b
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 935
    sget v14, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v14, v3}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    move/from16 v3, v21

    .line 936
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 937
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 938
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    move/from16 v21, v8

    const-string v8, "windowBackgroundWhiteBlackText"

    invoke-static {v8, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v8, 0x1

    .line 939
    invoke-virtual {v14, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 940
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setLines(I)V

    .line 941
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 942
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 943
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v4, :cond_3c

    .line 945
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3100(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/kikliko/GifResponse;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 947
    :cond_3c
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x8

    .line 949
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v11, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 952
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const-string v14, "windowBackgroundWhiteGrayText2"

    invoke-static {v14, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v8, 0x41500000    # 13.0f

    const/4 v14, 0x1

    .line 953
    invoke-virtual {v3, v14, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v4, :cond_3d

    .line 955
    sget v8, Lorg/telegram/messenger/R$string;->kikliko_promo:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    .line 957
    :cond_3d
    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$3200(Lorg/telegram/ui/ContentPreviewViewer;)Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    const/4 v8, -0x2

    .line 959
    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v11, v3, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x12

    .line 960
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/16 v17, 0x8

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    move/from16 v25, v4

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v11, v14, v8, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 961
    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 962
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    goto :goto_1e

    :cond_3e
    move/from16 v25, v4

    move/from16 v21, v8

    .line 963
    sget v3, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-eq v7, v3, :cond_3f

    sget v3, Lcom/iMe/common/IdFabric$Menu;->REPORT:I

    if-ne v7, v3, :cond_40

    .line 964
    :cond_3f
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addColoredGap(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    .line 967
    :cond_40
    :goto_1e
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v11, 0x0

    invoke-static {v2, v3, v4, v11, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    .line 968
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 969
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 971
    sget v4, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    if-ne v7, v4, :cond_41

    .line 972
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4, v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2202(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 973
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1600(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_41
    if-eqz v1, :cond_43

    .line 977
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    iget-object v8, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v8

    if-ne v8, v7, :cond_42

    const/4 v7, 0x1

    goto :goto_1f

    :cond_42
    const/4 v7, 0x0

    :goto_1f
    sub-int/2addr v4, v7

    if-ne v6, v4, :cond_43

    .line 978
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4, v10}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;Ljava/lang/String;)I

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7, v13}, Lorg/telegram/ui/ContentPreviewViewer;->access$2800(Lorg/telegram/ui/ContentPreviewViewer;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_43
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v21

    move/from16 v4, v25

    const/4 v3, 0x0

    goto/16 :goto_1b

    .line 981
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v3, Lorg/telegram/ui/ContentPreviewViewer$2$4;

    const/4 v4, -0x2

    invoke-direct {v3, v0, v2, v4, v4}, Lorg/telegram/ui/ContentPreviewViewer$2$4;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;Landroid/view/View;II)V

    iput-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 992
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 993
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v4, 0x96

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 994
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 995
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 996
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 998
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 999
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/high16 v3, -0x80000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v1, v1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_45

    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 1006
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v3

    add-int v11, v1, v3

    .line 1007
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2300(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    goto :goto_20

    .line 1009
    :cond_45
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v11, 0x0

    .line 1011
    :goto_20
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 1014
    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v3, v5

    add-int/2addr v1, v3

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$2600(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v5

    if-eqz v5, :cond_46

    const/16 v5, 0x28

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_21

    :cond_46
    const/4 v5, 0x0

    :goto_21
    add-int/2addr v1, v5

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    sub-int/2addr v5, v11

    iget-object v6, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->access$2700(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    int-to-float v1, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v1, v1

    const/16 v3, 0x18

    .line 1015
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 1016
    iget-object v3, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v4, v3, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1018
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$1300(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1020
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_48

    .line 1021
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2900(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_47

    .line 1022
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2902(Lorg/telegram/ui/ContentPreviewViewer;F)F

    .line 1023
    iget-object v1, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->access$2500(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$3002(Lorg/telegram/ui/ContentPreviewViewer;F)F

    :cond_47
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1025
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1026
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContentPreviewViewer$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer$2;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x15e

    .line 1031
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1032
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1033
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_48
    :goto_22
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
