.class Lorg/telegram/ui/ContentPreviewViewer$2$1;
.super Ljava/lang/Object;
.source "ContentPreviewViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContentPreviewViewer$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

.field final synthetic val$actions:Ljava/util/ArrayList;

.field final synthetic val$inFavs:Z


# direct methods
.method public static synthetic $r8$lambda$53h6ZZeWix5x3_NOYk_y_tw1Sow(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ContentPreviewViewer$2$1;->lambda$onClick$0(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer$2;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 512
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$inFavs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onClick$0(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/String;)V
    .locals 0

    .line 546
    invoke-interface/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZI)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 515
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_AUTO_PREVIEW:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 521
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isSendingStickerConfirmationEnabled:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSendingStickerConfirmationEnabled(Z)V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1700(Lorg/telegram/ui/ContentPreviewViewer;)V

    goto/16 :goto_2

    .line 523
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v3, Lcom/iMe/common/IdFabric$Menu;->EDIT_AND_SEND:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$1800(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto/16 :goto_2

    .line 525
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v3, Lcom/iMe/common/IdFabric$Menu;->SET_AS_AVATAR:I

    if-ne v0, v3, :cond_3

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1800(Lorg/telegram/ui/ContentPreviewViewer;Lorg/telegram/tgnet/TLRPC$Document;Z)V

    goto/16 :goto_2

    .line 528
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_4

    goto/16 :goto_0

    .line 532
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 534
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v2, v2, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$1500(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$2100(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->openSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)V

    goto/16 :goto_2

    .line 536
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    if-ne v0, v2, :cond_6

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    const/4 v6, 0x2

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v3

    long-to-int v9, v9

    iget-boolean v10, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$inFavs:Z

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    goto/16 :goto_2

    .line 538
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 540
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v2, v2, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v2

    .line 541
    iget-object v3, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v3, v3, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/String;

    move-result-object v3

    .line 542
    iget-object v4, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v4, v4, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    .line 546
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v5, v5, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->access$500(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v5

    invoke-interface {v4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getDialogId()J

    move-result-wide v6

    new-instance v8, Lorg/telegram/ui/ContentPreviewViewer$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4, v0, v3, v2}, Lorg/telegram/ui/ContentPreviewViewer$2$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v5, v6, v7, v8, v0}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto/16 :goto_2

    .line 547
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$900(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    div-long/2addr v9, v3

    long-to-int v9, v9

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    goto :goto_2

    .line 549
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_c

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v2, v2, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->access$2200(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->remove(Lorg/telegram/messenger/SendMessagesHelper$ImportingSticker;)V

    goto :goto_2

    .line 529
    :cond_a
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 530
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$800(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1100(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$1900(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->access$2000(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v8

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    move v9, v2

    goto :goto_1

    :cond_b
    move v9, v4

    :goto_1
    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;ZI)V

    .line 553
    :cond_c
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->val$actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_d

    .line 554
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$2$1;->this$1:Lorg/telegram/ui/ContentPreviewViewer$2;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer$2;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object p1, p1, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_d

    .line 555
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_d
    return-void
.end method
