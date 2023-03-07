.class public Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "BotCommandsMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/BotCommandsMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotCommandsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;
    }
.end annotation


# instance fields
.field private headerRow:I

.field newResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field newResultHelp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rowCount:I

.field private templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/templates/TemplateModel;",
            ">;"
        }
    .end annotation
.end field

.field private templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

.field private templatesMode:Z

.field private templatesStartRow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templates:Ljava/util/List;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    return-void
.end method

.method private updateRows()V
    .locals 2

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    .line 338
    iput v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->headerRow:I

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 340
    iput v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesStartRow:I

    goto :goto_0

    .line 342
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesStartRow:I

    .line 343
    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->rowCount:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 415
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->isTemplatesMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->rowCount:I

    return v0

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 326
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->isTemplatesMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->headerRow:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isTemplatesMode()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesMode:Z

    return v0
.end method

.method public loadTemplates()V
    .locals 1

    .line 303
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/fork/controller/TemplatesController;->getInstance(I)Lorg/fork/controller/TemplatesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/TemplatesController;->getTemplatesList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templates:Ljava/util/List;

    .line 304
    invoke-direct {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->updateRows()V

    .line 305
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 394
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->isTemplatesMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/fork/ui/view/TemplatesHeaderCell;

    if-eqz v0, :cond_0

    .line 396
    check-cast p1, Lorg/fork/ui/view/TemplatesHeaderCell;

    .line 397
    iget-object p2, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templates:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    invoke-virtual {p1, p2, v0}, Lorg/fork/ui/view/TemplatesHeaderCell;->bind(ILorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V

    goto :goto_0

    .line 398
    :cond_0
    instance-of v0, p1, Lorg/fork/ui/view/TemplateCell;

    if-eqz v0, :cond_1

    .line 399
    check-cast p1, Lorg/fork/ui/view/TemplateCell;

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templates:Ljava/util/List;

    iget v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesStartRow:I

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    invoke-virtual {p1, p2, v0}, Lorg/fork/ui/view/TemplateCell;->bind(Lcom/smedialink/storage/domain/model/templates/TemplateModel;Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V

    :cond_1
    :goto_0
    return-void

    .line 406
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;

    .line 407
    iget-object v0, p1, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->command:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p1, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;->commandStr:Ljava/lang/String;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 380
    new-instance p2, Lorg/fork/ui/view/TemplatesHeaderCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fork/ui/view/TemplatesHeaderCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 382
    new-instance p2, Lorg/fork/ui/view/TemplateCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fork/ui/view/TemplateCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 384
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandView;-><init>(Landroid/content/Context;)V

    .line 387
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setBotInfo(Landroidx/collection/LongSparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$BotInfo;",
            ">;)V"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 425
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 426
    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    const/4 v3, 0x0

    .line 427
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 428
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    if-eqz v4, :cond_0

    .line 429
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 430
    iget-object v5, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v5, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTemplatesDelegate(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesDelegate:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    return-void
.end method

.method public setTemplatesMode(Z)V
    .locals 0

    .line 309
    iput-boolean p1, p0, Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter;->templatesMode:Z

    return-void
.end method
