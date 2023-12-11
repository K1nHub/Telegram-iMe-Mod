.class public Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;
.super Ljava/lang/Object;
.source "ChatThemeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatThemeItem"
.end annotation


# instance fields
.field public animationProgress:F

.field public final chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field public icon:Landroid/graphics/Bitmap;

.field public isSelected:Z

.field public previewDrawable:Landroid/graphics/drawable/Drawable;

.field public themeIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/EmojiThemes;)V
    .locals 0

    .line 1296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1297
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    return-void
.end method
