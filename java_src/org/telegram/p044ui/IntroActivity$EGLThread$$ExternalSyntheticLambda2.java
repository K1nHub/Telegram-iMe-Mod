package org.telegram.p044ui;

import android.graphics.Bitmap;
import org.telegram.messenger.GenericProvider;
import org.telegram.p044ui.IntroActivity;
/* renamed from: org.telegram.ui.IntroActivity$EGLThread$$ExternalSyntheticLambda2 */
/* loaded from: classes5.dex */
public final /* synthetic */ class IntroActivity$EGLThread$$ExternalSyntheticLambda2 implements GenericProvider {
    public static final /* synthetic */ IntroActivity$EGLThread$$ExternalSyntheticLambda2 INSTANCE = new IntroActivity$EGLThread$$ExternalSyntheticLambda2();

    private /* synthetic */ IntroActivity$EGLThread$$ExternalSyntheticLambda2() {
    }

    @Override // org.telegram.messenger.GenericProvider
    public final Object provide(Object obj) {
        Bitmap lambda$new$0;
        lambda$new$0 = IntroActivity.EGLThread.lambda$new$0((Void) obj);
        return lambda$new$0;
    }
}
