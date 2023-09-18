.class public final Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;
.super Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;
.source "AuthSideEffects.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FinishAuth"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;

    invoke-direct {v0}, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;-><init>()V

    sput-object v0, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0}, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
