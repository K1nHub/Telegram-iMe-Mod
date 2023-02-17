.class public final enum Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;
.super Ljava/lang/Enum;
.source "NeurobotsStoreActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/shop/NeurobotsStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreTab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

.field public static final enum ALL:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

.field public static final enum FREE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

.field public static final enum MY:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

.field public static final enum POPULAR:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;


# instance fields
.field private final resId:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->ALL:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->POPULAR:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->FREE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->MY:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_tab_all:I

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->ALL:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    .line 54
    new-instance v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_tab_popular:I

    const-string v2, "POPULAR"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->POPULAR:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    .line 55
    new-instance v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_tab_free:I

    const-string v2, "FREE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->FREE:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    .line 56
    new-instance v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    sget v1, Lorg/telegram/messenger/R$string;->neurobots_store_tab_my:I

    const-string v2, "MY"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->MY:Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-static {}, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->$values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    move-result-object v0

    sput-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->$VALUES:[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;
    .locals 1

    const-class v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->$VALUES:[Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;

    return-object v0
.end method


# virtual methods
.method public final getResId()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/smedialink/ui/shop/NeurobotsStoreActivity$StoreTab;->resId:I

    return v0
.end method
