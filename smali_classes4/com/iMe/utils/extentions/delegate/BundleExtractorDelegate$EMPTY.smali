.class final Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;
.super Ljava/lang/Object;
.source "BundleExtractorDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EMPTY"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;

    invoke-direct {v0}, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;-><init>()V

    sput-object v0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;->INSTANCE:Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
