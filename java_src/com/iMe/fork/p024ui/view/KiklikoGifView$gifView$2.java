package com.iMe.fork.p024ui.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KiklikoGifView.kt */
/* renamed from: com.iMe.fork.ui.view.KiklikoGifView$gifView$2 */
/* loaded from: classes3.dex */
public final class KiklikoGifView$gifView$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ KiklikoGifView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KiklikoGifView$gifView$2(KiklikoGifView kiklikoGifView) {
        super(0);
        this.this$0 = kiklikoGifView;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initGifView;
        initGifView = this.this$0.initGifView();
        return initGifView;
    }
}
