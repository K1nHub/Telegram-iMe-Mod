.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda133;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda133;->f$0:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda133;->f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda133;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda133;->f$0:Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda133;->f$1:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda133;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$P8R0nzt38flKFllU06qguOxKVIE(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    return-void
.end method
