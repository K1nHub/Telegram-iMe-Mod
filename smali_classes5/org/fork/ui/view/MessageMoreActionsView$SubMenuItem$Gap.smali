.class public final Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;
.super Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;
.source "MessageMoreActionsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gap"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;

    invoke-direct {v0}, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;-><init>()V

    sput-object v0, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;->INSTANCE:Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem$Gap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, v0}, Lorg/fork/ui/view/MessageMoreActionsView$SubMenuItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
