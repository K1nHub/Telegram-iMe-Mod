package org.telegram.p043ui.Components;

import org.telegram.messenger.ImageReceiver;
/* renamed from: org.telegram.ui.Components.TextPaintImageReceiverSpan$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class TextPaintImageReceiverSpan$$ExternalSyntheticLambda0 implements ImageReceiver.ImageReceiverDelegate {
    public static final /* synthetic */ TextPaintImageReceiverSpan$$ExternalSyntheticLambda0 INSTANCE = new TextPaintImageReceiverSpan$$ExternalSyntheticLambda0();

    private /* synthetic */ TextPaintImageReceiverSpan$$ExternalSyntheticLambda0() {
    }

    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
    public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        TextPaintImageReceiverSpan.lambda$new$0(imageReceiver, z, z2, z3);
    }

    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
    public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
        ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
    }
}
