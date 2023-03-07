.class public final enum Lorg/fork/enums/PhotoViewerMenuItem;
.super Ljava/lang/Enum;
.source "PhotoViewerMenuItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/PhotoViewerMenuItem$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/PhotoViewerMenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/PhotoViewerMenuItem;

.field public static final enum CLEAR_CACHE:Lorg/fork/enums/PhotoViewerMenuItem;

.field public static final enum COPY_IMAGE:Lorg/fork/enums/PhotoViewerMenuItem;

.field public static final Companion:Lorg/fork/enums/PhotoViewerMenuItem$Companion;

.field public static final enum FORWARD_MESSENGERS:Lorg/fork/enums/PhotoViewerMenuItem;

.field public static final enum PHOTO_INFO:Lorg/fork/enums/PhotoViewerMenuItem;

.field public static final enum PHOTO_TEXT:Lorg/fork/enums/PhotoViewerMenuItem;

.field public static final enum TRANSLATE:Lorg/fork/enums/PhotoViewerMenuItem;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/PhotoViewerMenuItem;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/fork/enums/PhotoViewerMenuItem;

    sget-object v1, Lorg/fork/enums/PhotoViewerMenuItem;->PHOTO_TEXT:Lorg/fork/enums/PhotoViewerMenuItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PhotoViewerMenuItem;->PHOTO_INFO:Lorg/fork/enums/PhotoViewerMenuItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PhotoViewerMenuItem;->FORWARD_MESSENGERS:Lorg/fork/enums/PhotoViewerMenuItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PhotoViewerMenuItem;->TRANSLATE:Lorg/fork/enums/PhotoViewerMenuItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PhotoViewerMenuItem;->COPY_IMAGE:Lorg/fork/enums/PhotoViewerMenuItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/PhotoViewerMenuItem;->CLEAR_CACHE:Lorg/fork/enums/PhotoViewerMenuItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lorg/fork/enums/PhotoViewerMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->photo_viewer_open_recognize_text:I

    const-string v2, "PHOTO_TEXT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/PhotoViewerMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->PHOTO_TEXT:Lorg/fork/enums/PhotoViewerMenuItem;

    .line 8
    new-instance v0, Lorg/fork/enums/PhotoViewerMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->photo_viewer_open_recognize_photo:I

    const-string v2, "PHOTO_INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/PhotoViewerMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->PHOTO_INFO:Lorg/fork/enums/PhotoViewerMenuItem;

    .line 9
    new-instance v0, Lorg/fork/enums/PhotoViewerMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_message_popup_item_forward_messengers:I

    const-string v2, "FORWARD_MESSENGERS"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/PhotoViewerMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->FORWARD_MESSENGERS:Lorg/fork/enums/PhotoViewerMenuItem;

    .line 10
    new-instance v0, Lorg/fork/enums/PhotoViewerMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->chat_long_action_translate:I

    const-string v2, "TRANSLATE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/PhotoViewerMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->TRANSLATE:Lorg/fork/enums/PhotoViewerMenuItem;

    .line 11
    new-instance v0, Lorg/fork/enums/PhotoViewerMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->photo_viewer_image_copy:I

    const-string v2, "COPY_IMAGE"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/PhotoViewerMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->COPY_IMAGE:Lorg/fork/enums/PhotoViewerMenuItem;

    .line 12
    new-instance v0, Lorg/fork/enums/PhotoViewerMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->photo_viewer_clear_cache:I

    const-string v2, "CLEAR_CACHE"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/PhotoViewerMenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->CLEAR_CACHE:Lorg/fork/enums/PhotoViewerMenuItem;

    invoke-static {}, Lorg/fork/enums/PhotoViewerMenuItem;->$values()[Lorg/fork/enums/PhotoViewerMenuItem;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->$VALUES:[Lorg/fork/enums/PhotoViewerMenuItem;

    new-instance v0, Lorg/fork/enums/PhotoViewerMenuItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/PhotoViewerMenuItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->Companion:Lorg/fork/enums/PhotoViewerMenuItem$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/PhotoViewerMenuItem;->titleResId:I

    return-void
.end method

.method public static final getDefaultEnumNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->Companion:Lorg/fork/enums/PhotoViewerMenuItem$Companion;

    invoke-virtual {v0}, Lorg/fork/enums/PhotoViewerMenuItem$Companion;->getDefaultEnumNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/fork/enums/PhotoViewerMenuItem;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->Companion:Lorg/fork/enums/PhotoViewerMenuItem$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/PhotoViewerMenuItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/fork/enums/PhotoViewerMenuItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->Companion:Lorg/fork/enums/PhotoViewerMenuItem$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/PhotoViewerMenuItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/PhotoViewerMenuItem;
    .locals 1

    const-class v0, Lorg/fork/enums/PhotoViewerMenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/PhotoViewerMenuItem;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/PhotoViewerMenuItem;
    .locals 1

    sget-object v0, Lorg/fork/enums/PhotoViewerMenuItem;->$VALUES:[Lorg/fork/enums/PhotoViewerMenuItem;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/PhotoViewerMenuItem;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/PhotoViewerMenuItem;->titleResId:I

    return v0
.end method
