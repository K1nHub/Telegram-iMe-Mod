.class public final Lcom/smedialink/storage/domain/model/google/DynamicLinkData$NotSupported;
.super Lcom/smedialink/storage/domain/model/google/DynamicLinkData;
.source "DynamicLinkData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/google/DynamicLinkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotSupported"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/google/DynamicLinkData$NotSupported;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/google/DynamicLinkData$NotSupported;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/google/DynamicLinkData$NotSupported;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/google/DynamicLinkData$NotSupported;->INSTANCE:Lcom/smedialink/storage/domain/model/google/DynamicLinkData$NotSupported;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/smedialink/storage/domain/model/google/DynamicLinkData;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
