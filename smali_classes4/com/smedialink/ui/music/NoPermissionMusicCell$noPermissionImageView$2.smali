.class final Lcom/smedialink/ui/music/NoPermissionMusicCell$noPermissionImageView$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NoPermissionMusicCell.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/music/NoPermissionMusicCell;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/app/Activity;

.field final synthetic this$0:Lcom/smedialink/ui/music/NoPermissionMusicCell;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/smedialink/ui/music/NoPermissionMusicCell;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$noPermissionImageView$2;->$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$noPermissionImageView$2;->this$0:Lcom/smedialink/ui/music/NoPermissionMusicCell;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/ImageView;
    .locals 5

    .line 28
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$noPermissionImageView$2;->$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/smedialink/ui/music/NoPermissionMusicCell$noPermissionImageView$2;->this$0:Lcom/smedialink/ui/music/NoPermissionMusicCell;

    .line 29
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 30
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lcom/smedialink/ui/music/NoPermissionMusicCell;->access$getIconColor$p(Lcom/smedialink/ui/music/NoPermissionMusicCell;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 31
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lcom/smedialink/ui/music/NoPermissionMusicCell;->access$getIconCircleColor$p(Lcom/smedialink/ui/music/NoPermissionMusicCell;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_music_device_no_storage_permission:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/smedialink/ui/music/NoPermissionMusicCell$noPermissionImageView$2;->invoke()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method
