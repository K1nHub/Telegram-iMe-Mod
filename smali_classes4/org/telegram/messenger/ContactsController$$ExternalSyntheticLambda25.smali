.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/messenger/ContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$4:Lorg/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$1:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda25;->f$4:Lorg/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$nalvoNe5WSxDlkzcoQkMxws6fUI(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;ZLjava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
