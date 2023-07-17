package com.iMe.p031ui.wallet.crypto.create;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletPresenter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$wordsCountItems$2 */
/* loaded from: classes3.dex */
public final class CreateWalletPresenter$wordsCountItems$2 extends Lambda implements Function0<List<Integer>> {
    final /* synthetic */ CreateWalletPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletPresenter$wordsCountItems$2(CreateWalletPresenter createWalletPresenter) {
        super(0);
        this.this$0 = createWalletPresenter;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<Integer> invoke() {
        List<Integer> initWordsCountItems;
        initWordsCountItems = this.this$0.initWordsCountItems();
        return initWordsCountItems;
    }
}
