.class public final synthetic Lorg/telegram/ui/Components/PermanentLinkBottomSheet$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/LinkActionView$Delegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PermanentLinkBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PermanentLinkBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PermanentLinkBottomSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/PermanentLinkBottomSheet;

    return-void
.end method


# virtual methods
.method public synthetic editLink()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/LinkActionView$Delegate$-CC;->$default$editLink(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    return-void
.end method

.method public synthetic removeLink()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/LinkActionView$Delegate$-CC;->$default$removeLink(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    return-void
.end method

.method public final revokeLink()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PermanentLinkBottomSheet$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/PermanentLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/PermanentLinkBottomSheet;->$r8$lambda$bRT18ggKb99XPRBBvw2jeu7W7bg(Lorg/telegram/ui/Components/PermanentLinkBottomSheet;)V

    return-void
.end method

.method public synthetic showUsersForPermanentLink()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/LinkActionView$Delegate$-CC;->$default$showUsersForPermanentLink(Lorg/telegram/ui/Components/LinkActionView$Delegate;)V

    return-void
.end method
