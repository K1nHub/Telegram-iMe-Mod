.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda162;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/GenericProvider;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda162;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda162;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda162;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda162;->INSTANCE:Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda162;

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

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$DXT_Bb8dskf3mK8GhhKLFs6YjA8(Ljava/lang/Void;)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object p1

    return-object p1
.end method
