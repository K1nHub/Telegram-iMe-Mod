.class public final synthetic Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$12;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/ui/Components/FilterTabsView$TabView;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$12;IZLorg/telegram/ui/Components/FilterTabsView$TabView;ZILorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/DialogsActivity$12;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/Components/FilterTabsView$TabView;

    iput-boolean p5, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$4:Z

    iput p6, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$5:I

    iput-object p7, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$6:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/DialogsActivity$12;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/Components/FilterTabsView$TabView;

    iget-boolean v4, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$4:Z

    iget v5, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$5:I

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;->f$6:Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/DialogsActivity$12;->$r8$lambda$j0vBIA5pm0SwbBItq2hcBetwnf0(Lorg/telegram/ui/DialogsActivity$12;IZLorg/telegram/ui/Components/FilterTabsView$TabView;ZILorg/telegram/messenger/MessagesController$DialogFilter;Landroid/view/View;)V

    return-void
.end method
