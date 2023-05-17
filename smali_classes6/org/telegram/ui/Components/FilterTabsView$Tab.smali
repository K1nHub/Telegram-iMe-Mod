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

.field protected filledDrawable:Landroid/graphics/drawable/Drawable;

.field public id:I

.field public isDefault:Z

.field public isLocked:Z

.field protected outlinedDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;

.field public title:Ljava/lang/String;

.field public titleWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    const-string p1, ""

    .line 283
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    .line 284
    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    .line 285
    iput-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->filledDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;ILjava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    .line 332
    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getNoCounterMargin(Z)I
    .locals 2

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$100(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$200(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 311
    div-int/lit8 v0, v0, 0x2

    .line 313
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllowEditing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_3

    :cond_2
    int-to-float p1, v0

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int v0, p1

    :cond_3
    return v0
.end method

.method public getWidth(Z)I
    .locals 4

    .line 336
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isIconTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 339
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$600(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v2

    if-gez v2, :cond_1

    move v2, v1

    :cond_1
    if-eqz p1, :cond_3

    .line 344
    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_1

    .line 347
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    :cond_3
    :goto_1
    if-lez v2, :cond_5

    .line 349
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$100(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, "%d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$700(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    const/16 v1, 0xa

    .line 352
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 353
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$800(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x6

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 355
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$900(Lorg/telegram/ui/Components/FilterTabsView;)I

    move-result p1

    goto :goto_3

    :cond_6
    const/16 p1, 0x28

    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method protected isAllChatsTabTitleEnabled()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isIconTab()Z

    move-result v0

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

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FilterTabsView;->access$000(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 300
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

.method protected isIconTab()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->filledDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTitle(Ljava/lang/String;)Z
    .locals 2

    .line 360
    iget-boolean v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isAllChatsTabTitleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 367
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
