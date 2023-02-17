.class public Lorg/telegram/messenger/SharedConfig$LiteMode;
.super Ljava/lang/Object;
.source "SharedConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SharedConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiteMode"
.end annotation


# instance fields
.field private enabled:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2155
    invoke-direct {p0}, Lorg/telegram/messenger/SharedConfig$LiteMode;->loadPreference()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SharedConfig$LiteMode;)Z
    .locals 0

    .line 2150
    iget-boolean p0, p0, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled:Z

    return p0
.end method

.method private loadPreference()V
    .locals 5

    .line 2169
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "light_mode"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 2170
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled:Z

    return-void
.end method


# virtual methods
.method public animatedEmojiEnabled()Z
    .locals 1

    .line 2182
    iget-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public enabled()Z
    .locals 1

    .line 2159
    iget-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled:Z

    return v0
.end method

.method public savePreference()V
    .locals 3

    .line 2175
    iget-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled:Z

    .line 2178
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "light_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public toggleMode()V
    .locals 1

    .line 2163
    iget-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled:Z

    .line 2164
    invoke-virtual {p0}, Lorg/telegram/messenger/SharedConfig$LiteMode;->savePreference()V

    .line 2165
    invoke-static {}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->lightModeChanged()V

    return-void
.end method
