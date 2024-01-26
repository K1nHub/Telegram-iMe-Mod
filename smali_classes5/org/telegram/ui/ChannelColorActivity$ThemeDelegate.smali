.class public Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;
.super Ljava/lang/Object;
.source "ChannelColorActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChannelColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelColorActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChannelColorActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic applyServiceShaderMatrix(IIFF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public synthetic getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$000(Lorg/telegram/ui/ChannelColorActivity;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 177
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$000(Lorg/telegram/ui/ChannelColorActivity;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(I)I

    move-result p1

    return p1

    .line 182
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method public synthetic getColorOrDefault(I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public synthetic getCurrentColor(I)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getCurrentColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "drawableMsgIn"

    .line 187
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$200(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "drawableMsgInSelected"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$300(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$100(Lorg/telegram/ui/ChannelColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 196
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 1

    const-string v0, "paintDivider"

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelColorActivity;->access$400(Lorg/telegram/ui/ChannelColorActivity;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1
.end method

.method public synthetic hasGradientService()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$hasGradientService(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method public isDark()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$500(Lorg/telegram/ui/ChannelColorActivity;)Z

    move-result v0

    return v0
.end method

.method public synthetic setAnimatedColor(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelColorActivity;->access$500(Lorg/telegram/ui/ChannelColorActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChannelColorActivity;->access$502(Lorg/telegram/ui/ChannelColorActivity;Z)Z

    .line 214
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->updateThemeColors()V

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/ChannelColorActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChannelColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelColorActivity;->updateColors()V

    return-void
.end method
