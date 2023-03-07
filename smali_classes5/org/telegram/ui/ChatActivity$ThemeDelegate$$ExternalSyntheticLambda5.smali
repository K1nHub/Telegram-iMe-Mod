.class public final synthetic Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/EmojiThemes;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$$ExternalSyntheticLambda5;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->$r8$lambda$bYto0spCp7hAk3IBYfcOVTSRuus(Lorg/telegram/ui/ChatActivity$ThemeDelegate;Lorg/telegram/ui/ActionBar/EmojiThemes;Z)V

    return-void
.end method
