.class Lorg/telegram/ui/ThemePreviewActivity$3;
.super Ljava/lang/Object;
.source "ThemePreviewActivity.java"

# interfaces
.implements Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity;->showFor(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field forceDark:Z

.field final synthetic val$chatActivity:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$initialIsDark:Z


# direct methods
.method constructor <init>(ZLorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$initialIsDark:Z

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-boolean p1, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->forceDark:Z

    return-void
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->forceDark:Z

    return v0
.end method

.method public switchDayNight()V
    .locals 5

    .line 433
    iget-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->forceDark:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->forceDark:Z

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentTheme()Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->val$chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/ThemePreviewActivity$3;->forceDark:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    return-void
.end method
