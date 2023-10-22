package com.iMe.p030ui.common;

import android.text.Editable;
import android.text.TextWatcher;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimpleTextWatcher.kt */
/* renamed from: com.iMe.ui.common.SimpleTextWatcher */
/* loaded from: classes3.dex */
public class SimpleTextWatcher implements TextWatcher {
    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable s) {
        Intrinsics.checkNotNullParameter(s, "s");
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence s, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(s, "s");
    }
}
