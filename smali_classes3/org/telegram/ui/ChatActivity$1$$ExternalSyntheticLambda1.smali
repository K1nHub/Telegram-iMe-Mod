.class public final synthetic Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$1;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/templates/TemplateModel;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$1;Lcom/smedialink/storage/domain/model/templates/TemplateModel;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/ChatActivity$1;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;->f$1:Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$1$$ExternalSyntheticLambda1;->f$2:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity$1;->$r8$lambda$fJZ5-JDDgdVId6BNe1OFVRtuueg(Lorg/telegram/ui/ChatActivity$1;Lcom/smedialink/storage/domain/model/templates/TemplateModel;Z)V

    return-void
.end method
