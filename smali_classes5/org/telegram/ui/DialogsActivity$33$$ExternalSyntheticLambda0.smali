.class public final synthetic Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$33;

.field public final synthetic f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$33;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity$33;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity$33;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/storage/domain/model/topics/TopicModel;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/DialogsActivity$33;->$r8$lambda$JW3V9iC6Ug_qBn3W9pvR4jmXwzc(Lorg/telegram/ui/DialogsActivity$33;Lcom/iMe/storage/domain/model/topics/TopicModel;Landroid/content/DialogInterface;I)V

    return-void
.end method
