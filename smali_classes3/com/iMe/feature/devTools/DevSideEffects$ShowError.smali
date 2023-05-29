.class public final Lcom/iMe/feature/devTools/DevSideEffects$ShowError;
.super Lcom/iMe/feature/devTools/DevSideEffects;
.source "DevSideEffects.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/devTools/DevSideEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShowError"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/feature/devTools/DevSideEffects$ShowError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/devTools/DevSideEffects$ShowError;

    invoke-direct {v0}, Lcom/iMe/feature/devTools/DevSideEffects$ShowError;-><init>()V

    sput-object v0, Lcom/iMe/feature/devTools/DevSideEffects$ShowError;->INSTANCE:Lcom/iMe/feature/devTools/DevSideEffects$ShowError;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/iMe/feature/devTools/DevSideEffects;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
