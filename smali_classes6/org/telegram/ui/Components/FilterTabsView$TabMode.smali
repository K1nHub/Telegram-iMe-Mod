.class public final enum Lorg/telegram/ui/Components/FilterTabsView$TabMode;
.super Ljava/lang/Enum;
.source "FilterTabsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/telegram/ui/Components/FilterTabsView$TabMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/Components/FilterTabsView$TabMode;

.field public static final enum ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

.field public static final enum FORWARD:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

.field public static final enum MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

.field public static final enum MANAGEMENT:Lorg/telegram/ui/Components/FilterTabsView$TabMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 224
    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/FilterTabsView$TabMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MAIN:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const-string v3, "ARCHIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/telegram/ui/Components/FilterTabsView$TabMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->ARCHIVE:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    new-instance v3, Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const-string v5, "FORWARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/Components/FilterTabsView$TabMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->FORWARD:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    new-instance v5, Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const-string v7, "MANAGEMENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/telegram/ui/Components/FilterTabsView$TabMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->MANAGEMENT:Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 223
    sput-object v7, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->$VALUES:[Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/Components/FilterTabsView$TabMode;
    .locals 1

    .line 223
    const-class v0, Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/Components/FilterTabsView$TabMode;
    .locals 1

    .line 223
    sget-object v0, Lorg/telegram/ui/Components/FilterTabsView$TabMode;->$VALUES:[Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    invoke-virtual {v0}, [Lorg/telegram/ui/Components/FilterTabsView$TabMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/FilterTabsView$TabMode;

    return-object v0
.end method
