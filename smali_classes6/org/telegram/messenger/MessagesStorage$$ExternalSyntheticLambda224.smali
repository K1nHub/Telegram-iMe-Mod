.class public final synthetic Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda224;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda224;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda224;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda224;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda224;->INSTANCE:Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda224;

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

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->$r8$lambda$0AZP4lUbiYwSZNaHF_n3vr3B8yM(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;)I

    move-result p1

    return p1
.end method
