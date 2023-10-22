.class public final synthetic Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

.field public final synthetic f$1:Lcom/iMe/fork/enums/DrawerSocialNetwork;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/iMe/fork/enums/DrawerSocialNetwork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/fork/enums/DrawerSocialNetwork;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/fork/enums/DrawerSocialNetwork;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;->$r8$lambda$QTK1oSG1WiTvZlv2A9fUW6gGuUs(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lcom/iMe/fork/enums/DrawerSocialNetwork;Landroid/content/DialogInterface;I)V

    return-void
.end method
