package com.iMe.fork.p024ui.fragment;

import com.iMe.fork.enums.DialogType;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Cells.TextCheckBoxCell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReactionsSettingsActivity.kt */
/* renamed from: com.iMe.fork.ui.fragment.ReactionsSettingsActivity$showChooseMessagePopupReactionsEnabledDialogTypesBottomSheet$saveButton$1$1$selectedItems$2 */
/* loaded from: classes3.dex */
public final class C1533xecddff81 extends Lambda implements Function1<TextCheckBoxCell, DialogType> {
    public static final C1533xecddff81 INSTANCE = new C1533xecddff81();

    C1533xecddff81() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final DialogType invoke(TextCheckBoxCell it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Object tag = it.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.iMe.fork.enums.DialogType");
        return (DialogType) tag;
    }
}
