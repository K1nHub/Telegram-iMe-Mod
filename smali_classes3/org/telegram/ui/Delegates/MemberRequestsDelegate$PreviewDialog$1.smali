.class Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog$1;
.super Lorg/telegram/ui/AvatarPreviewPagerIndicator;
.source "MemberRequestsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;-><init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate;Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Delegates/MemberRequestsDelegate$PreviewDialog;Landroid/content/Context;Lorg/telegram/ui/Delegates/MemberRequestsDelegate;)V
    .locals 0

    .line 688
    invoke-direct {p0, p2}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->profileGalleryView:Lorg/telegram/ui/Components/ProfileGalleryView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 692
    invoke-super {p0, p1}, Lorg/telegram/ui/AvatarPreviewPagerIndicator;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
