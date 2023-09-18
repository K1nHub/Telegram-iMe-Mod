.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:[Z

.field public final synthetic f$10:Z

.field public final synthetic f$11:Z

.field public final synthetic f$12:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

.field public final synthetic f$13:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Z

.field public final synthetic f$9:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;[Z[ZZZZLorg/telegram/tgnet/TLRPC$User;ZZLorg/telegram/tgnet/TLRPC$Chat;ZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$2:[Z

    iput-boolean p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$3:Z

    iput-boolean p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$4:Z

    iput-boolean p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$5:Z

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$6:Lorg/telegram/tgnet/TLRPC$User;

    iput-boolean p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$7:Z

    iput-boolean p9, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$8:Z

    iput-object p10, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-boolean p11, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$10:Z

    iput-boolean p12, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$11:Z

    iput-object p13, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$12:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iput-object p14, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$13:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$1:[Z

    iget-object v3, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$2:[Z

    iget-boolean v4, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$3:Z

    iget-boolean v5, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$4:Z

    iget-boolean v6, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$5:Z

    iget-object v7, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$6:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v8, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$7:Z

    iget-boolean v9, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$8:Z

    iget-object v10, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$9:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v11, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$10:Z

    iget-boolean v12, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$11:Z

    iget-object v13, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$12:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    iget-object v14, v0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$13:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v15, p1

    move/from16 v16, p2

    invoke-static/range {v1 .. v16}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$7r9du5zX-GzhfVrALECASCjR9PU(Lorg/telegram/ui/ActionBar/BaseFragment;[Z[ZZZZLorg/telegram/tgnet/TLRPC$User;ZZLorg/telegram/tgnet/TLRPC$Chat;ZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/DialogInterface;I)V

    return-void
.end method
