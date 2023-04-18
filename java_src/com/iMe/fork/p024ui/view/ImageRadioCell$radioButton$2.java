package com.iMe.fork.p024ui.view;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.Components.RadioButton;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImageRadioCell.kt */
/* renamed from: com.iMe.fork.ui.view.ImageRadioCell$radioButton$2 */
/* loaded from: classes3.dex */
public final class ImageRadioCell$radioButton$2 extends Lambda implements Function0<RadioButton> {
    final /* synthetic */ ImageRadioCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageRadioCell$radioButton$2(ImageRadioCell imageRadioCell) {
        super(0);
        this.this$0 = imageRadioCell;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RadioButton invoke() {
        RadioButton initRadioButton;
        initRadioButton = this.this$0.initRadioButton();
        return initRadioButton;
    }
}
