.class public final synthetic Lorg/telegram/ui/TopicsFragment$22$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/TopicsFragment$22;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/TopicsFragment$22;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$22$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TopicsFragment$22;

    iput-object p2, p0, Lorg/telegram/ui/TopicsFragment$22$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/TopicsFragment$22$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/TopicsFragment$22;

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$22$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-static {v0, v1}, Lorg/telegram/ui/TopicsFragment$22;->$r8$lambda$tkyA1qVFoj9jV3FxMr9X7_OB6q0(Lorg/telegram/ui/TopicsFragment$22;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    return-void
.end method
