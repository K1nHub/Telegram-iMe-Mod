package com.iMe.utils.dialogs;

import android.view.View;
import com.iMe.fork.utils.Callbacks$Callback;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.BottomSheet;
/* compiled from: DialogsFactory.kt */
/* renamed from: com.iMe.utils.dialogs.DialogsFactoryKt$createInfoBottomSheetDialog$customLayout$1$buttonTextView$1$1 */
/* loaded from: classes4.dex */
final class C2482x81b1e32c extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ BottomSheet $bottomSheet;
    final /* synthetic */ Callbacks$Callback $onButtonClickAction;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2482x81b1e32c(Callbacks$Callback callbacks$Callback, BottomSheet bottomSheet) {
        super(1);
        this.$onButtonClickAction = callbacks$Callback;
        this.$bottomSheet = bottomSheet;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        Callbacks$Callback callbacks$Callback = this.$onButtonClickAction;
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
        this.$bottomSheet.dismiss();
    }
}
