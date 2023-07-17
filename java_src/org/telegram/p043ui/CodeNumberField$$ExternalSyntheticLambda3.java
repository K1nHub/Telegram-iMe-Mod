package org.telegram.p043ui;

import org.telegram.p043ui.Components.SimpleFloatPropertyCompat;
/* renamed from: org.telegram.ui.CodeNumberField$$ExternalSyntheticLambda3 */
/* loaded from: classes5.dex */
public final /* synthetic */ class CodeNumberField$$ExternalSyntheticLambda3 implements SimpleFloatPropertyCompat.Getter {
    public static final /* synthetic */ CodeNumberField$$ExternalSyntheticLambda3 INSTANCE = new CodeNumberField$$ExternalSyntheticLambda3();

    private /* synthetic */ CodeNumberField$$ExternalSyntheticLambda3() {
    }

    @Override // org.telegram.p043ui.Components.SimpleFloatPropertyCompat.Getter
    public final float get(Object obj) {
        float f;
        f = ((CodeNumberField) obj).errorProgress;
        return f;
    }
}
