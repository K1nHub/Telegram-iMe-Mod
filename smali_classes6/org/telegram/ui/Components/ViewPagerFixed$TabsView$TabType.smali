.class public final enum Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;
.super Ljava/lang/Enum;
.source "ViewPagerFixed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ViewPagerFixed$TabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

.field public static final enum TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

.field public static final enum TITLE_WITH_ICON:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1010
    new-instance v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    new-instance v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    const-string v3, "TITLE_WITH_ICON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->TITLE_WITH_ICON:Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1009
    sput-object v3, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->$VALUES:[Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1009
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;
    .locals 1

    .line 1009
    const-class v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;
    .locals 1

    .line 1009
    sget-object v0, Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->$VALUES:[Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/ViewPagerFixed$TabsView$TabType;

    return-object v0
.end method
