.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$1:Lorg/telegram/messenger/AccountInstance;

.field public final synthetic f$2:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$4:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$5:[Lorg/telegram/ui/Cells/CheckBoxCell;

.field public final synthetic f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;[Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$1:Lorg/telegram/messenger/AccountInstance;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$2:Lorg/telegram/ui/ChatActivity;

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$4:Lorg/telegram/messenger/MessageObject;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$5:[Lorg/telegram/ui/Cells/CheckBoxCell;

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$0:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$1:Lorg/telegram/messenger/AccountInstance;

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$2:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$3:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$4:Lorg/telegram/messenger/MessageObject;

    iget-object v5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$5:[Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda36;->f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$UNCV1WwKk2_KFu0np1yIYz103Yw(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/messenger/MessageObject;[Lorg/telegram/ui/Cells/CheckBoxCell;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/DialogInterface;I)V

    return-void
.end method
