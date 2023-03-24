package org.fork.p046ui.fragment;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.fork.enums.DialogType;
import org.telegram.p048ui.Cells.TextCheckBoxCell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: org.fork.ui.fragment.ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2 */
/* loaded from: classes4.dex */
public final class C3167xecddff81 extends Lambda implements Function1<TextCheckBoxCell, DialogType> {
    public static final C3167xecddff81 INSTANCE = new C3167xecddff81();

    C3167xecddff81() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final DialogType invoke(TextCheckBoxCell it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object tag = it.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type org.fork.enums.DialogType");
        return (DialogType) tag;
    }
}
