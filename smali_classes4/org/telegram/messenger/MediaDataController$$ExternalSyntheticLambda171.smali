.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda171;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/GenericProvider;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda171;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda171;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda171;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda171;->INSTANCE:Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda171;

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

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$mk-7TtQhtGSuX1sOZ6rt7pT492g(Ljava/lang/Void;)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object p1

    return-object p1
.end method
