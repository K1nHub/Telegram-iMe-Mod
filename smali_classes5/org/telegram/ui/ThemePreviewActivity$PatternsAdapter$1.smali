.class Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;
.super Ljava/lang/Object;
.source "ThemePreviewActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/PatternCell$PatternCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;)V
    .locals 0

    .line 5042
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 3

    .line 5055
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5056
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    return v0

    .line 5058
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v0

    .line 5059
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundOverrideColor:J

    long-to-int v1, v1

    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public getBackgroundGradientAngle()I
    .locals 2

    .line 5095
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5096
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3800(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    return v0

    .line 5098
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundRotation:I

    return v0
.end method

.method public getBackgroundGradientColor1()I
    .locals 3

    .line 5065
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5066
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3500(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    return v0

    .line 5068
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v0

    .line 5069
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor1:J

    long-to-int v1, v1

    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public getBackgroundGradientColor2()I
    .locals 3

    .line 5075
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5076
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3600(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    return v0

    .line 5078
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v0

    .line 5079
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor2:J

    long-to-int v1, v1

    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public getBackgroundGradientColor3()I
    .locals 3

    .line 5085
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$6700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5086
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$3700(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    return v0

    .line 5088
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultAccentColor(I)I

    move-result v0

    .line 5089
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemePreviewActivity;->access$2400(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->backgroundGradientOverrideColor3:J

    long-to-int v1, v1

    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public getCheckColor()I
    .locals 1

    .line 5050
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11300(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    return v0
.end method

.method public getIntensity()F
    .locals 1

    .line 5103
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2600(Lorg/telegram/ui/ThemePreviewActivity;)F

    move-result v0

    return v0
.end method

.method public getPatternColor()I
    .locals 1

    .line 5108
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$11400(Lorg/telegram/ui/ThemePreviewActivity;)I

    move-result v0

    return v0
.end method

.method public getSelectedPattern()Lorg/telegram/tgnet/TLRPC$TL_wallPaper;
    .locals 1

    .line 5045
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemePreviewActivity$PatternsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemePreviewActivity;->access$2500(Lorg/telegram/ui/ThemePreviewActivity;)Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    move-result-object v0

    return-object v0
.end method
