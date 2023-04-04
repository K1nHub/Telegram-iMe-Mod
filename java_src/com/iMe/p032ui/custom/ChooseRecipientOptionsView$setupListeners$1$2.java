package com.iMe.p032ui.custom;

import android.view.View;
import com.iMe.fork.utils.Callbacks$Callback;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ChooseRecipientOptionsView.kt */
/* renamed from: com.iMe.ui.custom.ChooseRecipientOptionsView$setupListeners$1$2 */
/* loaded from: classes3.dex */
final class ChooseRecipientOptionsView$setupListeners$1$2 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ Callbacks$Callback $onTwitterClickAction;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChooseRecipientOptionsView$setupListeners$1$2(Callbacks$Callback callbacks$Callback) {
        super(1);
        this.$onTwitterClickAction = callbacks$Callback;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$onTwitterClickAction.invoke();
    }
}
