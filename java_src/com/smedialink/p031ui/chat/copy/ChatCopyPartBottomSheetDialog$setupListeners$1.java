package com.smedialink.p031ui.chat.copy;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ChatCopyPartBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.chat.copy.ChatCopyPartBottomSheetDialog$setupListeners$1 */
/* loaded from: classes3.dex */
final class ChatCopyPartBottomSheetDialog$setupListeners$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ChatCopyPartBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatCopyPartBottomSheetDialog$setupListeners$1(ChatCopyPartBottomSheetDialog chatCopyPartBottomSheetDialog) {
        super(1);
        this.this$0 = chatCopyPartBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.dismiss();
    }
}
