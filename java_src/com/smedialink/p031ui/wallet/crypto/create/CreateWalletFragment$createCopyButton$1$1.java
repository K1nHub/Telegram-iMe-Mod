package com.smedialink.p031ui.wallet.crypto.create;

import android.view.View;
import com.smedialink.model.wallet.crypto.create.CreateWalletScreenType;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.utils.extentions.common.ContextExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createCopyButton$1$1 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$createCopyButton$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$createCopyButton$1$1(CreateWalletFragment createWalletFragment) {
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
        Intrinsics.checkNotNullParameter(it, "it");
        CreateWalletScreenType createWalletScreenType = this.this$0.currentType;
        Intrinsics.checkNotNull(createWalletScreenType, "null cannot be cast to non-null type com.smedialink.model.wallet.crypto.create.CreateWalletScreenType.SecretWords");
        ContextExtKt.copyToClipboard$default(StringExtKt.joinBySpace(((CreateWalletScreenType.SecretWords) createWalletScreenType).getSecretWords()), null, 2, null);
    }
}
