.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/utils/Callbacks$Callback1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/EnumMap;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/utils/Callbacks$Callback1;ILjava/util/EnumMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda3;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda3;->f$2:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda3;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iget v1, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda3;->f$2:Ljava/util/EnumMap;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$EAFRXVCjtKUKHj6_nMh8aIp1-DM(Lorg/fork/utils/Callbacks$Callback1;ILjava/util/EnumMap;)V

    return-void
.end method
