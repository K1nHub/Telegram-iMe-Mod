package org.telegram.p044ui.Components;

import org.telegram.messenger.ImageReceiver;
/* renamed from: org.telegram.ui.Components.PaintingOverlay$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class PaintingOverlay$$ExternalSyntheticLambda0 implements ImageReceiver.ImageReceiverDelegate {
    public static final /* synthetic */ PaintingOverlay$$ExternalSyntheticLambda0 INSTANCE = new PaintingOverlay$$ExternalSyntheticLambda0();

    private /* synthetic */ PaintingOverlay$$ExternalSyntheticLambda0() {
    }

    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
    public final void didSetImage(ImageReceiver imageReceiver, boolean z, boolean z2, boolean z3) {
        PaintingOverlay.lambda$setEntities$0(imageReceiver, z, z2, z3);
    }

    @Override // org.telegram.messenger.ImageReceiver.ImageReceiverDelegate
    public /* synthetic */ void onAnimationReady(ImageReceiver imageReceiver) {
        ImageReceiver.ImageReceiverDelegate.CC.$default$onAnimationReady(this, imageReceiver);
    }
}
