.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->$r8$lambda$mxDfE8wYrg9TkmHyeCrRlTNX-Ho(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
