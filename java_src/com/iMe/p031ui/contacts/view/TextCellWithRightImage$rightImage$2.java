package com.iMe.p031ui.contacts.view;

import android.widget.ImageView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextCellWithRightImage.kt */
/* renamed from: com.iMe.ui.contacts.view.TextCellWithRightImage$rightImage$2 */
/* loaded from: classes3.dex */
public final class TextCellWithRightImage$rightImage$2 extends Lambda implements Function0<ImageView> {
    final /* synthetic */ TextCellWithRightImage this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextCellWithRightImage$rightImage$2(TextCellWithRightImage textCellWithRightImage) {
        super(0);
        this.this$0 = textCellWithRightImage;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ImageView invoke() {
        ImageView initRightImageView;
        initRightImageView = this.this$0.initRightImageView();
        return initRightImageView;
    }
}
