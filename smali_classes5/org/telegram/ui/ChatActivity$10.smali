.class Lorg/telegram/ui/ChatActivity$10;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$PostponeNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 2617
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needPostpone(II[Ljava/lang/Object;)Z
    .locals 3

    .line 2620
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 2621
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2622
    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$1700(Lorg/telegram/ui/ChatActivity;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$10;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
