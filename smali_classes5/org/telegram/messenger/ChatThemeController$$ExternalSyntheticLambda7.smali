.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/ResultCallback;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;->INSTANCE:Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$PgY3Ca0gGhWOWqLRkf5W71aR8YY(Landroid/util/Pair;)V

    return-void
.end method

.method public synthetic onError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/tgnet/ResultCallback$-CC;->$default$onError(Lorg/telegram/tgnet/ResultCallback;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
