.class public final synthetic Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$13;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/ui/Components/FilterTabsView$TabView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$13;ZZLorg/telegram/ui/Components/FilterTabsView$TabView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/DialogsActivity$13;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$1:Z

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/ui/Components/FilterTabsView$TabView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/DialogsActivity$13;

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$1:Z

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/ui/Components/FilterTabsView$TabView;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/DialogsActivity$13;->$r8$lambda$y_CEahCXJkE2pUdwJulnTtrpedk(Lorg/telegram/ui/DialogsActivity$13;ZZLorg/telegram/ui/Components/FilterTabsView$TabView;)V

    return-void
.end method
