.class public final synthetic Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(I[ZLjava/io/File;Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$2:Ljava/io/File;

    iput-object p4, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$3:Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;

    iput-object p5, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$5:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    iget v0, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$1:[Z

    iget-object v2, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$2:Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$3:Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;

    iget-object v4, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Components/voip/VoIPHelper$$ExternalSyntheticLambda18;->f$5:Landroid/content/Context;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->$r8$lambda$QF46u3rt5N9C9_tzXmC_1KprkHM(I[ZLjava/io/File;Lorg/telegram/tgnet/TLRPC$TL_phone_setCallRating;Ljava/util/ArrayList;Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
