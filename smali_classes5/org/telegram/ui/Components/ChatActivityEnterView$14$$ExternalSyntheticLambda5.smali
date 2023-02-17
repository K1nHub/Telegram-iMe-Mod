.class public final synthetic Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

.field public final synthetic f$1:Landroidx/core/view/inputmethod/InputContentInfoCompat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Landroidx/core/view/inputmethod/InputContentInfoCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda5;->f$1:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    return-void
.end method


# virtual methods
.method public final didSelectDate(ZILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/ChatActivityEnterView$14;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$14$$ExternalSyntheticLambda5;->f$1:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/telegram/ui/Components/ChatActivityEnterView$14;->$r8$lambda$DD6kxSzqpA0gJC7KljMMNKcoTYI(Lorg/telegram/ui/Components/ChatActivityEnterView$14;Landroidx/core/view/inputmethod/InputContentInfoCompat;ZILjava/lang/String;)V

    return-void
.end method

.method public synthetic getSelectedDialogs()Ljava/util/ArrayList;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate$-CC;->$default$getSelectedDialogs(Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
