.class Lorg/telegram/ui/Components/ShareAlert$22;
.super Landroid/view/View;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 0

    .line 1681
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1684
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$9900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/16 v2, 0x10

    .line 1686
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v1

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1687
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 1688
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, v4

    .line 1690
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$9900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBoxCheck:I

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ShareAlert;->access$10000(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 1691
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/ShareAlert;->access$200(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    goto :goto_0

    :cond_0
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    :goto_0
    invoke-static {v6, v7}, Lorg/telegram/ui/Components/ShareAlert;->access$10100(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1692
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$10300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/RectF;

    move-result-object v5

    div-int/2addr v2, v4

    sub-int v6, v3, v2

    int-to-float v7, v6

    const/4 v8, 0x0

    add-int/2addr v2, v3

    int-to-float v9, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1693
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$10300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/RectF;

    move-result-object v5

    const/16 v7, 0xc

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {p1, v5, v8, v7, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1695
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/Paint;

    move-result-object v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRoundCheckBox:I

    invoke-static {v7, v8}, Lorg/telegram/ui/Components/ShareAlert;->access$10400(Lorg/telegram/ui/Components/ShareAlert;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1696
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/ShareAlert;->access$10300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v2, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1697
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$10300(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/RectF;

    move-result-object v2

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v2, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1699
    div-int/2addr v1, v4

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const v2, 0x4181999a    # 16.2f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$22;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$9900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
