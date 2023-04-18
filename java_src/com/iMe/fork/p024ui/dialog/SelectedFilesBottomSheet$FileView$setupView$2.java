package com.iMe.fork.p024ui.dialog;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: SelectedFilesBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.SelectedFilesBottomSheet$FileView$setupView$2 */
/* loaded from: classes3.dex */
final class SelectedFilesBottomSheet$FileView$setupView$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Function0<Unit> $onItemDeleteClick;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectedFilesBottomSheet$FileView$setupView$2(Function0<Unit> function0) {
        super(1);
        this.$onItemDeleteClick = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$onItemDeleteClick.invoke();
    }
}
