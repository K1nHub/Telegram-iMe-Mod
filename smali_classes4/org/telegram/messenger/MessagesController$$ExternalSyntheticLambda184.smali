.class public final synthetic Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MessagesController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$0:Lorg/telegram/messenger/MessagesController;

    iput-object p2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-boolean p3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$2:Z

    iput-object p4, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$3:Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$0:Lorg/telegram/messenger/MessagesController;

    iget-object v1, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-boolean v2, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$2:Z

    iget-object v3, p0, Lorg/telegram/messenger/MessagesController$$ExternalSyntheticLambda184;->f$3:Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->$r8$lambda$xyQqMUmYp7FjFiwe2V_zGd2R7bk(Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;ZLorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;)V

    return-void
.end method
