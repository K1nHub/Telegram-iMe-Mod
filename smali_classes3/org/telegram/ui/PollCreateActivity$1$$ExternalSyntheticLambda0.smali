.class public final synthetic Lorg/telegram/ui/PollCreateActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PollCreateActivity$1;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

.field public final synthetic f$2:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PollCreateActivity$1;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/PollCreateActivity$1;

    iput-object p2, p0, Lorg/telegram/ui/PollCreateActivity$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iput-object p3, p0, Lorg/telegram/ui/PollCreateActivity$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$1$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/PollCreateActivity$1;

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$1$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$1$$ExternalSyntheticLambda0;->f$2:Ljava/util/HashMap;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/PollCreateActivity$1;->$r8$lambda$iinXkU_3nT5Q8KsnOu53Q8kmJZ0(Lorg/telegram/ui/PollCreateActivity$1;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Ljava/util/HashMap;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
