.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

.field public final synthetic f$1:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda34;->f$1:Lorg/telegram/ui/LaunchActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda34;->f$0:Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda34;->f$1:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$aZHChfAqtmOxZsdh0sDwaGmjrtk(Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;Lorg/telegram/ui/LaunchActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
