.class public final synthetic Lorg/telegram/ui/DialogOrContactPickerActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogOrContactPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogOrContactPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/DialogOrContactPickerActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/DialogOrContactPickerActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/DialogOrContactPickerActivity;->$r8$lambda$LUnG1IAES1p8ixfHQfo19VlN98I(Lorg/telegram/ui/DialogOrContactPickerActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p1

    return p1
.end method
