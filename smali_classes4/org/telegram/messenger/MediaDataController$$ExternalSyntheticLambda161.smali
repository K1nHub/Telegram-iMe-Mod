.class public final synthetic Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda161;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda161;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda161;

    invoke-direct {v0}, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda161;-><init>()V

    sput-object v0, Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda161;->INSTANCE:Lorg/telegram/messenger/MediaDataController$$ExternalSyntheticLambda161;

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

    check-cast p1, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-static {p1, p2}, Lorg/telegram/messenger/MediaDataController;->$r8$lambda$nF0D5vCl-Q7vtf6_8GEe-mHQxwY(Lorg/telegram/tgnet/TLRPC$MessageEntity;Lorg/telegram/tgnet/TLRPC$MessageEntity;)I

    move-result p1

    return p1
.end method
