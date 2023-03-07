package org.fork.p046ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KiklikoGifView.kt */
/* renamed from: org.fork.ui.view.KiklikoGifView$mutedIconView$2 */
/* loaded from: classes4.dex */
public final class KiklikoGifView$mutedIconView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ KiklikoGifView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KiklikoGifView$mutedIconView$2(KiklikoGifView kiklikoGifView) {
        super(0);
        this.this$0 = kiklikoGifView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initMutedIconView;
        initMutedIconView = this.this$0.initMutedIconView();
        return initMutedIconView;
    }
}
