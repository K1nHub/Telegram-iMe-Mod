.class public final synthetic Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;->INSTANCE:Lorg/telegram/messenger/ContactsController$$ExternalSyntheticLambda53;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ContactsController;->$r8$lambda$RcV6d7nd-mBpLwpDvPDKrG8VRFg(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p1

    return p1
.end method
