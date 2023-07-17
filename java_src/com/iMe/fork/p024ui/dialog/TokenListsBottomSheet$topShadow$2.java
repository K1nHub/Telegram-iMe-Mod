package com.iMe.fork.p024ui.dialog;

import android.view.View;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenListsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.TokenListsBottomSheet$topShadow$2 */
/* loaded from: classes3.dex */
public final class TokenListsBottomSheet$topShadow$2 extends Lambda implements Function0<View> {
    final /* synthetic */ TokenListsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenListsBottomSheet$topShadow$2(TokenListsBottomSheet tokenListsBottomSheet) {
        super(0);
        this.this$0 = tokenListsBottomSheet;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final View invoke() {
        View initShadow;
        initShadow = this.this$0.initShadow();
        return initShadow;
    }
}
