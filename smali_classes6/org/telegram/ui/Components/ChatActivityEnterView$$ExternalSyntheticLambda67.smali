.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Document;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject$SendAnimationData;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object p3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$3:Ljava/lang/Object;

    iput-object p5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$4:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iput-boolean p6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$5:Z

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$1:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$3:Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$4:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    iget-boolean v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$$ExternalSyntheticLambda67;->f$5:Z

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatActivityEnterView;->$r8$lambda$in70P3mQoigaszND0hwXUoz8L_4(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;Ljava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
