.class public Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;
.super Landroid/view/View;
.source "ViewPagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field private currentPosition:I

.field private currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

.field private currentText:Ljava/lang/String;

.field private rect:Landroid/graphics/RectF;

.field private tabWidth:I

.field private textHeight:I

.field private textLayout:Landroid/text/StaticLayout;

.field private textOffsetX:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;Landroid/content/Context;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    .line 944
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 938
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Landroid/graphics/RectF;
    .locals 0

    .line 932
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)I
    .locals 0

    .line 932
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->tabWidth:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;
    .locals 0

    .line 932
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 968
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const/4 v8, 0x0

    const v9, 0x7fffffff

    if-eq v1, v9, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_1

    .line 969
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 970
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v1

    iget v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentPosition:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v3, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr v1, v3

    const v3, 0x3f28f5c3    # 0.66f

    .line 971
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v7, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 982
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 983
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v1

    .line 984
    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v4

    goto :goto_1

    .line 986
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v1

    .line 987
    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v4

    .line 989
    :goto_1
    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const-string v6, "chats_tabUnreadActiveBackground"

    const-string v10, "chats_tabUnreadUnactiveBackground"

    if-ne v5, v1, :cond_3

    .line 990
    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;

    move-result-object v5

    .line 991
    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 995
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;

    move-result-object v5

    .line 996
    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v28, v10

    move-object v10, v6

    move-object/from16 v6, v28

    .line 1001
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v12

    if-eq v12, v3, :cond_5

    :cond_4
    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v12, v12, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v12, v1, :cond_6

    if-ne v12, v4, :cond_5

    goto :goto_3

    .line 1004
    :cond_5
    iget-object v11, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v11}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v11

    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-static {v5, v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v11, v5}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_4

    .line 1002
    :cond_6
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v12}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v12

    iget-object v13, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-static {v11, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v13

    invoke-static {v5, v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    iget-object v13, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v13

    invoke-static {v11, v5, v13}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 1011
    :goto_4
    iget-object v5, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v5, v5, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->counter:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v5, :cond_7

    new-array v13, v11, [Ljava/lang/Object;

    .line 1012
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v13, v12

    const-string v5, "%d"

    invoke-static {v5, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1013
    iget-object v13, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    const/16 v14, 0xa

    .line 1014
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    add-int/2addr v15, v14

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    move v13, v12

    move v15, v13

    .line 1021
    :goto_5
    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v14, v14, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const/16 v16, 0x14

    if-eq v14, v9, :cond_9

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v14

    if-nez v14, :cond_8

    iget-object v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v14

    cmpl-float v14, v14, v8

    if-eqz v14, :cond_9

    :cond_8
    int-to-float v14, v15

    .line 1022
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v17

    sub-int v15, v17, v15

    int-to-float v15, v15

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v2

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    float-to-int v15, v14

    .line 1025
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->titleWidth:I

    if-eqz v15, :cond_b

    const/high16 v14, 0x40c00000    # 6.0f

    if-eqz v5, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v3

    :goto_6
    mul-float/2addr v3, v14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v15

    goto :goto_7

    :cond_b
    move v3, v12

    :goto_7
    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->tabWidth:I

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->tabWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1028
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    instance-of v14, v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;

    const/16 v18, 0x3

    if-eqz v14, :cond_c

    .line 1030
    check-cast v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;

    .line 1031
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v14, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->tabWidth:I

    sub-int/2addr v2, v14

    div-int/lit8 v2, v2, 0x2

    .line 1032
    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    add-int/2addr v14, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$2900(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    add-int v14, v14, v19

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v19

    sub-int v14, v14, v19

    .line 1034
    new-instance v8, Landroid/graphics/PorterDuffColorFilter;

    iget-object v9, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1035
    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1036
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v2

    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1038
    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-virtual {v2, v12, v12, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1039
    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->access$1500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move v2, v14

    .line 1043
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v3, v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/String;

    iget-object v8, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentText:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1044
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v3, v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentText:Ljava/lang/String;

    .line 1045
    iget-object v8, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v8

    const/16 v9, 0xf

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3, v8, v9, v12}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v21

    .line 1046
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v8, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v22

    const/16 v8, 0x190

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v23

    sget-object v24, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v27}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    .line 1047
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textHeight:I

    .line 1048
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v12}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    iput v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textOffsetX:I

    .line 1050
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_e

    .line 1051
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1052
    iget v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textOffsetX:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget v9, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textHeight:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    const/4 v9, 0x1

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1053
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v7}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1054
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    if-nez v5, :cond_f

    .line 1057
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v3, v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const v8, 0x7fffffff

    if-eq v3, v8, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_19

    .line 1058
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v3

    iget-object v8, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 1059
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->hasThemeKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1060
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    .line 1061
    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3100(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_11

    :cond_10
    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v6, v6, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    if-eq v6, v1, :cond_12

    if-ne v6, v4, :cond_11

    goto :goto_8

    .line 1065
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 1062
    :cond_12
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2400(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-static {v10, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    .line 1063
    iget-object v4, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2500(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v6

    invoke-static {v1, v3, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 1068
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1071
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->titleWidth:I

    add-int/2addr v2, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 1074
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v3, v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const/high16 v4, 0x437f0000    # 255.0f

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_15

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_15

    :cond_14
    if-nez v5, :cond_15

    .line 1075
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v3

    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a

    .line 1077
    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v3

    const/16 v6, 0xff

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1080
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    int-to-float v6, v2

    int-to-float v8, v1

    add-int/2addr v2, v15

    int-to-float v2, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v3, v6, v8, v2, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1081
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x41380000    # 11.5f

    mul-float v8, v3, v6

    mul-float/2addr v3, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3200(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v7, v2, v8, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v5, :cond_17

    .line 1084
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v2, v2, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_16

    .line 1085
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1087
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v6, v13

    sub-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v3, v2

    const/high16 v2, 0x41680000    # 14.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v7, v5, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1089
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_19

    .line 1090
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1091
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1092
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1093
    iget-object v2, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    int-to-float v8, v1

    sub-float/2addr v2, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v3, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v5, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1094
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float v2, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float v3, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    add-float v4, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float v5, v1, v8

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$3300(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1097
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v1, v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1a

    iget-object v1, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1800(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1a

    .line 1098
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1a
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1104
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->id:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$2000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 961
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->getWidth(ZLandroid/text/TextPaint;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    iget v0, v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->tabMarginDp:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;->access$1700(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;)I

    move-result v0

    add-int/2addr p1, v0

    .line 962
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setTab(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;I)V
    .locals 0

    .line 948
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentTab:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;

    .line 949
    iput p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabView;->currentPosition:I

    .line 950
    iget-object p2, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 951
    iget p1, p1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->alpha:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 952
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
