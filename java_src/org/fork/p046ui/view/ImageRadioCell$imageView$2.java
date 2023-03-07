package org.fork.p046ui.view;

import androidx.appcompat.widget.AppCompatImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImageRadioCell.kt */
/* renamed from: org.fork.ui.view.ImageRadioCell$imageView$2 */
/* loaded from: classes4.dex */
public final class ImageRadioCell$imageView$2 extends Lambda implements Function0<AppCompatImageView> {
    final /* synthetic */ ImageRadioCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageRadioCell$imageView$2(ImageRadioCell imageRadioCell) {
        super(0);
        this.this$0 = imageRadioCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final AppCompatImageView invoke() {
        AppCompatImageView initImageView;
        initImageView = this.this$0.initImageView();
        return initImageView;
    }
}
