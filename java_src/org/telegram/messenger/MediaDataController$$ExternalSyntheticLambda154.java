package org.telegram.messenger;

import org.telegram.p043ui.Components.Bulletin;
/* loaded from: classes4.dex */
public final /* synthetic */ class MediaDataController$$ExternalSyntheticLambda154 implements Runnable {
    public final /* synthetic */ Bulletin.UndoButton f$0;

    public /* synthetic */ MediaDataController$$ExternalSyntheticLambda154(Bulletin.UndoButton undoButton) {
        this.f$0 = undoButton;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.undo();
    }
}
