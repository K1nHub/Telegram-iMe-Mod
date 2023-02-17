.class public final synthetic Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/MessagesController$ErrorDelegate;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$0:[I

    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iput p4, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$3:I

    iput-object p5, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$0:[I

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$3:I

    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$9$$ExternalSyntheticLambda2;->f$4:Ljava/lang/Runnable;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatUsersActivity$9;->$r8$lambda$uMKK3Bf6DVv39kVGlvF2zhgGBBc([ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$User;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result p1

    return p1
.end method
