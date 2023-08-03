.class public final synthetic Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->$r8$lambda$BqSxJNQFx8SUX5kwJbtZ7z9n7Lo(Lorg/telegram/messenger/Utilities$Callback;I)V

    return-void
.end method
