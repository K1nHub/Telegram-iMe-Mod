.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda97;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/GenericProvider;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda97;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda97;

    invoke-direct {v0}, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda97;-><init>()V

    sput-object v0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda97;->INSTANCE:Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda97;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$8T7vWAVdsuQWFkn1hrE7Nzt51tw(Ljava/lang/Void;)Lorg/telegram/ui/DialogsActivity;

    move-result-object p1

    return-object p1
.end method
