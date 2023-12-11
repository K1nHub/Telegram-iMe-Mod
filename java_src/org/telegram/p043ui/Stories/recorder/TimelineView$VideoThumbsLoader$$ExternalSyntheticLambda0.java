package org.telegram.p043ui.Stories.recorder;

import org.telegram.p043ui.Stories.recorder.TimelineView;
/* renamed from: org.telegram.ui.Stories.recorder.TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ TimelineView.VideoThumbsLoader f$0;

    public /* synthetic */ TimelineView$VideoThumbsLoader$$ExternalSyntheticLambda0(TimelineView.VideoThumbsLoader videoThumbsLoader) {
        this.f$0 = videoThumbsLoader;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.retrieveFrame();
    }
}
