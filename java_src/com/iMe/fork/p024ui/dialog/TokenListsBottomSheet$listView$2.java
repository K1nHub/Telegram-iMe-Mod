package com.iMe.fork.p024ui.dialog;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenListsBottomSheet.kt */
/* renamed from: com.iMe.fork.ui.dialog.TokenListsBottomSheet$listView$2 */
/* loaded from: classes3.dex */
public final class TokenListsBottomSheet$listView$2 extends Lambda implements Function0<RecyclerListView> {
    final /* synthetic */ TokenListsBottomSheet this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenListsBottomSheet$listView$2(TokenListsBottomSheet tokenListsBottomSheet) {
        super(0);
        this.this$0 = tokenListsBottomSheet;
    }

    @Override // kotlin.jvm.functions.Function0
    public final RecyclerListView invoke() {
        RecyclerListView initListView;
        initListView = this.this$0.initListView();
        return initListView;
    }
}
