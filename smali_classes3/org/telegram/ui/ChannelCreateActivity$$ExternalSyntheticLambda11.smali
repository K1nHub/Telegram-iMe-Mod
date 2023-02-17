.class public final synthetic Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/utils/Callbacks$Callback1;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/fork/utils/Callbacks$Callback1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda11;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iput-wide p2, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda11;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda11;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iget-wide v1, p0, Lorg/telegram/ui/ChannelCreateActivity$$ExternalSyntheticLambda11;->f$1:J

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChannelCreateActivity;->$r8$lambda$bzf0oS6T5CxQAnf0ZTM_n_n6sfM(Lorg/fork/utils/Callbacks$Callback1;J)V

    return-void
.end method
