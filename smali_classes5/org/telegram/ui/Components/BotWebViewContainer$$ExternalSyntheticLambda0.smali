.class public final synthetic Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/BotWebViewContainer;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/BotWebViewContainer$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/BotWebViewContainer;->$r8$lambda$qDmh-URTocudRXsfkeD419Nsgs0(Lorg/telegram/ui/Components/BotWebViewContainer;Landroid/net/Uri;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
