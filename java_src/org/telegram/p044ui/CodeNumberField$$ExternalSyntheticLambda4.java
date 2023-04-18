package org.telegram.p044ui;

import org.telegram.p044ui.Components.SimpleFloatPropertyCompat;
/* renamed from: org.telegram.ui.CodeNumberField$$ExternalSyntheticLambda4 */
/* loaded from: classes5.dex */
public final /* synthetic */ class CodeNumberField$$ExternalSyntheticLambda4 implements SimpleFloatPropertyCompat.Getter {
    public static final /* synthetic */ CodeNumberField$$ExternalSyntheticLambda4 INSTANCE = new CodeNumberField$$ExternalSyntheticLambda4();

    private /* synthetic */ CodeNumberField$$ExternalSyntheticLambda4() {
    }

    @Override // org.telegram.p044ui.Components.SimpleFloatPropertyCompat.Getter
    public final float get(Object obj) {
        float f;
        f = ((CodeNumberField) obj).focusedProgress;
        return f;
    }
}
