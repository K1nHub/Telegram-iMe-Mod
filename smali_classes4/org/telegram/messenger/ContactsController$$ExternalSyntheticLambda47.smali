.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda47;->f$0:Lorg/telegram/messenger/ContactsController;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda47;->f$0:Lorg/telegram/messenger/ContactsController;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$PnWXErGV-j1M_OCJIdRLvRt_-RQ(Lorg/telegram/messenger/ContactsController;Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p1

    return p1
.end method
