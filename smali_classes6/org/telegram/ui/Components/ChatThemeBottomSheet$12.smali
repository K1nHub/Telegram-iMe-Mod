.class Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;
.super Ljava/lang/Object;
.source "ChatThemeBottomSheet.java"

# interfaces
.implements Lorg/telegram/ui/ThemePreviewActivity$DayNightSwitchDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatThemeBottomSheet;->showAsSheet(Lorg/telegram/ui/ThemePreviewActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)V
    .locals 0

    .line 1250
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDark()Z
    .locals 1

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z

    move-result v0

    return v0
.end method

.method public switchDayNight()V
    .locals 5

    .line 1260
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$002(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)Z

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$902(Lorg/telegram/ui/Components/ChatThemeBottomSheet;Z)Z

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    iput-boolean v2, v0, Lorg/telegram/ui/ChatActivity;->forceDisallowRedrawThemeDescriptions:Z

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2600(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->getCurrentWallpaper()Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object v0

    .line 1265
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v3, v3, Lorg/telegram/ui/ActionBar/EmojiThemes;->showAsDefaultStub:Z

    if-eqz v3, :cond_1

    .line 1266
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v2, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    goto :goto_1

    .line 1268
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2500(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$000(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v2, v4}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;Lorg/telegram/tgnet/TLRPC$WallPaper;ZLjava/lang/Boolean;)V

    .line 1270
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatThemeBottomSheet$12;->this$0:Lorg/telegram/ui/Components/ChatThemeBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatThemeBottomSheet;->access$2200(Lorg/telegram/ui/Components/ChatThemeBottomSheet;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->forceDisallowRedrawThemeDescriptions:Z

    :cond_2
    return-void
.end method
