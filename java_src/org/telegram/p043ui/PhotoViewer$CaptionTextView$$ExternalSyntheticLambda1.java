package org.telegram.p043ui;

import org.telegram.p043ui.Components.LinkSpanDrawable;
/* renamed from: org.telegram.ui.PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1 */
/* loaded from: classes5.dex */
public final /* synthetic */ class PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ LinkSpanDrawable.LinkCollector f$0;

    public /* synthetic */ PhotoViewer$CaptionTextView$$ExternalSyntheticLambda1(LinkSpanDrawable.LinkCollector linkCollector) {
        this.f$0 = linkCollector;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.clear();
    }
}
