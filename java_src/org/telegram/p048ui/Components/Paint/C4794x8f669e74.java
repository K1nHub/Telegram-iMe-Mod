package org.telegram.p048ui.Components.Paint;

import android.view.KeyEvent;
import android.widget.TextView;
import org.telegram.p048ui.Components.Paint.ColorPickerBottomSheet;
/* renamed from: org.telegram.ui.Components.Paint.ColorPickerBottomSheet$SlidersPickerView$$ExternalSyntheticLambda1 */
/* loaded from: classes6.dex */
public final /* synthetic */ class C4794x8f669e74 implements TextView.OnEditorActionListener {
    public static final /* synthetic */ C4794x8f669e74 INSTANCE = new C4794x8f669e74();

    private /* synthetic */ C4794x8f669e74() {
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean lambda$new$1;
        lambda$new$1 = ColorPickerBottomSheet.SlidersPickerView.lambda$new$1(textView, i, keyEvent);
        return lambda$new$1;
    }
}
