package com.iMe.p031ui.wallet.crypto.create;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$createPasteButton$1$1 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$createPasteButton$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$createPasteButton$1$1(CreateWalletFragment createWalletFragment) {
        super(1);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        String clipboardText;
        Intrinsics.checkNotNullParameter(it, "it");
        CreateWalletFragment createWalletFragment = this.this$0;
        clipboardText = createWalletFragment.getClipboardText();
        createWalletFragment.pasteToEditText(clipboardText);
    }
}