package com.iMe.fork.p025ui.fragment;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Cells.TextCheckBoxCell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$1 */
/* loaded from: classes3.dex */
public final class C1467xecddff80 extends Lambda implements Function1<TextCheckBoxCell, Boolean> {
    public static final C1467xecddff80 INSTANCE = new C1467xecddff80();

    C1467xecddff80() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(TextCheckBoxCell it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it.isChecked());
    }
}
