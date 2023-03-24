.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$5:Lorg/telegram/tgnet/TLObject;

    iput p7, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$2:[Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$3:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v5, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$5:Lorg/telegram/tgnet/TLObject;

    iget v6, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda146;->f$6:I

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$SRyDLyFDm9UazGRsqa-e3dDOanI(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/browser/Browser$Progress;[Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method
