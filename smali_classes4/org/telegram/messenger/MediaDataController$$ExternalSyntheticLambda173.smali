.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaDataController;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/iMe/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaDataController;Ljava/lang/String;ILcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$0:Lorg/telegram/messenger/MediaDataController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$2:I

    iput-object p4, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$3:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$0:Lorg/telegram/messenger/MediaDataController;

    iget-object v1, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$2:I

    iget-object v3, p0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda173;->f$3:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$YtbyEePRzEO6YMrxwZNcwSjtIbk(Lorg/telegram/messenger/MediaDataController;Ljava/lang/String;ILcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method
