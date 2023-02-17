.class Lorg/telegram/ui/BubbleActivity$1;
.super Ljava/lang/Object;
.source "BubbleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/BubbleActivity;->onPasscodePause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/BubbleActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BubbleActivity;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lorg/telegram/ui/BubbleActivity$1;->this$0:Lorg/telegram/ui/BubbleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity$1;->this$0:Lorg/telegram/ui/BubbleActivity;

    invoke-static {v0}, Lorg/telegram/ui/BubbleActivity;->access$000(Lorg/telegram/ui/BubbleActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne v0, p0, :cond_3

    const/4 v0, 0x1

    .line 285
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    const-string v0, "lock app"

    .line 287
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity$1;->this$0:Lorg/telegram/ui/BubbleActivity;

    invoke-static {v0}, Lorg/telegram/ui/BubbleActivity;->access$100(Lorg/telegram/ui/BubbleActivity;)V

    goto :goto_0

    .line 291
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    const-string v0, "didn\'t pass lock check"

    .line 292
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 295
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/BubbleActivity$1;->this$0:Lorg/telegram/ui/BubbleActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/BubbleActivity;->access$002(Lorg/telegram/ui/BubbleActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_3
    return-void
.end method
