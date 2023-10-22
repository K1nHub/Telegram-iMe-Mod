.class Lorg/telegram/ui/ActionBar/AlertDialog$3;
.super Landroid/widget/ScrollView;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;->inflateContent(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/Context;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AlertDialog$3;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .line 746
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 747
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$3;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3700(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    const/4 v0, 0x3

    if-eqz p3, :cond_0

    .line 748
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$3;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3700(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    aget-object p3, p3, p4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, p4, v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 749
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$3;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3700(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    aget-object p3, p3, p4

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$3;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3700(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    const/4 v1, 0x1

    aget-object p3, p3, v1

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    if-eqz p3, :cond_1

    .line 752
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$3;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3700(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    aget-object p3, p3, v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p3, p4, v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 753
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/AlertDialog$3;->this$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$3700(Lorg/telegram/ui/ActionBar/AlertDialog;)[Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    aget-object p3, p3, v1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return p2
.end method
