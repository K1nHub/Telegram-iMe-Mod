.class public final Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "RecognitionBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;II)Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;
    .locals 7

    const-string v0, "parentFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lcom/iMe/ui/recognition/RecognitionBottomSheetDialog$TranslationDelegate;II)V

    return-object v0
.end method
