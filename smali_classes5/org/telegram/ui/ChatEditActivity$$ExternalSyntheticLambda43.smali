.class public final synthetic Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;-><init>()V

    sput-object v0, Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;->INSTANCE:Lorg/telegram/ui/ChatEditActivity$$ExternalSyntheticLambda43;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
