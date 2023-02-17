.class Lorg/telegram/ui/LNavigation/LNavigation$3;
.super Ljava/lang/Object;
.source "LNavigation.java"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LNavigation/LNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dampingTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/widget/TextView;)V
    .locals 0

    .line 503
    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation$3;->val$dampingTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getContentDescription(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStepsCount()I
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate$-CC;->$default$getStepsCount(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)I

    move-result v0

    return v0
.end method

.method public onSeekBarDrag(ZF)V
    .locals 5

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation$3;->val$dampingTitle:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, v3

    const v3, 0x3e4ccccd    # 0.2f

    add-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Damping ratio: %f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 508
    invoke-static {p2}, Lorg/telegram/ui/LNavigation/LNavigation;->access$1802(F)F

    :cond_0
    return-void
.end method

.method public onSeekBarPressed(Z)V
    .locals 0

    return-void
.end method
