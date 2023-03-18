.class public final synthetic Lorg/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

.field public final synthetic f$1:Lorg/fork/enums/DrawerSocialNetwork;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/fork/enums/DrawerSocialNetwork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iput-object p2, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$1:Lorg/fork/enums/DrawerSocialNetwork;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$$ExternalSyntheticLambda0;->f$1:Lorg/fork/enums/DrawerSocialNetwork;

    invoke-static {v0, v1, p1, p2}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->$r8$lambda$jH0hwP_eZr2lISf2cj9zkyvCac8(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/fork/enums/DrawerSocialNetwork;Landroid/content/DialogInterface;I)V

    return-void
.end method
