package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Cells.TextCheckBoxCell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$1 */
/* loaded from: classes4.dex */
public final class C3028xecddff80 extends Lambda implements Function1<TextCheckBoxCell, Boolean> {
    public static final C3028xecddff80 INSTANCE = new C3028xecddff80();

    C3028xecddff80() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(TextCheckBoxCell it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it.isChecked());
    }
}
