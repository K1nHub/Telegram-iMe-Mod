.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;ILjava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$1:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$2:Ljava/util/ArrayList;

    iput p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$4:Ljava/lang/CharSequence;

    iput-boolean p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$5:Z

    return-void
.end method


# virtual methods
.method public final didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$1:Lorg/telegram/ui/ChatActivity;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$2:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$4:Ljava/lang/CharSequence;

    iget-boolean v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda147;->f$5:Z

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$SPBHKTn78R5ZJSe6H3YiWCoXXZ0(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;ILjava/lang/CharSequence;ZLorg/telegram/tgnet/TLRPC$User;ZILjava/lang/String;)V

    return-void
.end method
