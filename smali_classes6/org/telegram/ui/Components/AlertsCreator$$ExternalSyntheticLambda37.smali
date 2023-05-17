.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/app/Activity;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$UserFull;

.field public final synthetic f$5:Lorg/telegram/messenger/AccountInstance;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$1:Z

    iput-boolean p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$3:Landroid/app/Activity;

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$4:Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$5:Lorg/telegram/messenger/AccountInstance;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$1:Z

    iget-boolean v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$3:Landroid/app/Activity;

    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$4:Lorg/telegram/tgnet/TLRPC$UserFull;

    iget-object v5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda37;->f$5:Lorg/telegram/messenger/AccountInstance;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$uKAFGoWZx3Y-G0MSTXn3SGzD5Fw(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;Landroid/content/DialogInterface;I)V

    return-void
.end method
