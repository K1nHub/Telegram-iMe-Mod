.class Lorg/telegram/ui/Components/SharedMediaLayout$21;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"

# interfaces
.implements Lorg/telegram/ui/CalendarActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->showMediaCalendar(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 3256
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$21;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSelected(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    .line 3260
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$21;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3261
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$21;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3265
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$21;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3700(Lorg/telegram/ui/Components/SharedMediaLayout;I)Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v2

    if-ltz v1, :cond_2

    if-eqz v2, :cond_2

    .line 3267
    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 3269
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$21;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v3, 0x1

    invoke-static {v1, v0, p1, p2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6600(Lorg/telegram/ui/Components/SharedMediaLayout;IIIZ)V

    :goto_1
    if-eqz v2, :cond_3

    .line 3272
    iput p1, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    .line 3273
    iput-boolean v0, v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    :cond_3
    return-void
.end method
