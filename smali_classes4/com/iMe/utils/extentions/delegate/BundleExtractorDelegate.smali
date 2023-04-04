.class public final Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;
.super Ljava/lang/Object;
.source "BundleExtractorDelegate.kt"

# interfaces
.implements Lkotlin/properties/ReadWriteProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadWriteProperty<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field private final initializer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TR;TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;+TT;>;)V"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;->initializer:Lkotlin/jvm/functions/Function1;

    .line 36
    sget-object p1, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;->INSTANCE:Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;

    iput-object p1, p0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;->value:Ljava/lang/Object;

    sget-object v0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;->INSTANCE:Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate$EMPTY;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 44
    iget-object p2, p0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;->initializer:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;->value:Ljava/lang/Object;

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/iMe/utils/extentions/delegate/BundleExtractorDelegate;->value:Ljava/lang/Object;

    return-object p1
.end method
