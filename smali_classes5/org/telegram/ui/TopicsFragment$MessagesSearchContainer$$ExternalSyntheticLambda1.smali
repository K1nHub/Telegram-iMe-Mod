.class public final synthetic Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;->$r8$lambda$jdcvuqUHvP6zGL_P6K2Z3oD4OAs(Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method
