.class Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;
.super Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;
.source "ViewPagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabWithIcon"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconPadding:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;ILjava/lang/String;)V
    .locals 0

    .line 1000
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;-><init>(ILjava/lang/String;)V

    const/16 p1, 0x8

    .line 997
    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->iconPadding:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;ILjava/lang/String;Lorg/telegram/ui/Components/ViewPagerFixed$1;)V
    .locals 0

    .line 993
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;-><init>(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 993
    iget-object p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 993
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;)I
    .locals 0

    .line 993
    iget p0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->iconPadding:I

    return p0
.end method


# virtual methods
.method public getWidth(ZLandroid/text/TextPaint;)I
    .locals 0

    .line 1007
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabWithIcon;->iconPadding:I

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$Tab;->titleWidth:I

    const/16 p2, 0x28

    .line 1008
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
