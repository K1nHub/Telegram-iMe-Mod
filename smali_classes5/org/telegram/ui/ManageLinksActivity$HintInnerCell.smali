.class public Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;
.super Landroid/widget/FrameLayout;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HintInnerCell"
.end annotation


# instance fields
.field private emptyView:Lorg/telegram/ui/ManageLinksActivity$EmptyView;

.field private messageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V
    .locals 8

    .line 1356
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1358
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$EmptyView;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$EmptyView;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->emptyView:Lorg/telegram/ui/ManageLinksActivity$EmptyView;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x31

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1359
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    .line 1362
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1363
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1364
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1366
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$400(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1367
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->staking_calculator_description:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1368
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$200(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1369
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_receive_description:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1370
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1371
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->channel_donations_description:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1373
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$900(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget p1, Lorg/telegram/messenger/R$string;->PrimaryLinkHelpChannel:I

    const-string v0, "PrimaryLinkHelpChannel"

    goto :goto_0

    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->PrimaryLinkHelp:I

    const-string v0, "PrimaryLinkHelp"

    :goto_0
    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/16 v2, 0x33

    const/16 v3, 0x34

    const/16 v4, 0x8f

    const/16 v5, 0x34

    const/16 v6, 0x12

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 1380
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
