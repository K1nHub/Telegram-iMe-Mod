.class public final synthetic Lorg/fork/ui/view/TemplateCell$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/templates/TemplateModel;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/smedialink/storage/domain/model/templates/TemplateModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/view/TemplateCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    iput-object p2, p0, Lorg/fork/ui/view/TemplateCell$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/fork/ui/view/TemplateCell$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;

    iget-object v1, p0, Lorg/fork/ui/view/TemplateCell$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    invoke-static {v0, v1, p1}, Lorg/fork/ui/view/TemplateCell;->$r8$lambda$T0RpRzY-ycevbeYG51rMZ__DhVw(Lorg/telegram/ui/Components/BotCommandsMenuView$BotCommandsAdapter$TemplatesDelegate;Lcom/smedialink/storage/domain/model/templates/TemplateModel;Landroid/view/View;)V

    return-void
.end method
