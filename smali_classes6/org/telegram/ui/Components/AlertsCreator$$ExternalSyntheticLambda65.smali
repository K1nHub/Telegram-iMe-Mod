.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ReportAlert;

.field public final synthetic f$1:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ReportAlert;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda65;->f$0:Lorg/telegram/ui/Components/ReportAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda65;->f$1:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda65;->f$0:Lorg/telegram/ui/Components/ReportAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda65;->f$1:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$S9PyDTvCog9l8y7Z-sPHhYlEVPA(Lorg/telegram/ui/Components/ReportAlert;Lorg/telegram/ui/ChatActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
