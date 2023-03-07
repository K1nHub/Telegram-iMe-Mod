.class public final synthetic Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/fork/ui/dialog/PromoSubscribeAlert;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;->f$0:Lorg/fork/ui/dialog/PromoSubscribeAlert;

    iput-object p2, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;->f$0:Lorg/fork/ui/dialog/PromoSubscribeAlert;

    iget-object v1, p0, Lorg/fork/ui/dialog/PromoSubscribeAlert$$ExternalSyntheticLambda5;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {v0, v1, p1, p2}, Lorg/fork/ui/dialog/PromoSubscribeAlert;->$r8$lambda$WhYGg5gM795dKUrlyK6lVYScqa8(Lorg/fork/ui/dialog/PromoSubscribeAlert;Lkotlin/jvm/internal/Ref$IntRef;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
