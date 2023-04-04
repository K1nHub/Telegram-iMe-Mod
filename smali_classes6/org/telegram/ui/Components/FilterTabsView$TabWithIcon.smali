.class Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;
.super Lorg/telegram/ui/Components/FilterTabsView$Tab;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabWithIcon"
.end annotation


# instance fields
.field private filledDrawable:Landroid/graphics/drawable/Drawable;

.field private outlinedDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;I)V
    .locals 1

    .line 238
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    const-string v0, ""

    .line 239
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Components/FilterTabsView$Tab;-><init>(Lorg/telegram/ui/Components/FilterTabsView;ILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;ILorg/telegram/ui/Components/FilterTabsView$1;)V
    .locals 0

    .line 233
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;-><init>(Lorg/telegram/ui/Components/FilterTabsView;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 233
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 233
    iget-object p0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->filledDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->filledDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method


# virtual methods
.method public getWidth(Z)I
    .locals 4

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->outlinedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 249
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$300(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v2

    if-gez v2, :cond_0

    move v2, v1

    :cond_0
    if-eqz p1, :cond_2

    .line 254
    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_0

    .line 257
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    .line 259
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->access$400(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/16 p1, 0xa

    if-lez v2, :cond_4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 264
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->access$500(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 265
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 266
    sget-object v2, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getMarginIconAndCount()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 269
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabWithIcon;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->access$600(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 270
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

    .line 272
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
