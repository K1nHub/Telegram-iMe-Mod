.class public Lorg/telegram/ui/Components/FilterTabsView$Tab;
.super Ljava/lang/Object;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tab"
.end annotation


# instance fields
.field public counter:I

.field public id:I

.field public isDefault:Z

.field public isLocked:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;

.field public title:Ljava/lang/String;

.field public titleWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;ILjava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    .line 367
    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected fixWidthForNoCounterMode(IF)I
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    float-to-int p1, p1

    .line 348
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    int-to-float p1, p1

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    float-to-int p1, p1

    :cond_1
    return p1
.end method

.method public getWidth(Z)I
    .locals 4

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$1000(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 374
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v2

    if-gez v2, :cond_0

    move v2, v1

    :cond_0
    if-eqz p1, :cond_2

    .line 379
    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_0

    .line 382
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    .line 385
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/16 p1, 0xa

    if-lez v2, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 390
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 391
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 392
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 393
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getMarginIconAndCount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 396
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$600(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 397
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    sget-object v2, Lcom/iMe/fork/enums/FilterTabWidthMode;->MINIMUM:Lcom/iMe/fork/enums/FilterTabWidthMode;

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 p1, 0x14

    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_6
    const/16 p1, 0x28

    .line 400
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected isAllChatsTabTitleEnabled()Z
    .locals 1

    .line 335
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isAllowEditing()Z
    .locals 3

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 340
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v2, v0}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public setTitle(Ljava/lang/String;)Z
    .locals 3

    .line 405
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$1100(Lorg/telegram/ui/Components/FilterTabsView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllChatsTabTitleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$1200(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->FilterAllChats:I

    const-string v0, "FilterAllChats"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 414
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 417
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
