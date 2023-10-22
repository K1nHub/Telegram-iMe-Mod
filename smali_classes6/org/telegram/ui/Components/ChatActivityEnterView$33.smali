.class Lorg/telegram/ui/Components/ChatActivityEnterView$33;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->lambda$onSendLongClick$40(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 4206
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectDate(ZILjava/lang/String;)V
    .locals 6

    .line 4209
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$33;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x1

    const/4 v5, 0x1

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$15100(Lorg/telegram/ui/Components/ChatActivityEnterView;ZIZLjava/lang/String;Z)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
